'use client'

import { useId, useState, useRef, useEffect, useMemo } from 'react'
import { CharCounter } from './CharCounter'

const INPUT_BASE = 'w-full border border-zinc-300 rounded-lg px-3 py-2.5 text-sm text-zinc-900 placeholder:text-zinc-400 bg-white focus:outline-none focus:ring-2 focus:ring-[#4472C4] focus:border-transparent transition-all duration-150 disabled:bg-zinc-50 disabled:text-zinc-400'

export function AdminLabel({ children, htmlFor, required, hint }: { children: React.ReactNode; htmlFor?: string; required?: boolean; hint?: string }) {
  return (
    <label htmlFor={htmlFor} className="flex items-center justify-between text-sm font-medium text-zinc-700 mb-1.5">
      <span>{children}{required && <span className="text-red-500 ml-0.5">*</span>}</span>
      {hint && <span className="text-xs font-normal text-zinc-400">{hint}</span>}
    </label>
  )
}

interface InputProps extends React.InputHTMLAttributes<HTMLInputElement> {
  label?: string
  required?: boolean
  maxCount?: number
  hint?: string
}

export function AdminInput({ label, required, maxCount, hint, className = '', value, id, ...rest }: InputProps) {
  const autoId = useId()
  const fieldId = id ?? autoId
  return (
    <div>
      {label && <AdminLabel htmlFor={fieldId} required={required} hint={hint}>{label}</AdminLabel>}
      <input id={fieldId} aria-label={label} className={`${INPUT_BASE} ${className}`} value={value} required={required} {...rest} />
      {maxCount != null && <CharCounter length={String(value ?? '').length} max={maxCount} />}
    </div>
  )
}

interface TextareaProps extends React.TextareaHTMLAttributes<HTMLTextAreaElement> {
  label?: string
  required?: boolean
  maxCount?: number
  hint?: string
}

export function AdminTextarea({ label, required, maxCount, hint, className = '', value, id, rows = 4, ...rest }: TextareaProps) {
  const autoId = useId()
  const fieldId = id ?? autoId
  return (
    <div>
      {label && <AdminLabel htmlFor={fieldId} required={required} hint={hint}>{label}</AdminLabel>}
      <textarea id={fieldId} aria-label={label} rows={rows} className={`${INPUT_BASE} min-h-[96px] resize-y ${className}`} value={value} required={required} {...rest} />
      {maxCount != null && <CharCounter length={String(value ?? '').length} max={maxCount} />}
    </div>
  )
}

interface SelectProps extends React.SelectHTMLAttributes<HTMLSelectElement> {
  label?: string
  required?: boolean
  hint?: string
  options: Array<{ value: string; label: string }>
}

export function AdminSelect({ label, required, hint, options, className = '', id, value, onChange, disabled, name }: SelectProps) {
  const [open, setOpen] = useState(false)
  const [search, setSearch] = useState('')
  const containerRef = useRef<HTMLDivElement>(null)
  const searchInputRef = useRef<HTMLInputElement>(null)

  const selectedOption = useMemo(() => {
    return options.find(o => String(o.value) === String(value)) || options[0]
  }, [options, value])

  const filteredOptions = useMemo(() => {
    if (!search.trim()) return options
    const q = search.toLowerCase().trim()
    return options.filter(o => o.label.toLowerCase().includes(q) || String(o.value).toLowerCase().includes(q))
  }, [options, search])

  // Close on click outside
  useEffect(() => {
    function handleClickOutside(e: MouseEvent) {
      if (containerRef.current && !containerRef.current.contains(e.target as Node)) {
        setOpen(false)
        setSearch('')
      }
    }
    document.addEventListener('mousedown', handleClickOutside)
    return () => document.removeEventListener('mousedown', handleClickOutside)
  }, [])

  // Auto-focus search input when dropdown opens
  useEffect(() => {
    if (open && searchInputRef.current) {
      searchInputRef.current.focus()
    }
  }, [open])

  const handleSelect = (val: string) => {
    if (onChange) {
      const syntheticEvent = {
        target: { value: val, name: name ?? '' },
      } as React.ChangeEvent<HTMLSelectElement>
      onChange(syntheticEvent)
    }
    setOpen(false)
    setSearch('')
  }

  return (
    <div>
      {label && <AdminLabel htmlFor={id} required={required} hint={hint}>{label}</AdminLabel>}
      <div ref={containerRef} className="relative">
        <button
          type="button"
          id={id}
          disabled={disabled}
          onClick={() => setOpen(o => !o)}
          className={`${INPUT_BASE} flex items-center justify-between text-left pr-9 cursor-pointer hover:border-[#4472C4] ${className}`}
        >
          <span className={`truncate ${selectedOption?.value === '' ? 'text-zinc-400' : 'text-zinc-900 font-medium'}`}>
            {selectedOption?.label ?? 'Select...'}
          </span>
          <svg className={`w-4 h-4 text-zinc-400 absolute right-3 top-1/2 -translate-y-1/2 transition-transform duration-150 ${open ? 'rotate-180 text-[#4472C4]' : ''}`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
          </svg>
        </button>

        {open && (
          <div className="absolute top-full left-0 right-0 mt-1 bg-white border border-zinc-200 rounded-lg shadow-xl z-50 overflow-hidden ring-1 ring-black/5 animate-in fade-in duration-100">
            {/* Search box if more than 5 options */}
            {options.length > 5 && (
              <div className="p-2 border-b border-zinc-100 bg-zinc-50/90 sticky top-0 z-10">
                <div className="relative flex items-center">
                  <svg className="w-3.5 h-3.5 text-zinc-400 absolute left-2.5 pointer-events-none" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                  </svg>
                  <input
                    ref={searchInputRef}
                    type="text"
                    value={search}
                    onChange={e => setSearch(e.target.value)}
                    placeholder="Type to search..."
                    className="w-full text-xs bg-white border border-zinc-200 rounded-md pl-8 pr-3 py-1.5 focus:outline-none focus:ring-1 focus:ring-[#4472C4] text-zinc-900 placeholder:text-zinc-400"
                  />
                </div>
              </div>
            )}

            {/* Options List */}
            <div className="max-h-60 overflow-y-auto py-1 text-xs divide-y divide-zinc-50">
              {filteredOptions.length === 0 ? (
                <div className="px-3 py-4 text-center text-zinc-400 text-xs font-normal">
                  No matching options found
                </div>
              ) : (
                filteredOptions.map(o => {
                  const isSelected = String(o.value) === String(value)
                  return (
                    <button
                      key={o.value}
                      type="button"
                      onClick={() => handleSelect(o.value)}
                      className={`w-full text-left px-3.5 py-2 flex items-center justify-between text-xs transition-colors ${
                        isSelected
                          ? 'bg-blue-50 text-[#4472C4] font-semibold'
                          : 'text-zinc-700 hover:bg-zinc-100/80'
                      }`}
                    >
                      <span className="truncate">{o.label}</span>
                      {isSelected && (
                        <svg className="w-3.5 h-3.5 text-[#4472C4] shrink-0 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M5 13l4 4L19 7" />
                        </svg>
                      )}
                    </button>
                  )
                })
              )}
            </div>
          </div>
        )}
      </div>
    </div>
  )
}
