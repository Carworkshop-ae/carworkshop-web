import type { SiteSettings } from '@/types/settings'
import type { FooterBrandLink } from '@/lib/page-engine/content'
import { Footer } from './Footer'

interface BrandFooterProps {
  settings: SiteSettings
  brands: FooterBrandLink[]
}

export function BrandFooter({ settings, brands }: BrandFooterProps) {
  return <Footer settings={settings} brandsOverride={brands} />
}
