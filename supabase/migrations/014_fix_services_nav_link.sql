-- 014_fix_services_nav_link.sql
-- Header "Services" nav item pointed at /services, a route removed during
-- the catalog-page cleanup. Repoint the seeded id=1 entry to the Dubai
-- services listing (/dubai/services) in the live website_settings row.
-- Guarded so it's a no-op if already fixed or if the admin has since edited
-- nav_items themselves (their custom link value is left alone).

UPDATE website_settings
SET value = (
  SELECT jsonb_agg(
    CASE WHEN elem->>'id' = '1' AND elem->>'link' = '/services'
      THEN jsonb_set(elem, '{link}', '"/dubai/services"')
      ELSE elem
    END
  )
  FROM jsonb_array_elements(value) AS elem
),
updated_at = NOW()
WHERE key = 'nav_items';
