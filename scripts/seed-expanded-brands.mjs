import { readFileSync } from 'node:fs'
import { createClient } from '@supabase/supabase-js'

const env = {}
try {
  const content = readFileSync(new URL('../.env.local', import.meta.url), 'utf8')
  for (const line of content.split('\n')) {
    const m = line.match(/^([A-Z0-9_]+)\s*=\s*(.*)$/)
    if (m) env[m[1]] = m[2].replace(/^["']|["']$/g, '').trim()
  }
} catch (e) {
  console.error('Could not read .env.local', e)
}

const url = env.SUPABASE_URL || env.NEXT_PUBLIC_SUPABASE_URL || process.env.NEXT_PUBLIC_SUPABASE_URL
const key = env.SUPABASE_SERVICE_ROLE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY

if (!url || !key) {
  console.error('Missing SUPABASE_URL / SUPABASE_SERVICE_ROLE_KEY in .env.local')
  process.exit(1)
}

const sb = createClient(url, key, { auth: { persistSession: false } })

function formatTitle(str) {
  return str
    .split('-')
    .map(w => w.charAt(0).toUpperCase() + w.slice(1))
    .join(' ')
}

const rawData = readFileSync(new URL('../supabase/migrations/018_seed_full_vehicle_dataset.sql', import.meta.url), 'utf8')

async function run() {
  console.log('Seeding 968 vehicle models dataset into Supabase…')

  // Parse brands from migration file
  const brandRegex = /VALUES \('([^']+)', '([^']+)', 'published', (\d+)/g
  const brandList = []
  let bMatch
  while ((bMatch = brandRegex.exec(rawData)) !== null) {
    brandList.push({ name: bMatch[1], slug: bMatch[2], sort: parseInt(bMatch[3], 10) })
  }

  console.log(`Found ${brandList.length} unique brands. Upserting into DB…`)

  // Upsert brands in batches of 50
  for (let i = 0; i < brandList.length; i += 50) {
    const batch = brandList.slice(i, i + 50).map(b => ({
      name: b.name,
      slug: b.slug,
      status: 'published',
      sort_order: b.sort,
      seo_title: `${b.name} Repair & Service in UAE | CarWorkshop.ae`,
      seo_description: `Specialized ${b.name} service & repair in UAE. Certified mechanics & genuine parts.`,
    }))

    const { error } = await sb.from('brands').upsert(batch, { onConflict: 'slug' })
    if (error) {
      console.error('Error upserting brands batch:', error.message)
    }
  }

  // Fetch created brand IDs
  const { data: dbBrands, error: fetchErr } = await sb.from('brands').select('id, slug')
  if (fetchErr || !dbBrands) {
    console.error('Error fetching brands:', fetchErr?.message)
    process.exit(1)
  }

  const brandIdBySlug = new Map(dbBrands.map(b => [b.slug, b.id]))

  // Parse models grouped by brand block
  const blockRegex = /-- Brand: ([^\n]+)\s+SELECT id INTO b_id FROM brands WHERE slug = '([^']+)';\s+IF b_id IS NOT NULL THEN\s+INSERT INTO brand_models \([^\)]+\) VALUES\s+([\s\S]+?)\s+ON CONFLICT/g

  const modelRows = []
  let blockMatch
  while ((blockMatch = blockRegex.exec(rawData)) !== null) {
    const bSlug = blockMatch[2]
    const bId = brandIdBySlug.get(bSlug)
    if (!bId) continue

    const valuesContent = blockMatch[3]
    const rowRegex = /\(b_id, '([^']+)', '([^']+)', 'published', (\d+)\)/g
    let rMatch
    while ((rMatch = rowRegex.exec(valuesContent)) !== null) {
      modelRows.push({
        brand_id: bId,
        name: rMatch[1],
        slug: rMatch[2],
        status: 'published',
        sort_order: parseInt(rMatch[3], 10),
      })
    }
  }

  console.log(`Found ${modelRows.length} total models. Upserting into DB in batches…`)

  let upsertedCount = 0
  for (let i = 0; i < modelRows.length; i += 100) {
    const batch = modelRows.slice(i, i + 100)
    const { data, error } = await sb.from('brand_models').upsert(batch, { onConflict: 'brand_id,slug' }).select('id')
    if (error) {
      console.error(`Error in models batch ${i}:`, error.message)
    } else {
      upsertedCount += data?.length ?? 0
    }
  }

  console.log(`✓ Successfully seeded ${brandList.length} brands and ${upsertedCount} vehicle models!`)
}

run()
