import Link from 'next/link'
import { resolveServiceIcon } from '@/lib/service-icons'
import type { RelatedLink } from '@/lib/page-engine/content'

export function ServiceFeatureCard({ link }: { link: RelatedLink }) {
  const Icon = resolveServiceIcon(link.icon)
  return (
    <Link href={`/${link.slug}`} className="group card-premium flex flex-col items-center text-center p-6">
      <div className="w-12 h-12 rounded-2xl bg-[#EEF3FB] ring-1 ring-[#DCE6F6] flex items-center justify-center mb-4 group-hover:bg-[#FDEEE4] group-hover:ring-[#F6D2BC] transition-all">
        <Icon className="w-6 h-6 text-[#4472C4] group-hover:text-[#E8601C] transition-colors" strokeWidth={1.5} />
      </div>
      <h3 className="text-base font-bold text-[#0F172A] mb-2 group-hover:text-[#274E96] transition-colors">{link.h1}</h3>
      {link.service_features && link.service_features.length > 0 && (
        <ul className="text-sm text-[#374151] space-y-1">
          {link.service_features.map((f, i) => <li key={i}>{f}</li>)}
        </ul>
      )}
    </Link>
  )
}
