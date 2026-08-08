'use client'

import Link from 'next/link'
import { Wrench } from 'lucide-react'
import type { SiteSettings } from '@/types/settings'

interface AnnouncementBarProps {
  settings: Pick<SiteSettings, 'announcement_bar_bg_color' | 'announcement_bar_text_color' | 'announcement_bar_link'>
}

const PUBLIC_CONSTRUCTION_TEXT = "Website Under Construction — We’re currently building CarWorkshop.ae. Online bookings are not available yet. Please check back soon!"

export function AnnouncementBar({ settings }: AnnouncementBarProps) {
  const text = PUBLIC_CONSTRUCTION_TEXT
  const bgColor = settings.announcement_bar_bg_color || '#E8601C'
  const textColor = settings.announcement_bar_text_color || '#FFFFFF'

  const inner = (
    <div className="inline-flex items-center justify-center gap-2 text-xs sm:text-sm font-semibold tracking-wide">
      <span className="inline-flex items-center gap-1.5 px-2.5 py-0.5 rounded-full bg-white/20 text-white text-[11px] font-extrabold uppercase tracking-wider shrink-0">
        <Wrench className="w-3.5 h-3.5 animate-pulse" /> Notice
      </span>
      <span>{text}</span>
    </div>
  )

  return (
    <div
      className="relative w-full shadow-sm z-50 py-2.5 px-4"
      style={{ backgroundColor: bgColor, color: textColor }}
      role="region"
      aria-label="Announcement"
    >
      <div className="max-w-7xl mx-auto text-center">
        {settings.announcement_bar_link
          ? <Link href={settings.announcement_bar_link} className="hover:underline">{inner}</Link>
          : inner}
      </div>
    </div>
  )
}


