import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabase } from '@/lib/supabase/server'
import { createServiceClient } from '@/lib/supabase/service'

export async function GET() {
  try {
    const supabase = await createServerSupabase()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const service = createServiceClient() as any
    const { data, error } = await service
      .from('url_redirects')
      .select('*')
      .order('created_at', { ascending: false })

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ redirects: data ?? [] })
  } catch (err) {
    console.error('GET /api/admin/redirects error:', err)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
  }
}

// Bulk create / update redirects
export async function POST(req: NextRequest) {
  try {
    const supabase = await createServerSupabase()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await req.json() as { redirects: Array<{ source: string; target: string; statusCode?: number }> }
    if (!Array.isArray(body.redirects) || body.redirects.length === 0) {
      return NextResponse.json({ error: 'Invalid payload: redirects array required' }, { status: 400 })
    }

    const payload = body.redirects.map(r => {
      let source = r.source.trim()
      if (!source.startsWith('/')) source = '/' + source
      return {
        source_path: source,
        target_url: r.target.trim(),
        status_code: r.statusCode || 301,
        is_active: true,
      }
    })

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const service = createServiceClient() as any
    const { data, error } = await service
      .from('url_redirects')
      .upsert(payload, { onConflict: 'source_path' })
      .select()

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ success: true, count: data?.length ?? 0 })
  } catch (err) {
    console.error('POST /api/admin/redirects error:', err)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
  }
}
