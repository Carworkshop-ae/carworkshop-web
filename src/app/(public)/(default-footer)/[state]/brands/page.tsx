import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { findBrandPages } from '@/lib/page-engine/content'
import { generateSlug } from '@/lib/page-engine/slugify'
import { STATES_BY_COUNTRY } from '@/lib/geo'
import { ServiceFeatureCard } from '@/components/sections/ServiceFeatureCard'
import { PageHeader } from '@/components/sections/PageHeader'

export const revalidate = 3600

interface Props {
  params: Promise<{ state: string }>
}

function resolveStateName(stateSlug: string): string | null {
  const all = Object.values(STATES_BY_COUNTRY).flat()
  return all.find(s => generateSlug(s) === stateSlug) ?? null
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { state: stateSlug } = await params
  const stateName = resolveStateName(stateSlug)
  if (!stateName) return {}
  return {
    title: `Car Brands in ${stateName} | CarWorkshop.ae`,
    description: `Browse all car brands we service in ${stateName}, UAE.`,
  }
}

export default async function BrandsListingPage({ params }: Props) {
  const { state: stateSlug } = await params

  const stateName = resolveStateName(stateSlug)
  if (!stateName) notFound()

  const links = await findBrandPages(stateName)

  return (
    <>
      <PageHeader breadcrumb={[{ label: stateName }]} title={`Car Brands in ${stateName}`} showTrust={false} />
      <section className="py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          {links.length === 0 ? (
            <p className="text-center text-[#64748B]">No brands published for {stateName} yet.</p>
          ) : (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">
              {links.map(l => <ServiceFeatureCard key={l.slug} link={l} />)}
            </div>
          )}
        </div>
      </section>
    </>
  )
}
