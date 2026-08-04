import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabase } from '@/lib/supabase/server'
import { createServiceClient } from '@/lib/supabase/service'
import { generateSlug } from '@/lib/page-engine/slugify'

interface RouteContext {
  params: Promise<{ id: string }>
}

export async function GET(_req: NextRequest, { params }: RouteContext) {
  try {
    const { id } = await params
    const supabase = await createServerSupabase()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const service = createServiceClient()
    const { data, error } = await service
      .from('brand_models')
      .select('*')
      .eq('brand_id', id)
      .order('name', { ascending: true })

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json({ models: data })
  } catch (err) {
    console.error('GET /api/admin/brands/[id]/models:', err)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
  }
}

export async function POST(req: NextRequest, { params }: RouteContext) {
  try {
    const { id: brandId } = await params
    const supabase = await createServerSupabase()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await req.json()
    const name = body.name?.trim()
    if (!name) {
      return NextResponse.json({ error: 'Model name is required' }, { status: 400 })
    }

    const slug = body.slug ? generateSlug(body.slug) : generateSlug(name)
    const service = createServiceClient()

    const { data, error } = await service
      .from('brand_models')
      .insert({
        brand_id: brandId,
        name,
        slug,
        status: body.status || 'published',
      })
      .select('*')
      .single()

    if (error) return NextResponse.json({ error: error.message }, { status: 400 })

    return NextResponse.json({ model: data })
  } catch (err) {
    console.error('POST /api/admin/brands/[id]/models:', err)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
  }
}
