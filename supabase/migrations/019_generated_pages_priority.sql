-- 019_generated_pages_priority.sql
-- Admin-assigned homepage ranking (1-8) for general_service pages. Nullable —
-- only pages curated for the homepage "Popular Services" list get a value.

ALTER TABLE generated_pages ADD COLUMN priority smallint;
CREATE INDEX idx_generated_pages_priority ON generated_pages(priority) WHERE priority IS NOT NULL;
