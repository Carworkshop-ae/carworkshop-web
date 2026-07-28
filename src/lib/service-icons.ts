import {
  Wrench, Gauge, Cog, Battery, Disc, Truck, Laptop, CircleDot,
  Snowflake, KeyRound, Filter, Fuel, Wind, Droplet, ShieldCheck,
  type LucideIcon,
} from 'lucide-react'

export interface ServiceIconOption { value: string; label: string; icon: LucideIcon }

export const SERVICE_ICONS: ServiceIconOption[] = [
  { value: 'oil-change', label: 'Oil Change', icon: Droplet },
  { value: 'engine', label: 'Engine', icon: Cog },
  { value: 'transmission', label: 'Transmission / Gearbox', icon: Gauge },
  { value: 'battery', label: 'Battery', icon: Battery },
  { value: 'brakes', label: 'Brakes', icon: Disc },
  { value: 'tow', label: 'Towing / Recovery', icon: Truck },
  { value: 'diagnostics', label: 'Diagnostics', icon: Laptop },
  { value: 'tires', label: 'Tires', icon: CircleDot },
  { value: 'ac', label: 'A/C', icon: Snowflake },
  { value: 'locksmith', label: 'Locksmith / Key', icon: KeyRound },
  { value: 'filter', label: 'Filter', icon: Filter },
  { value: 'fuel-pump', label: 'Fuel Pump', icon: Fuel },
  { value: 'exhaust', label: 'Exhaust', icon: Wind },
  { value: 'warranty', label: 'Warranty / Inspection', icon: ShieldCheck },
  { value: 'general', label: 'General Service', icon: Wrench },
]

// Plain object (not a function call) so callers can do a direct member-
// expression lookup — e.g. `SERVICE_ICON_MAP[link.icon ?? ''] ?? Wrench` —
// which keeps the resolved component a stable, statically-analyzable
// reference at the JSX call site (avoids react-hooks/static-components).
export const SERVICE_ICON_MAP: Record<string, LucideIcon> = Object.fromEntries(
  SERVICE_ICONS.map(o => [o.value, o.icon])
)

export const DEFAULT_SERVICE_ICON = Wrench
