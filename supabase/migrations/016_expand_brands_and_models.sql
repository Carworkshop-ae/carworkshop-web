-- ─── Migration 016: Comprehensive Brands & Models Seed ────────────────────────
-- Inserts all major UAE car brands and popular models.

-- Insert Brands
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description) VALUES
('BMW', 'bmw', 'published', 1, 'BMW Repair & Service in UAE | CarWorkshop.ae', 'Specialized BMW repair, service & maintenance across UAE. Certified mechanics & genuine parts.'),
('Mercedes-Benz', 'mercedes-benz', 'published', 2, 'Mercedes-Benz Repair & Service in UAE | CarWorkshop.ae', 'Professional Mercedes-Benz repair & service. Advanced diagnostic & maintenance solutions.'),
('Audi', 'audi', 'published', 3, 'Audi Repair & Service in UAE | CarWorkshop.ae', 'Expert Audi workshop in UAE. Engine, transmission, electrical & routine maintenance.'),
('Porsche', 'porsche', 'published', 4, 'Porsche Repair & Service in UAE | CarWorkshop.ae', 'Specialized Porsche service & performance tuning. Factory trained technicians in UAE.'),
('Volkswagen', 'volkswagen', 'published', 5, 'Volkswagen Repair & Service in UAE | CarWorkshop.ae', 'Affordable & reliable Volkswagen service & maintenance in UAE.'),
('Range Rover', 'range-rover', 'published', 6, 'Range Rover Repair & Service in UAE | CarWorkshop.ae', 'Land Rover & Range Rover specialist garage in UAE. Suspensions, engine & transmission.'),
('Lexus', 'lexus', 'published', 7, 'Lexus Repair & Service in UAE | CarWorkshop.ae', 'Top-rated Lexus service & maintenance center across UAE.'),
('Toyota', 'toyota', 'published', 8, 'Toyota Repair & Service in UAE | CarWorkshop.ae', 'Complete Toyota car maintenance, oil change & mechanical repair in UAE.'),
('Nissan', 'nissan', 'published', 9, 'Nissan Repair & Service in UAE | CarWorkshop.ae', 'Certified Nissan service center & repair garage in UAE.'),
('Honda', 'honda', 'published', 10, 'Honda Repair & Service in UAE | CarWorkshop.ae', 'Professional Honda car service, brake, AC & engine repair in UAE.'),
('Hyundai', 'hyundai', 'published', 11, 'Hyundai Repair & Service in UAE | CarWorkshop.ae', 'Quality Hyundai vehicle service & mechanical repairs in UAE.'),
('Kia', 'kia', 'published', 12, 'Kia Repair & Service in UAE | CarWorkshop.ae', 'Reliable Kia service & repair workshops across UAE.'),
('Ford', 'ford', 'published', 13, 'Ford Repair & Service in UAE | CarWorkshop.ae', 'Specialized Ford truck & car service & repair in UAE.'),
('Chevrolet', 'chevrolet', 'published', 14, 'Chevrolet Repair & Service in UAE | CarWorkshop.ae', 'Expert Chevrolet repair & maintenance services in UAE.'),
('GMC', 'gmc', 'published', 15, 'GMC Repair & Service in UAE | CarWorkshop.ae', 'GMC SUV & truck repair specialists in UAE.'),
('Jeep', 'jeep', 'published', 16, 'Jeep Repair & Service in UAE | CarWorkshop.ae', 'Off-road Jeep repair, suspension & engine maintenance in UAE.'),
('Tesla', 'tesla', 'published', 17, 'Tesla Repair & Service in UAE | CarWorkshop.ae', 'EV specialized Tesla service, battery, brake & system diagnostics in UAE.'),
('Dodge', 'dodge', 'published', 18, 'Dodge Repair & Service in UAE | CarWorkshop.ae', 'Dodge muscle car & SUV specialized repair garage in UAE.'),
('Bentley', 'bentley', 'published', 19, 'Bentley Repair & Service in UAE | CarWorkshop.ae', 'Luxury Bentley repair & maintenance specialist in UAE.'),
('Rolls-Royce', 'rolls-royce', 'published', 20, 'Rolls-Royce Repair & Service in UAE | CarWorkshop.ae', 'Bespoke Rolls-Royce service & maintenance garage in UAE.'),
('Ferrari', 'ferrari', 'published', 21, 'Ferrari Repair & Service in UAE | CarWorkshop.ae', 'Exotic Ferrari supercar service & performance tuning in UAE.'),
('Lamborghini', 'lamborghini', 'published', 22, 'Lamborghini Repair & Service in UAE | CarWorkshop.ae', 'Lamborghini supercar repair, clutch & engine service in UAE.'),
('Aston Martin', 'aston-martin', 'published', 23, 'Aston Martin Repair & Service in UAE | CarWorkshop.ae', 'British luxury Aston Martin repair & maintenance in UAE.'),
('Jaguar', 'jaguar', 'published', 24, 'Jaguar Repair & Service in UAE | CarWorkshop.ae', 'Jaguar specialist garage for engine, electrical & AC repair in UAE.'),
('Maserati', 'maserati', 'published', 25, 'Maserati Repair & Service in UAE | CarWorkshop.ae', 'Italian luxury Maserati service & mechanics in UAE.'),
('Volvo', 'volvo', 'published', 26, 'Volvo Repair & Service in UAE | CarWorkshop.ae', 'Safety & reliability specialized Volvo repair center in UAE.'),
('MINI', 'mini', 'published', 27, 'MINI Repair & Service in UAE | CarWorkshop.ae', 'MINI Cooper specialized repair & oil service in UAE.'),
('Infiniti', 'infiniti', 'published', 28, 'Infiniti Repair & Service in UAE | CarWorkshop.ae', 'Infiniti car & crossover maintenance specialists in UAE.'),
('Genesis', 'genesis', 'published', 29, 'Genesis Repair & Service in UAE | CarWorkshop.ae', 'Genesis luxury vehicle service & maintenance in UAE.'),
('MG', 'mg', 'published', 30, 'MG Repair & Service in UAE | CarWorkshop.ae', 'MG car service & electrical maintenance in UAE.'),
('Changan', 'changan', 'published', 31, 'Changan Repair & Service in UAE | CarWorkshop.ae', 'Changan car maintenance & repair services in UAE.'),
('Haval', 'haval', 'published', 32, 'Haval Repair & Service in UAE | CarWorkshop.ae', 'Haval SUV repair & transmission maintenance in UAE.'),
('BYD', 'byd', 'published', 33, 'BYD Repair & Service in UAE | CarWorkshop.ae', 'BYD Electric & Hybrid vehicle service specialists in UAE.'),
('Geely', 'geely', 'published', 34, 'Geely Repair & Service in UAE | CarWorkshop.ae', 'Geely car maintenance & diagnostic services in UAE.')
ON CONFLICT (slug) DO NOTHING;

-- Insert Popular Brand Models dynamically linking by brand slug
DO $$
DECLARE
  b_id UUID;
BEGIN
  -- BMW
  SELECT id INTO b_id FROM brands WHERE slug = 'bmw';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'BMW 3 Series', '3-series', 'published', 1),
    (b_id, 'BMW 5 Series', '5-series', 'published', 2),
    (b_id, 'BMW 7 Series', '7-series', 'published', 3),
    (b_id, 'BMW X1', 'x1', 'published', 4),
    (b_id, 'BMW X3', 'x3', 'published', 5),
    (b_id, 'BMW X5', 'x5', 'published', 6),
    (b_id, 'BMW X6', 'x6', 'published', 7),
    (b_id, 'BMW X7', 'x7', 'published', 8),
    (b_id, 'BMW M3', 'm3', 'published', 9),
    (b_id, 'BMW M5', 'm5', 'published', 10)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Mercedes-Benz
  SELECT id INTO b_id FROM brands WHERE slug = 'mercedes-benz';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Mercedes C-Class', 'c-class', 'published', 1),
    (b_id, 'Mercedes E-Class', 'e-class', 'published', 2),
    (b_id, 'Mercedes S-Class', 's-class', 'published', 3),
    (b_id, 'Mercedes GLA', 'gla', 'published', 4),
    (b_id, 'Mercedes GLC', 'glc', 'published', 5),
    (b_id, 'Mercedes GLE', 'gle', 'published', 6),
    (b_id, 'Mercedes GLS', 'gls', 'published', 7),
    (b_id, 'Mercedes G-Class', 'g-class', 'published', 8)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Audi
  SELECT id INTO b_id FROM brands WHERE slug = 'audi';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Audi A4', 'a4', 'published', 1),
    (b_id, 'Audi A6', 'a6', 'published', 2),
    (b_id, 'Audi A8', 'a8', 'published', 3),
    (b_id, 'Audi Q5', 'q5', 'published', 4),
    (b_id, 'Audi Q7', 'q7', 'published', 5),
    (b_id, 'Audi Q8', 'q8', 'published', 6),
    (b_id, 'Audi R8', 'r8', 'published', 7)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Porsche
  SELECT id INTO b_id FROM brands WHERE slug = 'porsche';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Porsche 911', '911', 'published', 1),
    (b_id, 'Porsche Cayenne', 'cayenne', 'published', 2),
    (b_id, 'Porsche Macan', 'macan', 'published', 3),
    (b_id, 'Porsche Panamera', 'panamera', 'published', 4),
    (b_id, 'Porsche Taycan', 'taycan', 'published', 5)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Toyota
  SELECT id INTO b_id FROM brands WHERE slug = 'toyota';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Toyota Land Cruiser', 'land-cruiser', 'published', 1),
    (b_id, 'Toyota Prado', 'prado', 'published', 2),
    (b_id, 'Toyota Camry', 'camry', 'published', 3),
    (b_id, 'Toyota Corolla', 'corolla', 'published', 4),
    (b_id, 'Toyota RAV4', 'rav4', 'published', 5),
    (b_id, 'Toyota Fortuner', 'fortuner', 'published', 6),
    (b_id, 'Toyota Hilux', 'hilux', 'published', 7)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Nissan
  SELECT id INTO b_id FROM brands WHERE slug = 'nissan';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Nissan Patrol', 'patrol', 'published', 1),
    (b_id, 'Nissan Altima', 'altima', 'published', 2),
    (b_id, 'Nissan Maxima', 'maxima', 'published', 3),
    (b_id, 'Nissan Sunny', 'sunny', 'published', 4),
    (b_id, 'Nissan X-Trail', 'x-trail', 'published', 5),
    (b_id, 'Nissan Pathfinder', 'pathfinder', 'published', 6),
    (b_id, 'Nissan GT-R', 'gt-r', 'published', 7)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Lexus
  SELECT id INTO b_id FROM brands WHERE slug = 'lexus';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Lexus LX', 'lx', 'published', 1),
    (b_id, 'Lexus GX', 'gx', 'published', 2),
    (b_id, 'Lexus RX', 'rx', 'published', 3),
    (b_id, 'Lexus ES', 'es', 'published', 4),
    (b_id, 'Lexus LS', 'ls', 'published', 5),
    (b_id, 'Lexus IS', 'is', 'published', 6)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Range Rover
  SELECT id INTO b_id FROM brands WHERE slug = 'range-rover';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Range Rover Vogue', 'vogue', 'published', 1),
    (b_id, 'Range Rover Sport', 'sport', 'published', 2),
    (b_id, 'Range Rover Velar', 'velar', 'published', 3),
    (b_id, 'Range Rover Evoque', 'evoque', 'published', 4),
    (b_id, 'Defender', 'defender', 'published', 5)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;

  -- Tesla
  SELECT id INTO b_id FROM brands WHERE slug = 'tesla';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Tesla Model 3', 'model-3', 'published', 1),
    (b_id, 'Tesla Model Y', 'model-y', 'published', 2),
    (b_id, 'Tesla Model S', 'model-s', 'published', 3),
    (b_id, 'Tesla Model X', 'model-x', 'published', 4),
    (b_id, 'Tesla Cybertruck', 'cybertruck', 'published', 5)
    ON CONFLICT (brand_id, slug) DO NOTHING;
  END IF;
END $$;
