import { createPublicSupabase } from '@/lib/supabase/public'
import type { PageContent, TemplateType } from '@/types'
import type { SeoJson } from '@/lib/schemas/seo'

export interface GeneratedPageRow {
  id: string
  slug: string
  h1: string
  template_type: TemplateType
  brand_id: string | null
  model_id: string | null
  state: string | null
  meta_title: string
  meta_description: string
  short_description: string | null
  starting_price: string | null
  content_json: PageContent | null
  seo_json: SeoJson | null
}

const SELECT_COLS = 'id, slug, h1, template_type, brand_id, model_id, state, meta_title, meta_description, short_description, starting_price, content_json, seo_json'

export async function getPageBySlug(slug: string): Promise<GeneratedPageRow | null> {
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase
      .from('generated_pages')
      .select(SELECT_COLS)
      .eq('slug', slug)
      .eq('status', 'published')
      .maybeSingle()
    return (data as unknown as GeneratedPageRow | null) ?? null
  } catch {
    return null
  }
}

export async function getBrandName(brandId: string | null): Promise<string | null> {
  if (!brandId) return null
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase.from('brands').select('name').eq('id', brandId).maybeSingle()
    return data?.name ?? null
  } catch {
    return null
  }
}

export async function getBrand(brandId: string | null): Promise<{ name: string; slug: string } | null> {
  if (!brandId) return null
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase.from('brands').select('name, slug').eq('id', brandId).maybeSingle()
    return data ?? null
  } catch {
    return null
  }
}

export async function getModelSlug(modelId: string | null): Promise<string | null> {
  if (!modelId) return null
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase.from('brand_models').select('slug').eq('id', modelId).maybeSingle()
    return data?.slug ?? null
  } catch {
    return null
  }
}

export interface RelatedLink { h1: string; slug: string; short_description?: string | null; icon?: string | null; starting_price?: string | null }

export interface RelatedSections {
  services: RelatedLink[]
  models: RelatedLink[]
  locations: RelatedLink[]
}

interface FoundRow { h1: string; slug: string; state: string | null; short_description: string | null; content_json: PageContent | null }

async function findPublished(filters: { template_type: TemplateType; brand_id?: string | null; model_id?: string | null; excludeState?: string | null; sameState?: string | null }): Promise<FoundRow[]> {
  const supabase = createPublicSupabase()
  let query = supabase
    .from('generated_pages')
    .select('h1, slug, state, short_description, content_json')
    .eq('status', 'published')
    .eq('template_type', filters.template_type)

  if (filters.brand_id) query = query.eq('brand_id', filters.brand_id)
  if (filters.model_id) query = query.eq('model_id', filters.model_id)
  if (filters.sameState) query = query.eq('state', filters.sameState)
  if (filters.excludeState) query = query.neq('state', filters.excludeState)

  const { data } = await query.limit(100)
  return (data as unknown as FoundRow[] | null) ?? []
}

// Full (uncapped) service listing for the "View All Services" page, scoped
// to a state and optionally a brand/model — mirrors the same brand-specific
// → general-service fallback used by getRelatedSections, just without the
// 8-card cap applied on individual template pages.
export async function findServicePages(state: string, brandId?: string | null, modelId?: string | null): Promise<RelatedLink[]> {
  function toLinks(rows: FoundRow[]): RelatedLink[] {
    return rows.map(r => ({ h1: r.h1, slug: r.slug, short_description: r.short_description, icon: r.content_json?.icon ?? null }))
  }

  if (brandId && modelId) {
    let rows = await findPublished({ template_type: 'brand_model_service', brand_id: brandId, model_id: modelId, sameState: state })
    if (rows.length === 0) rows = await findPublished({ template_type: 'general_service', sameState: state })
    return toLinks(rows)
  }
  if (brandId) {
    let rows = await findPublished({ template_type: 'brand_service', brand_id: brandId, sameState: state })
    if (rows.length === 0) rows = await findPublished({ template_type: 'general_service', sameState: state })
    return toLinks(rows)
  }
  const rows = await findPublished({ template_type: 'general_service', sameState: state })
  return toLinks(rows)
}

// Brand-directory listing (mirrors findServicePages) for /[state]/brands.
export async function findBrandPages(state: string): Promise<RelatedLink[]> {
  const rows = await findPublished({ template_type: 'brand', sameState: state })
  return rows.map(r => ({ h1: r.h1, slug: r.slug }))
}

// Distinct states with at least one published page — backs the /locations
// directory and the "Areas We Serve" homepage section. Computed from the
// same table everything else reads, no separate locations table involved.
export async function findActiveStates(): Promise<string[]> {
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase
      .from('generated_pages')
      .select('state')
      .eq('status', 'published')
      .not('state', 'is', null)
      .limit(1000)
    const states = new Set((data ?? []).map(r => r.state).filter((s): s is string => !!s))
    return [...states].sort()
  } catch {
    return []
  }
}

// Homepage "Popular Services" — top published general_service pages for a
// default state (Dubai). Replaces the old empty `services` catalog table.
export async function findHomepageServices(state: string, limit = 8): Promise<RelatedLink[]> {
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase
      .from('generated_pages')
      .select('h1, slug, short_description, starting_price, content_json')
      .eq('status', 'published')
      .eq('template_type', 'general_service')
      .eq('state', state)
      .limit(limit)
    return (data ?? []).map(r => ({ h1: r.h1, slug: r.slug, short_description: r.short_description, starting_price: r.starting_price, icon: (r.content_json as PageContent | null)?.icon ?? null }))
  } catch {
    return []
  }
}

export interface HomepageBrandCard { name: string; slug: string; logo_url: string | null }

// Homepage "Trusted Car Brands" — top published brand pages for a default
// state (Dubai), joined with the `brands` table for the logo/display name.
// Replaces the old empty `brands`-catalog-table-driven read; linking now
// comes from real generated_pages rows, not /contact.
export async function findHomepageBrands(state: string, limit = 12): Promise<HomepageBrandCard[]> {
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase
      .from('generated_pages')
      .select('slug, brand_id, brands ( name, logo_url )')
      .eq('status', 'published')
      .eq('template_type', 'brand')
      .eq('state', state)
      .not('brand_id', 'is', null)
      .limit(limit)
    const rows = (data as unknown as Array<{ slug: string; brands: { name: string; logo_url: string | null } | null }>) ?? []
    return rows
      .filter((r): r is { slug: string; brands: { name: string; logo_url: string | null } } => !!r.brands)
      .map(r => ({ name: r.brands.name, slug: r.slug, logo_url: r.brands.logo_url }))
  } catch {
    return []
  }
}

// Footer "Display in Footer" pages — the only consumer of that flag.
export async function findFooterPages(): Promise<RelatedLink[]> {
  try {
    const supabase = createPublicSupabase()
    const { data } = await supabase
      .from('generated_pages')
      .select('h1, slug')
      .eq('status', 'published')
      .eq('display_in_footer', true)
      .order('h1', { ascending: true })
      .limit(50)
    return data ?? []
  } catch {
    return []
  }
}

// Auto-assembles the Services / Models We Serve / Locations We Serve sections
// for a generated page, per template. Computed fresh on every render — never
// stored — so newly published pages show up immediately everywhere they're
// relevant.
export async function getRelatedSections(page: GeneratedPageRow, brandName: string | null): Promise<RelatedSections> {
  const empty: RelatedSections = { services: [], models: [], locations: [] }

  // Locations always link to other-state pages of the SAME template for the
  // same brand/model — display label is constructed ("{Brand} Service
  // {State}"), not the target page's own H1, so naming stays consistent
  // regardless of what the admin typed there.
  function toLocationLinks(rows: FoundRow[]): RelatedLink[] {
    return rows.map(r => ({
      h1: brandName && r.state ? `${brandName} Service ${r.state}` : r.h1,
      slug: r.slug,
    }))
  }
  function toLinks(rows: FoundRow[]): RelatedLink[] {
    return rows.map(r => ({ h1: r.h1, slug: r.slug, short_description: r.short_description, icon: r.content_json?.icon ?? null }))
  }

  switch (page.template_type) {
    case 'brand': {
      let services = await findPublished({ template_type: 'brand_service', brand_id: page.brand_id, sameState: page.state })
      if (services.length === 0) services = await findPublished({ template_type: 'general_service', sameState: page.state })
      const models = await findPublished({ template_type: 'brand_model', brand_id: page.brand_id, sameState: page.state })
      const locations = await findPublished({ template_type: 'brand', brand_id: page.brand_id, excludeState: page.state })
      return { services: toLinks(services), models: toLinks(models), locations: toLocationLinks(locations) }
    }
    case 'brand_service': {
      let services = await findPublished({ template_type: 'brand_model_service', brand_id: page.brand_id, sameState: page.state })
      if (services.length === 0) services = await findPublished({ template_type: 'general_service', sameState: page.state })
      const locations = await findPublished({ template_type: 'brand_service', brand_id: page.brand_id, excludeState: page.state })
      return { ...empty, services: toLinks(services), locations: toLocationLinks(locations) }
    }
    case 'brand_model': {
      // Model-specific services first; if none exist yet, prefer the SAME
      // brand's general services (still relevant) before falling all the
      // way back to fully generic, brand-agnostic services.
      let services = await findPublished({ template_type: 'brand_model_service', brand_id: page.brand_id, model_id: page.model_id, sameState: page.state })
      if (services.length === 0) services = await findPublished({ template_type: 'brand_service', brand_id: page.brand_id, sameState: page.state })
      if (services.length === 0) services = await findPublished({ template_type: 'general_service', sameState: page.state })
      const locations = await findPublished({ template_type: 'brand_model', brand_id: page.brand_id, model_id: page.model_id, excludeState: page.state })
      return { ...empty, services: toLinks(services), locations: toLocationLinks(locations) }
    }
    case 'brand_model_service': {
      const locations = await findPublished({ template_type: 'brand_model_service', brand_id: page.brand_id, model_id: page.model_id, excludeState: page.state })
      return { ...empty, locations: toLocationLinks(locations) }
    }
    case 'general_service': {
      const locations = await findPublished({ template_type: 'general_service', excludeState: page.state })
      return { ...empty, locations: locations.map(r => ({ h1: r.h1, slug: r.slug })) }
    }
    default:
      return empty
  }
}
