import Link from 'next/link'
import type { SiteSettings } from '@/types/settings'
import { findDubaiBrandsForFooter, type FooterBrandLink } from '@/lib/page-engine/content'

interface FooterProps {
  settings: SiteSettings
  footerPages?: unknown[]
  brandsOverride?: FooterBrandLink[]
}

const DEFAULT_DUBAI_BRANDS = [
  'Acura', 'Alfa Romeo', 'Aston Martin', 'Audi', 'Bentley', 'BMW',
  'Bugatti', 'Cadillac', 'Chevrolet', 'Citroen', 'Dodge', 'Ferrari',
  'Fiat', 'Ford', 'Geely', 'GMC', 'Honda', 'Hummer',
  'Hyundai', 'Infiniti', 'Jaguar', 'Jeep', 'Kia', 'Lamborghini',
  'Land Rover', 'Lexus', 'Lincoln', 'Maserati', 'Mazda', 'McLaren',
  'Mercedes', 'MG', 'Mini', 'Mitsubishi', 'Nissan', 'Opel',
  'Peugeot', 'Porsche', 'Renault', 'Rolls Royce', 'Skoda', 'Subaru',
  'Suzuki', 'Toyota', 'Volkswagen', 'Volvo',
].sort((a, b) => a.localeCompare(b))

const QUICK_NAV = [
  { label: 'Home', href: '/' },
  { label: 'How It Works', href: '/#how-it-works' },
  { label: 'FAQs', href: '/faq' },
  { label: 'Contact Us', href: '/contact' },
  { label: 'Car Garage', href: '/dubai/brands' },
  { label: 'Blog', href: '/blog' },
  { label: 'Download', href: '/#download' },
  { label: 'EV Charge Installation', href: '/dubai/services' },
  { label: 'Car Service Sharjah', href: '/sharjah/services' },
  { label: 'Car Service Abu Dhabi', href: '/abu-dhabi/services' },
]

export async function Footer({ settings, brandsOverride }: FooterProps) {
  let dbBrands: FooterBrandLink[] = brandsOverride ?? []
  if (dbBrands.length === 0) {
    dbBrands = await findDubaiBrandsForFooter()
  }

  // Format brand list to guarantee ascending order (A-Z)
  const brandsList = (dbBrands.length > 0
    ? dbBrands.map(b => ({
        name: b.name.toLowerCase().includes('service') ? b.name : `${b.name} Service`,
        href: b.slug.startsWith('/') ? b.slug : `/${b.slug}`,
      }))
    : DEFAULT_DUBAI_BRANDS.map(name => ({
        name: `${name} Service`,
        href: `/dubai/${name.toLowerCase().replace(/\s+/g, '-')}`,
      }))
  ).sort((a, b) => a.name.localeCompare(b.name))

  const bgColor = settings.footer_background_color || '#15A24A'
  const textColor = settings.footer_text_color || '#FFFFFF'
  const phone = settings.footer_business_phone || '8002665464'
  const phoneTel = phone.replace(/[^0-9+]/g, '')
  const email = settings.footer_business_email || 'info@carworkshop.ae'
  const address = settings.footer_business_address || 'Plot # 369 - 322 Street 21, Al Quoz Industrial Area 4, Dubai, UAE'

  return (
    <footer style={{ backgroundColor: bgColor, color: textColor }} role="contentinfo" className="relative overflow-hidden font-sans border-t border-white/10">
      <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 lg:py-16">
        
        {/* Tier 1: Brands We Service (6-column responsive grid in ascending A-Z order) */}
        <div className="pb-10 mb-10 border-b border-white/20">
          <h3 className="text-xl font-bold mb-6 text-white tracking-tight">
            Brands We Service
          </h3>
          <ul className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-x-4 gap-y-2.5 text-xs">
            {brandsList.map((brand, idx) => (
              <li key={`brand-${idx}`}>
                <Link
                  href={brand.href}
                  className="hover:underline opacity-90 hover:opacity-100 transition-opacity whitespace-nowrap block truncate text-white/90 hover:text-white"
                >
                  {brand.name}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        {/* Tier 2: 4 Main Columns */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8 lg:gap-10 text-xs">
          
          {/* Column 1: Business Information */}
          <div className="space-y-3">
            <h4 className="text-sm font-bold uppercase tracking-wider text-white">
              Business Information
            </h4>
            <p className="leading-relaxed opacity-95 text-white/90">
              {address}
            </p>
            <p className="opacity-95 font-medium text-white/90">
              PO Box : 333761
            </p>

            {/* Red 800 BOOKING CTA button */}
            <div className="pt-2 pb-1">
              <a
                href={`tel:${phoneTel}`}
                className="inline-flex items-center justify-center bg-[#E52E2E] hover:bg-[#CC2525] text-white font-extrabold px-6 py-2.5 rounded-md shadow-md text-sm uppercase tracking-wider transition-all transform hover:scale-[1.02]"
              >
                Call 800 BOOKING
              </a>
            </div>

            <p className="opacity-90">
              <span className="font-semibold">Business Phone:</span> {phone}
            </p>
            <p className="opacity-90">
              <span className="font-semibold">Phone:</span> (04) 703 8999
            </p>
            <p className="opacity-90">
              <span className="font-semibold">Email:</span>{' '}
              <a href={`mailto:${email}`} className="hover:underline">
                {email}
              </a>
            </p>
          </div>

          {/* Column 2: Quick Navigation Links */}
          <div className="space-y-3">
            <h4 className="text-sm font-bold uppercase tracking-wider text-white">
              Quick Navigation Links
            </h4>
            <ul className="space-y-2 text-white/90">
              {QUICK_NAV.map((item, idx) => (
                <li key={`nav-${idx}`}>
                  <Link href={item.href} className="hover:underline opacity-90 hover:opacity-100 transition-opacity">
                    {item.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Column 3: Connect With Us & Secured By */}
          <div className="space-y-6">
            <div>
              <h4 className="text-sm font-bold uppercase tracking-wider text-white mb-3">
                Connect With Us
              </h4>
              <div className="flex items-center gap-3">
                {/* Twitter / X */}
                <a
                  href={settings.social_twitter_url || '#'}
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="X"
                  className="w-9 h-9 rounded-full bg-white text-[#16A34A] flex items-center justify-center hover:bg-zinc-100 transition-colors shadow-sm"
                >
                  <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zM17.083 19.77h1.833L7.084 4.126H5.117z" /></svg>
                </a>
                {/* Facebook */}
                <a
                  href={settings.social_facebook_url || '#'}
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="Facebook"
                  className="w-9 h-9 rounded-full bg-white text-[#16A34A] flex items-center justify-center hover:bg-zinc-100 transition-colors shadow-sm"
                >
                  <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24"><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z" /></svg>
                </a>
                {/* Instagram */}
                <a
                  href={settings.social_instagram_url || '#'}
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="Instagram"
                  className="w-9 h-9 rounded-full bg-white text-[#16A34A] flex items-center justify-center hover:bg-zinc-100 transition-colors shadow-sm"
                >
                  <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163C8.741 0 8.333.014 7.053.072 2.695.272.273 2.69.073 7.052.014 8.333 0 8.741 0 12c0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98C8.333 23.986 8.741 24 12 24c3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98C15.668.014 15.259 0 12 0zm0 5.838a6.162 6.162 0 100 12.324 6.162 6.162 0 000-12.324zM12 16a4 4 0 110-8 4 4 0 010 8zm6.406-11.845a1.44 1.44 0 100 2.881 1.44 1.44 0 000-2.881z" /></svg>
                </a>
              </div>
            </div>

            <div>
              <h4 className="text-sm font-bold uppercase tracking-wider text-white mb-3">
                Secured By
              </h4>
              <div className="flex flex-wrap items-center gap-2">
                {/* AWS badge */}
                <div className="bg-white text-zinc-900 px-3 py-1.5 rounded text-[11px] font-extrabold flex items-center gap-1 shadow-sm">
                  <span className="text-[#FF9900]">aws</span>
                </div>
                {/* PCI DSS badge */}
                <div className="bg-white text-emerald-700 px-3 py-1.5 rounded text-[11px] font-extrabold flex items-center gap-1 shadow-sm">
                  <span>PCI DSS</span>
                  <span className="text-[9px] font-normal text-zinc-600">CERTIFIED</span>
                </div>
                {/* Sectigo badge */}
                <div className="bg-white text-emerald-800 px-3 py-1.5 rounded text-[11px] font-extrabold flex items-center gap-1 shadow-sm">
                  <span className="text-emerald-600">SECURED BY</span>
                  <span>SECTIGO</span>
                </div>
              </div>
            </div>
          </div>

          {/* Column 4: Accepted Payment & App Download Badges */}
          <div className="space-y-6">
            <div>
              <h4 className="text-sm font-bold uppercase tracking-wider text-white mb-3">
                Accepted
              </h4>
              <div className="flex items-center gap-2">
                {/* VISA badge */}
                <div className="bg-white text-[#1A1F71] px-3 py-1.5 rounded font-black italic text-sm shadow-sm">
                  VISA
                </div>
                {/* Mastercard badge */}
                <div className="bg-white px-3 py-1.5 rounded flex items-center gap-0.5 shadow-sm">
                  <div className="w-4 h-4 rounded-full bg-[#EB001B]" />
                  <div className="w-4 h-4 rounded-full bg-[#F79E1B] -ml-2 opacity-90" />
                </div>
              </div>
            </div>

            <div>
              <div className="space-y-2 max-w-[170px]">
                {/* Google Play Button */}
                <a
                  href="#"
                  className="flex items-center gap-2 bg-black text-white px-3 py-1.5 rounded-lg border border-white/20 hover:bg-zinc-900 transition-colors shadow-sm"
                >
                  <svg className="w-5 h-5 fill-current shrink-0" viewBox="0 0 24 24"><path d="M3 20.5v-17c0-.83.67-1.5 1.5-1.5.35 0 .68.12.95.34l12.4 9.1-3.6 2.65L3 20.5z" /></svg>
                  <div className="text-[9px] leading-tight">
                    <span className="block text-white/70">GET IT ON</span>
                    <span className="font-bold text-xs">Google Play</span>
                  </div>
                </a>

                {/* App Store Button */}
                <a
                  href="#"
                  className="flex items-center gap-2 bg-black text-white px-3 py-1.5 rounded-lg border border-white/20 hover:bg-zinc-900 transition-colors shadow-sm"
                >
                  <svg className="w-5 h-5 fill-current shrink-0" viewBox="0 0 24 24"><path d="M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.81-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M15.97 6.85c.66-.8 1.11-1.92.99-3.04-.96.04-2.13.64-2.82 1.44-.61.71-1.15 1.86-1.01 2.96 1.07.08 2.18-.56 2.84-1.36z" /></svg>
                  <div className="text-[9px] leading-tight">
                    <span className="block text-white/70">Download on the</span>
                    <span className="font-bold text-xs">App Store</span>
                  </div>
                </a>

                {/* AppGallery Button */}
                <a
                  href="#"
                  className="flex items-center gap-2 bg-black text-white px-3 py-1.5 rounded-lg border border-white/20 hover:bg-zinc-900 transition-colors shadow-sm"
                >
                  <svg className="w-5 h-5 fill-current text-red-500 shrink-0" viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8z" /></svg>
                  <div className="text-[9px] leading-tight">
                    <span className="block text-white/70">EXPLORE IT ON</span>
                    <span className="font-bold text-xs">AppGallery</span>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>

        {/* Bottom copyright notice */}
        <div className="mt-12 pt-6 border-t border-white/20 text-[11px] text-white/80 flex flex-col sm:flex-row justify-between items-center gap-4">
          <p>
            By clicking &quot;Accept all cookies&quot;, you agree Car Workshop can store cookies on your device and disclose information in accordance with our policy.
          </p>
          <div className="flex gap-4 shrink-0 font-medium">
            <Link href="/privacy" className="hover:underline hover:text-white">Privacy Policy</Link>
            <Link href="/terms" className="hover:underline hover:text-white">Terms of Service</Link>
          </div>
        </div>
      </div>
    </footer>
  )
}
