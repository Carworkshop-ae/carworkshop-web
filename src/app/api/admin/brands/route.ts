import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabase } from '@/lib/supabase/server'
import { createServiceClient } from '@/lib/supabase/service'
import { generateSlug } from '@/lib/page-engine/slugify'

export async function GET() {
  try {
    const supabase = await createServerSupabase()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const service = createServiceClient()
    const { data, error } = await service.from('brands').select('*').order('name', { ascending: true })
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json({ brands: data })
  } catch (err) {
    console.error('GET /api/admin/brands:', err)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
  }
}

export async function POST(req: NextRequest) {
  try {
    const supabase = await createServerSupabase()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await req.json()
    const name = body.name?.trim()
    if (!name) {
      return NextResponse.json({ error: 'Brand/Make name is required' }, { status: 400 })
    }

    const slug = body.slug ? generateSlug(body.slug) : generateSlug(name)
    const service = createServiceClient()

    const { data, error } = await service
      .from('brands')
      .insert({
        name,
        slug,
        status: body.status || 'published',
        content_json: {},
        seo_json: {},
        created_by: user.id,
      })
      .select('*')
      .single()

    if (error) return NextResponse.json({ error: error.message }, { status: 400 })

    return NextResponse.json({ brand: data })
  } catch (err) {
    console.error('POST /api/admin/brands:', err)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
  }
}
