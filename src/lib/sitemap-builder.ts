import { NextRequest } from 'next/server'
import { createServiceClient } from '@/lib/supabase/service'

export const BASE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://carworkshop.ae'
export const MAX_SITEMAP_URLS = 10000

export interface SitemapUrl {
  loc: string
  lastmod?: string
  changefreq?: string
  priority?: number
}

export function buildSitemapXml(urls: SitemapUrl[]): string {
  const entries = urls.map(u => {
    let item = `  <url>\n    <loc>${escapeXml(u.loc)}</loc>`
    if (u.lastmod) item += `\n    <lastmod>${u.lastmod}</lastmod>`
    if (u.changefreq) item += `\n    <changefreq>${u.changefreq}</changefreq>`
    if (typeof u.priority === 'number') item += `\n    <priority>${u.priority.toFixed(1)}</priority>`
    item += `\n  </url>`
    return item
  }).join('\n')

  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${entries}
</urlset>`
}

export function buildSitemapIndexXml(sitemaps: string[]): string {
  const now = new Date().toISOString()
  const entries = sitemaps.map(loc =>
    `  <sitemap>\n    <loc>${escapeXml(loc)}</loc>\n    <lastmod>${now}</lastmod>\n  </sitemap>`
  ).join('\n')

  return `<?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${entries}
</sitemapindex>`
}

export function chunk<T>(arr: T[], size: number): T[][] {
  const out: T[][] = []
  for (let i = 0; i < arr.length; i += size) out.push(arr.slice(i, i + size))
  return out
}

const SITEMAP_HEADERS = {
  'Content-Type': 'application/xml',
  'Cache-Control': 'public, max-age=21600, s-maxage=21600',
}

// Shared handler for the 4 category sitemaps. Under the 10,000-URL cap it
// serves a plain <urlset>. Over the cap (no ?page param) it serves a
// <sitemapindex> pointing at ?page=1..N; with ?page=N it serves that slice.
export async function buildCategorySitemapResponse(req: NextRequest, sitemapName: string, getUrls: () => Promise<SitemapUrl[]>): Promise<Response> {
  const urls = await getUrls()
  const pageParam = req.nextUrl.searchParams.get('page')

  if (urls.length <= MAX_SITEMAP_URLS && !pageParam) {
    return new Response(buildSitemapXml(urls), { headers: SITEMAP_HEADERS })
  }

  const pages = chunk(urls, MAX_SITEMAP_URLS)

  if (pageParam) {
    const idx = parseInt(pageParam, 10) - 1
    const page = pages[idx] ?? []
    return new Response(buildSitemapXml(page), { headers: SITEMAP_HEADERS })
  }

  const sitemaps = pages.map((_, i) => `${BASE_URL}/${sitemapName}?page=${i + 1}`)
  return new Response(buildSitemapIndexXml(sitemaps), { headers: SITEMAP_HEADERS })
}

function escapeXml(unsafe: string): string {
  return unsafe.replace(/[<>&'"]/g, c => {
    switch (c) {
      case '<': return '&lt;'
      case '>': return '&gt;'
      case '&': return '&amp;'
      case '\'': return '&apos;'
      case '"': return '&quot;'
      default: return c
    }
  })
}

// Fetch published pages for general, blogs, garages, and brands
export async function getGeneralSitemapUrls(): Promise<SitemapUrl[]> {
  const urls: SitemapUrl[] = [
    { loc: BASE_URL, lastmod: new Date().toISOString(), changefreq: 'weekly', priority: 1.0 },
    { loc: `${BASE_URL}/about`, lastmod: new Date().toISOString(), changefreq: 'monthly', priority: 0.6 },
    { loc: `${BASE_URL}/contact`, lastmod: new Date().toISOString(), changefreq: 'monthly', priority: 0.7 },
    { loc: `${BASE_URL}/privacy`, lastmod: new Date().toISOString(), changefreq: 'yearly', priority: 0.3 },
    { loc: `${BASE_URL}/terms`, lastmod: new Date().toISOString(), changefreq: 'yearly', priority: 0.3 },
    { loc: `${BASE_URL}/faq`, lastmod: new Date().toISOString(), changefreq: 'monthly', priority: 0.5 },
    { loc: `${BASE_URL}/locations`, lastmod: new Date().toISOString(), changefreq: 'weekly', priority: 0.7 },
  ]

  if (!process.env.SUPABASE_SERVICE_ROLE_KEY) return urls

  const supabase = createServiceClient()
  const { data: pages } = await supabase
    .from('generated_pages')
    .select('slug, updated_at')
    .eq('status', 'published')
    .eq('template_type', 'general_service')

  for (const page of pages ?? []) {
    urls.push({
      loc: `${BASE_URL}/${page.slug}`,
      lastmod: new Date(page.updated_at).toISOString(),
      changefreq: 'weekly',
      priority: 0.7,
    })
  }

  return urls
}

export async function getBlogsSitemapUrls(): Promise<SitemapUrl[]> {
  const urls: SitemapUrl[] = [
    { loc: `${BASE_URL}/blog`, lastmod: new Date().toISOString(), changefreq: 'daily', priority: 0.8 },
  ]

  if (!process.env.SUPABASE_SERVICE_ROLE_KEY) return urls

  const supabase = createServiceClient()
  const { data } = await supabase
    .from('blog_posts')
    .select('slug, updated_at')
    .eq('status', 'published')
    .order('updated_at', { ascending: false })

  if (data) {
    for (const post of data) {
      urls.push({
        loc: `${BASE_URL}/blog/${post.slug}`,
        lastmod: new Date(post.updated_at).toISOString(),
        changefreq: 'monthly',
        priority: 0.7,
      })
    }
  }

  return urls
}

export async function getGaragesSitemapUrls(): Promise<SitemapUrl[]> {
  const urls: SitemapUrl[] = []

  if (!process.env.SUPABASE_SERVICE_ROLE_KEY) return urls

  const supabase = createServiceClient()
  const { data: pages } = await supabase
    .from('generated_pages')
    .select('slug, updated_at')
    .eq('status', 'published')
    .in('template_type', ['garage_brand', 'garage_car'])

  for (const page of pages ?? []) {
    urls.push({
      loc: `${BASE_URL}/${page.slug}`,
      lastmod: new Date(page.updated_at).toISOString(),
      changefreq: 'weekly',
      priority: 0.7,
    })
  }

  return urls
}

export async function getBrandsSitemapUrls(): Promise<SitemapUrl[]> {
  const urls: SitemapUrl[] = [
    { loc: `${BASE_URL}/dubai/brands`, lastmod: new Date().toISOString(), changefreq: 'weekly', priority: 0.8 },
    { loc: `${BASE_URL}/dubai/services`, lastmod: new Date().toISOString(), changefreq: 'weekly', priority: 0.8 },
  ]

  if (!process.env.SUPABASE_SERVICE_ROLE_KEY) return urls

  const supabase = createServiceClient()
  const { data: pages } = await supabase
    .from('generated_pages')
    .select('slug, updated_at')
    .eq('status', 'published')
    .in('template_type', ['brand', 'brand_service', 'brand_model', 'brand_model_service'])

  for (const page of pages ?? []) {
    urls.push({
      loc: `${BASE_URL}/${page.slug}`,
      lastmod: new Date(page.updated_at).toISOString(),
      changefreq: 'weekly',
      priority: 0.7,
    })
  }

  return urls
}
