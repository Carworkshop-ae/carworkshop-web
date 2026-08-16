-- Add two new page templates: garage_brand, garage_car.
-- Same generated_pages/brands/brand_models data as brand/brand_model,
-- just targeting the "garage" keyword instead of "service" for SEO.

ALTER TYPE template_type ADD VALUE IF NOT EXISTS 'garage_brand';
ALTER TYPE template_type ADD VALUE IF NOT EXISTS 'garage_car';
