import Link from 'next/link'
import { MapPin, Phone, Mail, MessageCircle, Building2, ShieldCheck, BadgeCheck, Wrench, Clock, CreditCard } from 'lucide-react'
import type { SiteSettings } from '@/types/settings'
import type { FooterBrandLink } from '@/lib/page-engine/content'
import { FooterHeading, SOCIALS } from './Footer'

interface BrandFooterProps {
  settings: SiteSettings
  brands: FooterBrandLink[]
}

// Fixed, global-only navigation — deliberately NOT sourced from
// generated_pages/display_in_footer, so no service/model page can ever leak
// in here (that was the whole reason this footer variant exists).
const QUICK_NAV: Array<{ label: string; href: string }> = [
  { label: 'Home', href: '/' },
  { label: 'About', href: '/about' },
  { label: 'Services', href: '/dubai/services' },
  { label: 'Brands', href: '/dubai/brands' },
  { label: 'Locations', href: '/locations' },
  { label: 'Blog', href: '/blog' },
  { label: 'Contact', href: '/contact' },
  { label: 'FAQ', href: '/faq' },
  { label: 'Privacy Policy', href: '/privacy' },
  { label: 'Terms & Conditions', href: '/terms' },
]

const TRUST_ITEMS: Array<{ icon: typeof ShieldCheck; label: string }> = [
  { icon: CreditCard, label: 'Secure Payments' },
  { icon: ShieldCheck, label: 'Warranty' },
  { icon: BadgeCheck, label: 'Certified Technicians' },
  { icon: Wrench, label: 'OEM Parts' },
  { icon: Clock, label: '24/7 Support' },
]

// SMC-style footer shown ONLY on Dubai brand template pages
// (generated_pages.template_type === 'brand'). Deliberately does not use
// footerPages/display_in_footer — Quick Navigation here is fixed to global
// pages only, and Brands We Service only lists brands with an actual
// published /dubai/{slug} page (no dead links).
export function BrandFooter({ settings, brands }: BrandFooterProps) {
  const socials = SOCIALS.filter(s => s.key === 'social_instagram_url' || s.key === 'social_facebook_url')
    .map(s => ({ ...s, url: settings[s.key] as string | null }))
    .filter(s => s.url)
  const whatsappNumber = settings.whatsapp_number?.replace(/[^0-9]/g, '')
  const googleBusinessUrl = settings.social_google_business_url
  const text = settings.footer_text_color
  const phoneTel = settings.footer_business_phone.replace(/[^0-9+]/g, '')

  return (
    <footer style={{ backgroundColor: settings.footer_background_color, color: text }} role="contentinfo" className="relative overflow-hidden">
      <div className="absolute inset-0 texture-dots opacity-[0.05] pointer-events-none" aria-hidden="true" />
      <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-14 lg:py-16">

        {/* Brands We Service */}
        {brands.length > 0 && (
          <div className="pb-12 mb-12 border-b border-white/10">
            <FooterHeading>Brands We Service</FooterHeading>
            <ul className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-5 gap-x-6 gap-y-2.5 mt-5">
              {brands.map(b => (
                <li key={b.slug}><Link href={`/${b.slug}`} className="text-sm opacity-80 hover:opacity-100 hover:text-[#9DBBEB] transition-all">{b.name}</Link></li>
              ))}
            </ul>
          </div>
        )}

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-10">
          {/* Business Information */}
          <div>
            <FooterHeading>{settings.footer_business_title || 'Business Information'}</FooterHeading>
            <ul className="mt-5 space-y-3 text-sm">
              {settings.footer_business_address && (
                <li className="flex gap-2.5 opacity-85"><MapPin size={17} className="shrink-0 mt-0.5 text-[#6891D6]" /><span>{settings.footer_business_address}</span></li>
              )}
              {settings.footer_business_phone && (
                <li><a href={`tel:${phoneTel}`} className="flex items-center gap-2.5 opacity-85 hover:opacity-100 transition-opacity"><Phone size={17} className="shrink-0 text-[#6891D6]" />{settings.footer_business_phone}</a></li>
              )}
              {settings.footer_business_email && (
                <li><a href={`mailto:${settings.footer_business_email}`} className="flex items-center gap-2.5 opacity-85 hover:opacity-100 transition-opacity"><Mail size={17} className="shrink-0 text-[#6891D6]" />{settings.footer_business_email}</a></li>
              )}
            </ul>
            <Link
              href={settings.header_cta_link || '/contact'}
              className="inline-flex items-center justify-center mt-5 px-5 py-2.5 rounded-xl bg-gradient-orange text-white text-sm font-bold hover:-translate-y-0.5 transition-all"
            >
              {settings.header_cta_text || 'Book Appointment'}
            </Link>
          </div>

          {/* Quick Navigation — fixed global pages only */}
          <div>
            <FooterHeading>Quick Navigation</FooterHeading>
            <ul className="mt-5 space-y-2.5 text-sm grid grid-cols-1 sm:grid-cols-2 gap-x-4">
              {QUICK_NAV.map(l => (
                <li key={l.href}><Link href={l.href} className="opacity-80 hover:opacity-100 hover:text-[#9DBBEB] transition-all">{l.label}</Link></li>
              ))}
            </ul>
          </div>

          {/* Social Links */}
          <div>
            <FooterHeading>Connect With Us</FooterHeading>
            <div className="flex flex-wrap gap-2.5 mt-5">
              {socials.map(({ key, label, path, url }) => (
                <a key={key} href={url ?? '#'} target="_blank" rel="noopener noreferrer" aria-label={label}
                  className="h-10 w-10 rounded-xl flex items-center justify-center bg-white/10 ring-1 ring-white/15 hover:bg-[#4472C4] hover:ring-transparent transition-all">
                  <svg viewBox="0 0 24 24" className="w-[18px] h-[18px] fill-current" aria-hidden="true"><path d={path} /></svg>
                </a>
              ))}
              {whatsappNumber && (
                <a href={`https://wa.me/${whatsappNumber}`} target="_blank" rel="noopener noreferrer" aria-label="WhatsApp"
                  className="h-10 w-10 rounded-xl flex items-center justify-center bg-white/10 ring-1 ring-white/15 hover:bg-[#25D366] hover:ring-transparent transition-all">
                  <MessageCircle size={18} />
                </a>
              )}
              {googleBusinessUrl && (
                <a href={googleBusinessUrl} target="_blank" rel="noopener noreferrer" aria-label="Google Business"
                  className="h-10 w-10 rounded-xl flex items-center justify-center bg-white/10 ring-1 ring-white/15 hover:bg-[#4472C4] hover:ring-transparent transition-all">
                  <Building2 size={18} />
                </a>
              )}
            </div>
          </div>
        </div>

        {/* Trust Section */}
        <div className="mt-12 pt-8 border-t border-white/10">
          <ul className="flex flex-wrap items-center justify-center gap-x-8 gap-y-3 text-xs font-medium opacity-80">
            {TRUST_ITEMS.map(({ icon: Icon, label }) => (
              <li key={label} className="inline-flex items-center gap-2"><Icon size={16} className="text-[#6891D6]" />{label}</li>
            ))}
          </ul>
        </div>

        {/* Bottom bar */}
        <div className="mt-8 pt-6 border-t border-white/10 flex flex-col sm:flex-row justify-between items-center gap-4 text-xs opacity-75">
          <p>{settings.footer_copyright_text}</p>
          <p className="flex gap-4">
            <Link href="/privacy" className="hover:opacity-100 hover:text-white">Privacy</Link>
            <Link href="/terms" className="hover:opacity-100 hover:text-white">Terms</Link>
          </p>
        </div>
      </div>
    </footer>
  )
}
