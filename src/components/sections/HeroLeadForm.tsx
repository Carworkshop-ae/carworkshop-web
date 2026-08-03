'use client'

// Homepage hero lead-capture form. Structurally modeled on
// InlineBookingForm (same field/markup conventions) so wiring it to
// /api/leads later is a small diff — but the "Let's Go" button is a
// placeholder for now: no fetch, no validation, no state transitions.
export function HeroLeadForm() {
  const inputCls = 'w-full px-3.5 py-3 rounded-xl border border-hairline bg-white text-sm focus:outline-none focus:ring-2 focus:ring-[#4472C4] focus:border-transparent transition-all'

  return (
    <form onSubmit={e => e.preventDefault()} className="card-premium p-7 rounded-2xl">
      <h2 className="text-xl font-extrabold text-[#0F172A] mb-1">Get a Free Quote</h2>
      <p className="text-sm text-[#64748B] mb-5">Fixed price. We&apos;ll call you back fast.</p>
      <div className="space-y-3">
        <input type="text" placeholder="Your name" className={inputCls} />
        <input type="tel" placeholder="Mobile number" className={inputCls} />
        <input type="text" placeholder="Service needed" className={inputCls} />
        <button
          type="submit"
          className="w-full inline-flex items-center justify-center px-6 py-3.5 rounded-xl bg-gradient-orange text-white font-bold shadow-[0_8px_24px_-8px_rgba(232,96,28,0.6)] hover:-translate-y-0.5 transition-all"
        >
          Let&apos;s Go
        </button>
        <p className="text-[#94A3B8] text-xs text-center">Free quote · No obligation · 12-month warranty</p>
      </div>
    </form>
  )
}
