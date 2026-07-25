import { revalidatePath } from 'next/cache'
import { createServiceClient } from '@/lib/supabase/service'

export type RevalidateType =
  | 'blog'
  | 'generated'
  | 'static'
  | 'all'

// Static-page slug → public path(s). Covers content pages + listing slugs.
const STATIC_PATHS: Record<string, string[]> = {
  home: ['/'],
  about: ['/about'],
  contact: ['/contact'],
  faq: ['/faq'],
  privacy: ['/privacy'],
  terms: ['/terms'],
  'blog-listing': ['/blog'],
  blog: ['/blog'],
}

// Single source of truth for which public paths an entity change must refresh.
// Used by both the direct helper (admin routes) and the /api/revalidate webhook.
export function pathsForRevalidate(type: RevalidateType, slug?: string): string[] {
  switch (type) {
    case 'blog': return [`/blog/${slug}`, '/blog']
    case 'generated': {
      // Template slugs don't nest by URL path (e.g. a brand_service page at
      // "dubai/audi-oil-change" isn't a URL-ancestor of the "dubai/audi" brand
      // page that embeds its card) — cross-page invalidation is brand/model
      // scoped, not path scoped. See revalidateGeneratedPage() below.
      return slug ? [`/${slug}`] : []
    }
    case 'static': return slug ? (STATIC_PATHS[slug] ?? [`/${slug}`]) : []
    case 'all': return ['/']
    default: return []
  }
}

// Direct, in-process ISR invalidation for use inside admin API routes (after a
// successful save). No HTTP round-trip — calls revalidatePath directly, same as
// the SEO handler. Always best-effort: never throws, never fails the save.
export async function revalidatePage(type: RevalidateType, slug?: string): Promise<void> {
  try {
    if (type === 'all') { revalidatePath('/', 'layout'); return }
    for (const p of pathsForRevalidate(type, slug)) {
      try { revalidatePath(p) } catch { /* best-effort per path */ }
    }
  } catch (err) {
    console.error('revalidatePage error:', err)
  }
}

// Invalidates a saved generated_pages row's own path, plus every OTHER
// published generated_pages row sharing the same brand_id — those are
// exactly the pages whose auto-assembled services/models/locations sections
// can embed this row as a RelatedLink (see getRelatedSections in
// page-engine/content.ts). Cross-page links are brand-scoped, not
// URL-path-scoped, so this can't be derived from the slug alone. Always
// best-effort: never throws, never fails the save.
export async function revalidateGeneratedPage(slug: string, brandId?: string | null): Promise<void> {
  try {
    revalidatePath(`/${slug}`)
    if (!brandId) return
    const service = createServiceClient()
    const { data } = await service.from('generated_pages').select('slug').eq('brand_id', brandId).eq('status', 'published').neq('slug', slug)
    for (const row of data ?? []) {
      try { revalidatePath(`/${row.slug}`) } catch { /* best-effort per path */ }
    }
  } catch (err) {
    console.error('revalidateGeneratedPage error:', err)
  }
}
