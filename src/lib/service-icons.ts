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

const ICON_MAP = new Map(SERVICE_ICONS.map(o => [o.value, o.icon]))

export function resolveServiceIcon(value?: string | null): LucideIcon {
  return (value && ICON_MAP.get(value)) || Wrench
}
