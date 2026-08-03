import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { findServicePages } from '@/lib/page-engine/content'
import { createPublicSupabase } from '@/lib/supabase/public'
import { generateSlug } from '@/lib/page-engine/slugify'
import { STATES_BY_COUNTRY } from '@/lib/geo'
import { ServiceFeatureCard } from '@/components/sections/ServiceFeatureCard'
import { PageHeader } from '@/components/sections/PageHeader'

export const revalidate = 3600

interface Props {
  params: Promise<{ state: string }>
  searchParams: Promise<{ make?: string; model?: string }>
}

function resolveStateName(stateSlug: string): string | null {
  const all = Object.values(STATES_BY_COUNTRY).flat()
  return all.find(s => generateSlug(s) === stateSlug) ?? null
}

async function resolveBrandId(brandSlug?: string): Promise<{ id: string; name: string } | null> {
  if (!brandSlug) return null
  const supabase = createPublicSupabase()
  const { data } = await supabase.from('brands').select('id, name').eq('slug', brandSlug).maybeSingle()
  return data ?? null
}

async function resolveModelId(brandId: string | null, modelSlug?: string): Promise<string | null> {
  if (!brandId || !modelSlug) return null
  const supabase = createPublicSupabase()
  const { data } = await supabase.from('brand_models').select('id').eq('brand_id', brandId).eq('slug', modelSlug).maybeSingle()
  return data?.id ?? null
}

export async function generateMetadata({ params, searchParams }: Props): Promise<Metadata> {
  const { state: stateSlug } = await params
  const { make } = await searchParams
  const stateName = resolveStateName(stateSlug)
  if (!stateName) return {}
  const brand = await resolveBrandId(make)
  const title = brand ? `${brand.name} Services in ${stateName} | CarWorkshop.ae` : `Car Services in ${stateName} | CarWorkshop.ae`
  return { title, description: `Browse all car services available in ${stateName}, UAE.` }
}

export default async function ServicesListingPage({ params, searchParams }: Props) {
  const { state: stateSlug } = await params
  const { make, model } = await searchParams

  const stateName = resolveStateName(stateSlug)
  if (!stateName) notFound()

  const brand = await resolveBrandId(make)
  const modelId = await resolveModelId(brand?.id ?? null, model)

  const links = await findServicePages(stateName, brand?.id ?? null, modelId)

  const title = brand ? `${brand.name} Services in ${stateName}` : `Car Services in ${stateName}`

  return (
    <>
      <PageHeader breadcrumb={[{ label: stateName }]} title={title} showTrust={false} />
      <section className="py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          {links.length === 0 ? (
            <p className="text-center text-[#64748B]">No services published for {stateName} yet.</p>
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
