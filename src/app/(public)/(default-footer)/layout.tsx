import { Footer } from '@/components/layout/Footer'
import { getSettings } from '@/lib/hooks/useSettings'
import { findFooterPages } from '@/lib/page-engine/content'

// Every "normal" public route lives under this group (home, blog, contact,
// static pages, the /[state]/services & /[state]/brands & /locations
// directories) — all of them keep today's default Footer, unchanged. Only
// the [...slug] brand/service catch-all sits outside this group so it can
// pick BrandFooter for Dubai brand pages instead (see its own layout.tsx).
export default async function DefaultFooterLayout({ children }: { children: React.ReactNode }) {
  const [settings, footerPages] = await Promise.all([getSettings(), findFooterPages()])

  return (
    <>
      {children}
      <Footer settings={settings} footerPages={footerPages} />
    </>
  )
}
