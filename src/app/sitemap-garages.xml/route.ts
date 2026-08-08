import { getGaragesSitemapUrls, buildSitemapXml } from '@/lib/sitemap-builder'

export const revalidate = 21600

export async function GET() {
  const urls = await getGaragesSitemapUrls()
  const xml = buildSitemapXml(urls.slice(0, 10000))

  return new Response(xml, {
    headers: {
      'Content-Type': 'application/xml',
      'Cache-Control': 'public, max-age=21600, s-maxage=21600',
    },
  })
}
