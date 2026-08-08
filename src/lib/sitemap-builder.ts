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
  const staticRoutes: SitemapUrl[] = [
    { loc: BASE_URL, lastmod: new Date().toISOString(), changefreq: 'weekly', priority: 1.0 },
    { loc: `${BASE_URL}/about`, lastmod: new Date().toISOString(), changefreq: 'monthly', priority: 0.6 },
    { loc: `${BASE_URL}/contact`, lastmod: new Date().toISOString(), changefreq: 'monthly', priority: 0.7 },
    { loc: `${BASE_URL}/privacy`, lastmod: new Date().toISOString(), changefreq: 'yearly', priority: 0.3 },
    { loc: `${BASE_URL}/terms`, lastmod: new Date().toISOString(), changefreq: 'yearly', priority: 0.3 },
    { loc: `${BASE_URL}/faq`, lastmod: new Date().toISOString(), changefreq: 'monthly', priority: 0.5 },
  ]
  return staticRoutes
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
  const urls: SitemapUrl[] = [
    { loc: `${BASE_URL}/locations`, lastmod: new Date().toISOString(), changefreq: 'weekly', priority: 0.8 },
  ]

  if (!process.env.SUPABASE_SERVICE_ROLE_KEY) return urls

  const supabase = createServiceClient()
  const { data: locs } = await supabase
    .from('locations')
    .select('slug, updated_at')
    .eq('status', 'published')

  if (locs) {
    for (const loc of locs) {
      urls.push({
        loc: `${BASE_URL}/locations/${loc.slug}`,
        lastmod: new Date(loc.updated_at).toISOString(),
        changefreq: 'weekly',
        priority: 0.8,
      })
    }
  }

  // Also query generated_pages for location / garage pages
  const { data: pages } = await supabase
    .from('generated_pages')
    .select('slug, updated_at')
    .eq('status', 'published')
    .in('page_type', ['location', 'brand_location', 'model_location'])

  if (pages) {
    for (const page of pages) {
      urls.push({
        loc: `${BASE_URL}/${page.slug}`,
        lastmod: new Date(page.updated_at).toISOString(),
        changefreq: 'weekly',
        priority: 0.7,
      })
    }
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
  const { data: brands } = await supabase
    .from('brands')
    .select('slug, updated_at')
    .eq('status', 'published')

  if (brands) {
    for (const b of brands) {
      urls.push({
        loc: `${BASE_URL}/dubai/${b.slug}`,
        lastmod: new Date(b.updated_at).toISOString(),
        changefreq: 'weekly',
        priority: 0.8,
      })
    }
  }

  // Query generated_pages for brand / model / brand_service / model_service
  const { data: pages } = await supabase
    .from('generated_pages')
    .select('slug, updated_at')
    .eq('status', 'published')
    .in('page_type', ['brand', 'brand_service', 'model', 'model_service', 'service'])

  if (pages) {
    for (const page of pages) {
      urls.push({
        loc: `${BASE_URL}/${page.slug}`,
        lastmod: new Date(page.updated_at).toISOString(),
        changefreq: 'weekly',
        priority: 0.7,
      })
    }
  }

  return urls
}
