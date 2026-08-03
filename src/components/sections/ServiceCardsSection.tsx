import { ServiceFeatureCard } from '@/components/sections/ServiceFeatureCard'
import type { RelatedLink } from '@/lib/page-engine/content'

interface ServiceCardsSectionProps {
  services: RelatedLink[]
  title?: string
  subtitle?: string
}

// Same plain icon+title card used on Brand/Model pages (ServiceFeatureCard) —
// kept visually consistent across the site, no per-card description/price.
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
          {services.map(service => <ServiceFeatureCard key={service.slug} link={service} />)}
        </div>
      </div>
    </section>
  )
}
