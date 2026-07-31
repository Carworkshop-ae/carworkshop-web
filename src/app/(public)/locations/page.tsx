import type { Metadata } from 'next'
import Link from 'next/link'
import { findActiveStates } from '@/lib/page-engine/content'
import { generateSlug } from '@/lib/page-engine/slugify'
import { PageHeader } from '@/components/sections/PageHeader'
import { MapPin } from 'lucide-react'

export const revalidate = 3600

export const metadata: Metadata = {
  title: 'Areas We Serve in UAE | CarWorkshop.ae',
  description: 'Car service and repair locations across the UAE.',
}

export default async function LocationsDirectoryPage() {
  const states = await findActiveStates()

  return (
    <>
      <PageHeader breadcrumb={[{ label: 'Locations' }]} title="Areas We Serve in UAE" showTrust={false} />
      <section className="py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          {states.length === 0 ? (
            <p className="text-center text-[#64748B]">No locations published yet.</p>
          ) : (
            <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-3 sm:gap-4">
              {states.map(state => (
                <Link
                  key={state}
                  href={`/${generateSlug(state)}/services`}
                  className="group card-premium flex items-center gap-3 p-5 text-left"
                >
                  <div className="shrink-0 w-11 h-11 rounded-2xl bg-[#EEF3FB] ring-1 ring-[#DCE6F6] flex items-center justify-center group-hover:bg-[#FDEEE4] group-hover:ring-[#F6D2BC] transition-all">
                    <MapPin className="w-5 h-5 text-[#4472C4] group-hover:text-[#E8601C] transition-colors" />
                  </div>
                  <p className="font-bold text-[#0F172A] group-hover:text-[#274E96] transition-colors text-sm">{state}</p>
                </Link>
              ))}
            </div>
          )}
        </div>
      </section>
    </>
  )
}
