import Link from 'next/link'
import { SERVICE_ICON_MAP, DEFAULT_SERVICE_ICON } from '@/lib/service-icons'
import type { RelatedLink } from '@/lib/page-engine/content'

interface ServiceCardsSectionProps {
  services: RelatedLink[]
  title?: string
  subtitle?: string
}

export function ServiceCardsSection({
  services,
  title = 'Our Services',
  subtitle,
}: ServiceCardsSectionProps) {
  if (services.length === 0) return null
  return (
    <section className="py-16 lg:py-24" aria-labelledby="services-heading">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-12 max-w-2xl mx-auto">
          <h2 id="services-heading" className="display-tight text-balance text-3xl sm:text-4xl font-extrabold text-[#0F172A] mb-3">
            {title}
          </h2>
          {subtitle && <p className="text-pretty text-[#64748B] text-lg">{subtitle}</p>}
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5 lg:gap-6">
          {services.map(service => {
            const Icon = (service.icon && SERVICE_ICON_MAP[service.icon]) || DEFAULT_SERVICE_ICON
            return (
              <Link key={service.slug} href={`/${service.slug}`} className="group card-premium flex flex-col p-6 lg:p-7">
                <div className="w-12 h-12 rounded-2xl bg-[#EEF3FB] ring-1 ring-[#DCE6F6] flex items-center justify-center mb-5 group-hover:bg-[#FDEEE4] group-hover:ring-[#F6D2BC] transition-all">
                  <Icon className="w-6 h-6 text-[#4472C4] group-hover:text-[#E8601C] transition-colors" strokeWidth={1.5} />
                </div>

                <h3 className="text-lg font-bold text-[#0F172A] mb-2 group-hover:text-[#274E96] transition-colors">{service.h1}</h3>
                {service.short_description && (
                  <p className="text-sm text-[#64748B] leading-relaxed flex-1 mb-4">{service.short_description}</p>
                )}

                <div className="mt-auto flex items-center justify-between pt-2">
                  {service.starting_price ? (
                    <span className="text-sm font-bold text-[#0F172A]">{service.starting_price}</span>
                  ) : <span />}
                  <span className="inline-flex items-center gap-1 text-sm font-semibold text-[#4472C4] group-hover:gap-2 transition-all">
                    View details
                    <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" /></svg>
                  </span>
                </div>
              </Link>
            )
          })}
        </div>
      </div>
    </section>
  )
}
