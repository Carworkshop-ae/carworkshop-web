# 🚘 CarWorkshop.ae — Next-Gen Auto Repair & Service Platform in UAE

[![Next.js](https://img.shields.io/badge/Next.js-16.2-black?style=for-the-badge&logo=next.js)](https://nextjs.org/)
[![React](https://img.shields.io/badge/React-19.2-blue?style=for-the-badge&logo=react)](https://react.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue?style=for-the-badge&logo=typescript)](https://www.typescriptlang.org/)
[![TailwindCSS](https://img.shields.io/badge/TailwindCSS-4.0-38B2AC?style=for-the-badge&logo=tailwind-css)](https://tailwindcss.com/)
[![Supabase](https://img.shields.io/badge/Supabase-Database%20%26%20Auth-3ECF8E?style=for-the-badge&logo=supabase)](https://supabase.com/)
[![Vercel](https://img.shields.io/badge/Vercel-Deployment-black?style=for-the-badge&logo=vercel)](https://vercel.com/)

[**CarWorkshop.ae**](https://carworkshop.ae) is the leading digital automotive repair and servicing platform in the United Arab Emirates. Built with Next.js 16 (App Router), React 19, Supabase, and TailwindCSS, the platform provides seamless car service booking across Dubai, Abu Dhabi, Sharjah, and Northern Emirates for all major vehicle makes and models.

---

## 🌟 Key Features

### 🚗 Public Experience & SEO Engine
- **Brand & Model Hubs**: Dedicated, high-converting landing pages for 95+ automotive brands (Audi, BMW, Mercedes, Porsche, Nissan, Toyota, etc.) and 960+ vehicle models.
- **Service Catalog**: Comprehensive service matrix covering Oil Change, Engine Overhaul, Brake Service, AC Repair, Transmission Repair, Battery Replacement, and Pre-Purchase Inspection.
- **High-Performance Architecture**: Built with Incremental Static Regeneration (ISR) and Server-Side Generation (SSG) for sub-second page loads and Lighthouse scores ≥90.
- **Automated JSON-LD Schema Engine**: Emits rich Google search schemas (`LocalBusiness`, `Service`, `FAQPage`, `Article`, `BreadcrumbList`) dynamically for top SERP ranking.
- **Bilingual & Multi-Region Support**: Full support for English and Arabic (RTL) text, localized pricing (AED), and regional targeting across UAE Emirates.
- **Instant Booking & Lead System**: Rate-limited, honeypot-protected booking forms integrated with instant email notifications via Resend and SMS/WhatsApp routing.

### 🛡️ Admin Portal (`/admin`)
- **Granular Role-Based Access Control (RBAC)**: Supports `super_admin`, `approver`, and `seo_editor` roles protected by Next.js middleware and PostgreSQL Row Level Security (RLS).
- **SEO Page Engine**: Bulk auto-generator to synthesize state, brand, model, and service matrix landing pages.
- **SEO Blog CMS**: Full-featured blog post editor with TipTap rich text, Arabic translations, tags, and approval workflows.
- **Live SERP & Social Preview**: Real-time Google Search and OpenGraph card previews as admins edit metadata.
- **Media & File Management**: Integrated Supabase Storage media picker supporting WEBP and PNG assets with automatic compression previews.
- **On-Demand Cache Purging**: One-click revalidation (`revalidatePage()`) to sync admin edits live to the public site in <2 seconds.

---

## 🏗️ Architecture & Technology Stack

```text
Public Visitors  ──► Vercel Edge ──► Next.js 16 (ISR / SSG) ──► Supabase (Anon RLS)
Admin Users      ──► Vercel       ──► Next.js (/admin)       ──► Supabase (Service Role / Auth)
Admin Publish    ──► revalidatePage() ──────────────────────► ISR Edge Cache Purge (<2s)
```

| Layer | Technology | Description |
|---|---|---|
| **Framework** | Next.js 16.2 (App Router & Turbopack) | Modern hybrid SSG / ISR / Server Components |
| **UI Library** | React 19.2 + Lucide Icons | Component-driven UI with fluid micro-interactions |
| **Styling** | TailwindCSS 4 + Vanilla CSS | Responsive design tokens, glassmorphism, & dark modes |
| **Database & Auth** | Supabase (PostgreSQL 15) | Relational database, RLS policies, Storage, & Auth |
| **Rate Limiting** | Upstash Redis | Distributed sliding-window rate limiting for lead APIs |
| **Email Service** | Resend API | Transactional lead alerts & admin notifications |
| **Monitoring** | Sentry 10 + Google Analytics 4 | Real-time client/server error tracking & telemetry |

---

## 📁 Repository Structure

```text
carworkshop/
├── scripts/                      # DB seeding scripts (960+ vehicle models, brands dataset)
├── src/
│   ├── app/                      # Next.js 16 App Router pages & API routes
│   │   ├── (public)/             # Public facing routes (Homepage, Brands, Services, Blog, Locations)
│   │   ├── admin/                # Gated Admin Portal (SEO Pages, Blog, Users, Settings)
│   │   └── api/                  # API endpoints (leads, admin CRUD, media upload, revalidation)
│   ├── components/
│   │   ├── admin/                # Shared admin UI components, RichTextEditor, SEO Panels
│   │   ├── layout/               # Header, Footer, AnnouncementBar, Floating CTAs
│   │   ├── sections/             # Page sections (Hero, Services, Brand Grid, FAQ, Reviews)
│   │   └── ui/                   # Core atomic UI components (Buttons, Inputs, Modals, Cards)
│   ├── lib/                      # Database clients, schemas (Zod), geo data, rate limiters
│   ├── proxy.ts                  # Middleware security layer & route protection
│   └── types/                    # TypeScript type definitions & interfaces
├── supabase/
│   └── migrations/               # PostgreSQL DB schema migrations (001 to 018)
├── DEPLOYMENT.md                 # Complete production deployment guide
└── package.json                  # Dependencies and build scripts
```

---

## 🚀 Getting Started

### Prerequisites

- **Node.js**: `18.17.0` or higher
- **Package Manager**: `pnpm` (recommended, `pnpm-lock.yaml` is committed)
- **Supabase Account**: For database and storage setup

### 1. Clone & Install Dependencies

```bash
git clone https://github.com/Carworkshop-ae/carworkshop-web.git
cd carworkshop-web/carworkshop
pnpm install
```

### 2. Configure Environment Variables

Create a `.env.local` file in the `carworkshop/` directory based on `.env.example`:

```bash
cp .env.example .env.local
```

Key required variables:

```env
NEXT_PUBLIC_SUPABASE_URL=https://your-supabase-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
SUPABASE_SERVICE_ROLE_KEY=your-supabase-service-role-key
NEXT_PUBLIC_SITE_URL=http://localhost:3000
REVALIDATION_SECRET=your-32-char-random-secret
RESEND_API_KEY=re_your_resend_api_key
ADMIN_EMAIL=admin@carworkshop.ae
```

### 3. Run Development Server

```bash
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser to view the application.

---

## 🧪 Testing & Code Quality

Run automated linting and static type checking before submitting changes:

```bash
# Run TypeScript type check
pnpm typecheck

# Run ESLint check
pnpm lint

# Run unit tests
pnpm test
```

---

## 🚢 Deployment

For full details on deploying to Vercel and configuring Supabase webhooks, consult the [Production Deployment Guide](file:///d:/Umair's%20Project/Client's%20Website/Carworkshop.ae/carworkshop/DEPLOYMENT.md).

Quick Vercel deployment checklist:
1. Set **Root Directory** to `carworkshop` in Vercel.
2. Add environment variables from `.env.example`.
3. Set build command: `pnpm build`.
4. Deploy!

---

## 📄 License

Copyright © 2026 **CarWorkshop.ae**. All rights reserved.
