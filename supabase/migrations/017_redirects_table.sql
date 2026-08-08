-- ─── Migration 017: 301 Redirects Table ──────────────────────────────────────
CREATE TABLE IF NOT EXISTS url_redirects (
  id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  source_path TEXT NOT NULL UNIQUE,
  target_url  TEXT NOT NULL,
  status_code INTEGER NOT NULL DEFAULT 301,
  is_active   BOOLEAN NOT NULL DEFAULT true,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_url_redirects_source ON url_redirects(source_path);
CREATE INDEX IF NOT EXISTS idx_url_redirects_active ON url_redirects(is_active);
