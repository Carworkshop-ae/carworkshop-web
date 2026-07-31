-- 015_fix_brand_location_nav_links.sql
-- Header "Car Brands" nav item pointed at /brands, a route removed during
-- the catalog-page cleanup. Repoint the seeded id=2 entry to the Dubai
-- brands listing (/dubai/brands, mirrors the /dubai/services fix from
-- migration 014). "Locations" (id=3) already points at /locations, which
-- now exists as a real page (src/app/(public)/locations/page.tsx) — no data
-- change needed for it.
-- Guarded so it's a no-op if already fixed or if the admin has since edited
-- nav_items themselves (their custom link value is left alone).

UPDATE website_settings
SET value = (
  SELECT jsonb_agg(
    CASE WHEN elem->>'id' = '2' AND elem->>'link' = '/brands'
      THEN jsonb_set(elem, '{link}', '"/dubai/brands"')
      ELSE elem
    END
  )
  FROM jsonb_array_elements(value) AS elem
),
updated_at = NOW()
WHERE key = 'nav_items';
