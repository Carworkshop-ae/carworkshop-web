'use client'

import { useState, useEffect, useCallback } from 'react'
import toast from 'react-hot-toast'
import { AdminTopbar } from '@/components/admin/AdminTopbar'
import { AdminCard } from '@/components/admin/ui/AdminCard'
import { AdminButton } from '@/components/admin/ui/AdminButton'
import { AdminInput, AdminLabel } from '@/components/admin/ui/AdminField'
import { AdminBadge } from '@/components/admin/ui/AdminBadge'
import { Plus, Car, ChevronRight, RefreshCw } from 'lucide-react'

interface Brand {
  id: string
  name: string
  slug: string
  status: string
}

interface BrandModel {
  id: string
  brand_id: string
  name: string
  slug: string
  status: string
}

export default function BrandsManagementPage() {
  const [brands, setBrands] = useState<Brand[]>([])
  const [loadingBrands, setLoadingBrands] = useState(true)

  const [newBrandName, setNewBrandName] = useState('')
  const [newBrandSlug, setNewBrandSlug] = useState('')
  const [creatingBrand, setCreatingBrand] = useState(false)

  const [selectedBrand, setSelectedBrand] = useState<Brand | null>(null)
  const [models, setModels] = useState<BrandModel[]>([])
  const [loadingModels, setLoadingModels] = useState(false)

  const [newModelName, setNewModelName] = useState('')
  const [newModelSlug, setNewModelSlug] = useState('')
  const [creatingModel, setCreatingModel] = useState(false)

  const refreshBrands = useCallback(async () => {
    setLoadingBrands(true)
    try {
      const res = await fetch('/api/admin/brands')
      if (res.ok) {
        const data = await res.json()
        const brandList: Brand[] = data.brands ?? []
        setBrands(brandList)
      }
    } catch {
      toast.error('Failed to load Car Makes')
    } finally {
      setLoadingBrands(false)
    }
  }, [])

  const refreshModels = useCallback(async (brandId: string) => {
    setLoadingModels(true)
    try {
      const res = await fetch(`/api/admin/brands/${brandId}/models`)
      if (res.ok) {
        const data = await res.json()
        setModels(data.models ?? [])
      }
    } catch {
      toast.error('Failed to load models')
    } finally {
      setLoadingModels(false)
    }
  }, [])

  useEffect(() => {
    let isMounted = true
    async function loadInitialBrands() {
      setLoadingBrands(true)
      try {
        const res = await fetch('/api/admin/brands')
        if (res.ok && isMounted) {
          const data = await res.json()
          const brandList: Brand[] = data.brands ?? []
          setBrands(brandList)
          if (brandList.length > 0) {
            setSelectedBrand(prev => prev ?? brandList[0])
          }
        }
      } catch {
        if (isMounted) toast.error('Failed to load Car Makes')
      } finally {
        if (isMounted) setLoadingBrands(false)
      }
    }
    void loadInitialBrands()
    return () => { isMounted = false }
  }, [])

  useEffect(() => {
    let isMounted = true
    if (!selectedBrand) {
      queueMicrotask(() => { if (isMounted) setModels([]) })
      return () => { isMounted = false }
    }
    async function loadModels(brandId: string) {
      setLoadingModels(true)
      try {
        const res = await fetch(`/api/admin/brands/${brandId}/models`)
        if (res.ok && isMounted) {
          const data = await res.json()
          setModels(data.models ?? [])
        }
      } catch {
        if (isMounted) toast.error('Failed to load models')
      } finally {
        if (isMounted) setLoadingModels(false)
      }
    }
    void loadModels(selectedBrand.id)
    return () => { isMounted = false }
  }, [selectedBrand])

  async function handleCreateBrand(e: React.FormEvent) {
    e.preventDefault()
    if (!newBrandName.trim()) {
      toast.error('Car Make name is required')
      return
    }

    setCreatingBrand(true)
    try {
      const res = await fetch('/api/admin/brands', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ name: newBrandName, slug: newBrandSlug || undefined }),
      })

      const data = await res.json()
      if (res.ok && data.brand) {
        toast.success(`Car Make "${data.brand.name}" created successfully`)
        setNewBrandName('')
        setNewBrandSlug('')
        setBrands(prev => [...prev, data.brand].sort((a, b) => a.name.localeCompare(b.name)))
        setSelectedBrand(data.brand)
      } else {
        toast.error(data.error || 'Failed to create Car Make')
      }
    } catch {
      toast.error('Network error creating Car Make')
    } finally {
      setCreatingBrand(false)
    }
  }

  async function handleCreateModel(e: React.FormEvent) {
    e.preventDefault()
    if (!selectedBrand) {
      toast.error('Please select a Car Make first')
      return
    }
    if (!newModelName.trim()) {
      toast.error('Model name is required')
      return
    }

    setCreatingModel(true)
    try {
      const res = await fetch(`/api/admin/brands/${selectedBrand.id}/models`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ name: newModelName, slug: newModelSlug || undefined }),
      })

      const data = await res.json()
      if (res.ok && data.model) {
        toast.success(`Car Model "${data.model.name}" created successfully`)
        setNewModelName('')
        setNewModelSlug('')
        setModels(prev => [...prev, data.model].sort((a, b) => a.name.localeCompare(b.name)))
      } else {
        toast.error(data.error || 'Failed to create Car Model')
      }
    } catch {
      toast.error('Network error creating Car Model')
    } finally {
      setCreatingModel(false)
    }
  }

  return (
    <>
      <AdminTopbar title="CAR MAKES &amp; MODELS" />
      <div className="p-6 space-y-6 max-w-7xl">
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {/* Section 1: Create Car Make (Brand) */}
          <AdminCard title="Create Car Make (Brand)">
            <form onSubmit={handleCreateBrand} className="space-y-4">
              <AdminInput
                label="Car Make Name"
                placeholder="e.g. Porsche, Tesla, BYD"
                required
                value={newBrandName}
                onChange={e => setNewBrandName(e.target.value)}
              />
              <AdminInput
                label="URL Slug (Optional)"
                placeholder="e.g. porsche"
                value={newBrandSlug}
                onChange={e => setNewBrandSlug(e.target.value)}
                hint="Auto-generated from name if left empty"
              />
              <AdminButton variant="success" type="submit" loading={creatingBrand}>
                <Plus size={16} className="mr-1.5 inline" /> Create Car Make
              </AdminButton>
            </form>
          </AdminCard>

          {/* Section 2: Create Car Model */}
          <AdminCard title={`Create Car Model ${selectedBrand ? `for ${selectedBrand.name}` : ''}`}>
            <form onSubmit={handleCreateModel} className="space-y-4">
              <div>
                <AdminLabel required>Selected Car Make</AdminLabel>
                <div className="p-2.5 bg-zinc-50 border border-zinc-200 rounded-lg font-semibold text-zinc-800 text-sm flex items-center gap-2">
                  <Car size={16} className="text-[#4472C4]" />
                  {selectedBrand ? selectedBrand.name : 'Select a Car Make from the list below'}
                </div>
              </div>
              <AdminInput
                label="Car Model Name"
                placeholder="e.g. Cayenne, Model Y, Taycan"
                required
                disabled={!selectedBrand}
                value={newModelName}
                onChange={e => setNewModelName(e.target.value)}
              />
              <AdminInput
                label="URL Slug (Optional)"
                placeholder="e.g. cayenne"
                disabled={!selectedBrand}
                value={newModelSlug}
                onChange={e => setNewModelSlug(e.target.value)}
                hint="Auto-generated from name if left empty"
              />
              <AdminButton variant="success" type="submit" loading={creatingModel} disabled={!selectedBrand}>
                <Plus size={16} className="mr-1.5 inline" /> Add Model to {selectedBrand?.name ?? 'Make'}
              </AdminButton>
            </form>
          </AdminCard>
        </div>

        {/* Section 3: Lists (Brands A-Z and Models A-Z) */}
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-start">
          {/* Left column: Car Makes List */}
          <div className="lg:col-span-5">
            <AdminCard
              title={`Car Makes (${brands.length}) — Ascending (A-Z)`}
              actions={
                <button
                  type="button"
                  onClick={() => void refreshBrands()}
                  className="text-zinc-500 hover:text-zinc-800 transition-colors p-1"
                  title="Refresh"
                >
                  <RefreshCw size={15} className={loadingBrands ? 'animate-spin' : ''} />
                </button>
              }
            >
              {loadingBrands ? (
                <p className="text-sm text-zinc-400 py-4">Loading Car Makes…</p>
              ) : brands.length === 0 ? (
                <p className="text-sm text-zinc-500 py-4">No Car Makes found. Create one above.</p>
              ) : (
                <div className="divide-y divide-zinc-100 max-h-[500px] overflow-y-auto admin-scroll pr-1">
                  {brands.map(brand => {
                    const isSelected = selectedBrand?.id === brand.id
                    const badgeKind = (brand.status === 'published' ? 'published' : brand.status === 'draft' ? 'draft' : 'archived') as 'published' | 'draft' | 'archived'
                    return (
                      <button
                        key={brand.id}
                        type="button"
                        onClick={() => setSelectedBrand(brand)}
                        className={[
                          'w-full text-left py-3 px-3 rounded-lg flex items-center justify-between transition-colors text-sm',
                          isSelected ? 'bg-[#EEF3FB] text-[#274E96] font-semibold' : 'hover:bg-zinc-50 text-zinc-700',
                        ].join(' ')}
                      >
                        <div className="flex items-center gap-2">
                          <span>{brand.name}</span>
                          <span className="text-xs text-zinc-400 font-mono">({brand.slug})</span>
                        </div>
                        <div className="flex items-center gap-2">
                          <AdminBadge kind={badgeKind}>
                            {brand.status}
                          </AdminBadge>
                          <ChevronRight size={16} className={isSelected ? 'text-[#274E96]' : 'text-zinc-400'} />
                        </div>
                      </button>
                    )
                  })}
                </div>
              )}
            </AdminCard>
          </div>

          {/* Right column: Car Models List for Selected Make */}
          <div className="lg:col-span-7">
            <AdminCard
              title={
                selectedBrand
                  ? `Models for ${selectedBrand.name} (${models.length}) — Ascending (A-Z)`
                  : 'Select a Car Make to View Models'
              }
              actions={
                selectedBrand ? (
                  <button
                    type="button"
                    onClick={() => void refreshModels(selectedBrand.id)}
                    className="text-zinc-500 hover:text-zinc-800 transition-colors p-1"
                    title="Refresh Models"
                  >
                    <RefreshCw size={15} className={loadingModels ? 'animate-spin' : ''} />
                  </button>
                ) : undefined
              }
            >
              {!selectedBrand ? (
                <p className="text-sm text-zinc-500 py-8 text-center">
                  Click on any Car Make on the left to inspect or manage its models.
                </p>
              ) : loadingModels ? (
                <p className="text-sm text-zinc-400 py-4">Loading models for {selectedBrand.name}…</p>
              ) : models.length === 0 ? (
                <div className="py-6 text-center">
                  <p className="text-sm text-zinc-600 font-medium">No models created for {selectedBrand.name} yet.</p>
                  <p className="text-xs text-zinc-400 mt-1">Use the form above to add models.</p>
                </div>
              ) : (
                <div className="divide-y divide-zinc-100 max-h-[500px] overflow-y-auto admin-scroll pr-1">
                  {models.map(model => {
                    const badgeKind = (model.status === 'published' ? 'published' : model.status === 'draft' ? 'draft' : 'archived') as 'published' | 'draft' | 'archived'
                    return (
                      <div key={model.id} className="py-3 px-3 flex items-center justify-between text-sm hover:bg-zinc-50 rounded-lg">
                        <div className="flex items-center gap-2">
                          <span className="font-medium text-zinc-800">{model.name}</span>
                          <span className="text-xs text-zinc-400 font-mono">({model.slug})</span>
                        </div>
                        <AdminBadge kind={badgeKind}>
                          {model.status}
                        </AdminBadge>
                      </div>
                    )
                  })}
                </div>
              )}
            </AdminCard>
          </div>
        </div>
      </div>
    </>
  )
}
