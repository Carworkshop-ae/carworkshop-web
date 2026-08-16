-- Drop deprecated blog fields (country/state, PNG master image, image title)
-- and Arabic-language fields across the admin portal (blog, pages, faqs,
-- language keys), plus add car make/model association to blog_posts.

ALTER TABLE blog_posts DROP COLUMN IF EXISTS country;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS state;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS image_png_url;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS image_title;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS arabic_title;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS arabic_excerpt;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS arabic_blockquote;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS arabic_content;
ALTER TABLE blog_posts DROP COLUMN IF EXISTS tags_ar;

ALTER TABLE blog_posts ADD COLUMN IF NOT EXISTS brand_id UUID REFERENCES brands(id) ON DELETE SET NULL;
ALTER TABLE blog_posts ADD COLUMN IF NOT EXISTS model_id UUID REFERENCES brand_models(id) ON DELETE SET NULL;

ALTER TABLE generated_pages DROP COLUMN IF EXISTS arabic_title;
ALTER TABLE generated_pages DROP COLUMN IF EXISTS arabic_short_description;
ALTER TABLE generated_pages DROP COLUMN IF EXISTS arabic_complete_description;

ALTER TABLE faqs DROP COLUMN IF EXISTS arabic_name;
ALTER TABLE faqs DROP COLUMN IF EXISTS arabic_description_html;

ALTER TABLE language_keys DROP COLUMN IF EXISTS value_ar;
