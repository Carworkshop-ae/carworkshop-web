import Link from 'next/link'
import type { SiteSettings } from '@/types/settings'
import { findDubaiBrandsForFooter, type FooterBrandLink } from '@/lib/page-engine/content'

interface FooterProps {
  settings: SiteSettings
  footerPages?: unknown[]
  brandsOverride?: FooterBrandLink[]
}

const DEFAULT_NAV = [
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

  // Format brand list to guarantee ascending order (A-Z) — only published by admin from admin portal
  const brandsList = dbBrands.map(b => ({
    name: b.name.toLowerCase().includes('service') ? b.name : `${b.name} Service`,
    href: b.slug.startsWith('/') ? b.slug : `/${b.slug}`,
  })).sort((a, b) => a.name.localeCompare(b.name))

  const customLinks = settings.footer_custom_links ?? []
  const quickNavLinks = customLinks.length > 0
    ? customLinks.sort((a, b) => a.order - b.order).map(l => ({ label: l.label, href: l.link }))
    : DEFAULT_NAV

  const bgColor = settings.footer_background_color || '#161F2E'
  const textColor = settings.footer_text_color || '#FFFFFF'

  return (
    <footer style={{ backgroundColor: bgColor, color: textColor }} role="contentinfo" className="relative overflow-hidden font-sans border-t border-white/10">
      <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 lg:py-16">
        
        {/* Tier 1: Brands We Service (Only shown if published by admin from admin portal) */}
        {brandsList.length > 0 && (
          <div className="pb-10 mb-10 border-b border-white/15">
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
        )}

        {/* Tier 2: 2 Main Columns (Quick Navigation Links, Connect With Us) */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 lg:gap-12 text-xs">
          
          {/* Column 1: Quick Navigation Links */}
          <div className="space-y-3">
            <h4 className="text-sm font-bold uppercase tracking-wider text-white">
              {settings.footer_quick_nav_title || 'QUICK NAVIGATION LINKS'}
            </h4>
            <ul className="space-y-2 text-white/90">
              {quickNavLinks.map((item, idx) => (
                <li key={`nav-${idx}`}>
                  <Link href={item.href} className="hover:underline opacity-90 hover:opacity-100 transition-opacity">
                    {item.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Column 2: Connect With Us */}
          <div className="space-y-3">
            <h4 className="text-sm font-bold uppercase tracking-wider text-white">
              {settings.footer_social_title || 'CONNECT WITH US'}
            </h4>
            <div className="flex items-center gap-3 pt-2">
              {/* Twitter / X */}
              <a
                href={settings.social_twitter_url || '#'}
                target="_blank"
                rel="noopener noreferrer"
                aria-label="X"
                className="w-10 h-10 rounded-full bg-white text-[#16A34A] flex items-center justify-center hover:bg-zinc-100 transition-colors shadow-sm"
              >
                <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zM17.083 19.77h1.833L7.084 4.126H5.117z" /></svg>
              </a>
              {/* Facebook */}
              <a
                href={settings.social_facebook_url || '#'}
                target="_blank"
                rel="noopener noreferrer"
                aria-label="Facebook"
                className="w-10 h-10 rounded-full bg-white text-[#16A34A] flex items-center justify-center hover:bg-zinc-100 transition-colors shadow-sm"
              >
                <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24"><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z" /></svg>
              </a>
              {/* Instagram */}
              <a
                href={settings.social_instagram_url || '#'}
                target="_blank"
                rel="noopener noreferrer"
                aria-label="Instagram"
                className="w-10 h-10 rounded-full bg-white text-[#16A34A] flex items-center justify-center hover:bg-zinc-100 transition-colors shadow-sm"
              >
                <svg className="w-4 h-4 fill-current" viewBox="0 0 24 24"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163C8.741 0 8.333.014 7.053.072 2.695.272.273 2.69.073 7.052.014 8.333 0 8.741 0 12c0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98C8.333 23.986 8.741 24 12 24c3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98C15.668.014 15.259 0 12 0zm0 5.838a6.162 6.162 0 100 12.324 6.162 6.162 0 000-12.324zM12 16a4 4 0 110-8 4 4 0 010 8zm6.406-11.845a1.44 1.44 0 100 2.881 1.44 1.44 0 000-2.881z" /></svg>
              </a>
            </div>
          </div>
        </div>

        {/* Bottom copyright notice */}
        <div className="mt-12 pt-6 border-t border-white/15 text-[11px] text-white/80 flex flex-col sm:flex-row justify-between items-center gap-4">
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
