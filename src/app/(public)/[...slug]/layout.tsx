import { Footer } from '@/components/layout/Footer'
import { BrandFooter } from '@/components/layout/BrandFooter'
import { getSettings } from '@/lib/hooks/useSettings'
import { getPageBySlug, findFooterPages, findDubaiBrandsForFooter } from '@/lib/page-engine/content'

interface Props {
  children: React.ReactNode
  params: Promise<{ slug: string[] }>
}

// This layout receives params for its own [...slug] segment, unlike the
// shared (public)/layout.tsx above it — that's what lets it know the page's
// template_type and pick a footer variant. getPageBySlug is wrapped in
// React cache(), so this shares one DB call with the page component instead
// of querying generated_pages twice per request.
export default async function CatchAllLayout({ children, params }: Props) {
  const { slug } = await params
  const page = await getPageBySlug(slug.join('/'))
  const settings = await getSettings()

  const isDubaiBrandPage =
    slug.length === 2 &&
    slug[0].toLowerCase() === 'dubai' &&
    (!page || page.template_type === 'brand')

  if (isDubaiBrandPage) {
    const brands = await findDubaiBrandsForFooter()
    return (
      <>
        {children}
        <BrandFooter settings={settings} brands={brands} />
      </>
    )
  }

  const footerPages = await findFooterPages()
  return (
    <>
      {children}
      <Footer settings={settings} footerPages={footerPages} />
    </>
  )
}
