-- ─── Migration 018: Complete 968 Vehicle Brands & Models Dataset ───
-- Seeds all 968 vehicle models across 137 unique brands.

-- 1. Insert Unique Brands
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Abarth', 'abarth', 'published', 1, 'Abarth Repair & Service in UAE | CarWorkshop.ae', 'Specialized Abarth service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Acura', 'acura', 'published', 2, 'Acura Repair & Service in UAE | CarWorkshop.ae', 'Specialized Acura service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Aito', 'aito', 'published', 3, 'Aito Repair & Service in UAE | CarWorkshop.ae', 'Specialized Aito service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Alfa Romeo', 'alfa-romeo', 'published', 4, 'Alfa Romeo Repair & Service in UAE | CarWorkshop.ae', 'Specialized Alfa Romeo service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Ashok Leyland', 'ashok-leyland', 'published', 5, 'Ashok Leyland Repair & Service in UAE | CarWorkshop.ae', 'Specialized Ashok Leyland service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Aston Martin', 'aston-martin', 'published', 6, 'Aston Martin Repair & Service in UAE | CarWorkshop.ae', 'Specialized Aston Martin service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Audi', 'audi', 'published', 7, 'Audi Repair & Service in UAE | CarWorkshop.ae', 'Specialized Audi service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Avatr', 'avatr', 'published', 8, 'Avatr Repair & Service in UAE | CarWorkshop.ae', 'Specialized Avatr service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Backdraft', 'backdraft', 'published', 9, 'Backdraft Repair & Service in UAE | CarWorkshop.ae', 'Specialized Backdraft service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Baic', 'baic', 'published', 10, 'Baic Repair & Service in UAE | CarWorkshop.ae', 'Specialized Baic service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Baw', 'baw', 'published', 11, 'Baw Repair & Service in UAE | CarWorkshop.ae', 'Specialized Baw service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Bentley', 'bentley', 'published', 12, 'Bentley Repair & Service in UAE | CarWorkshop.ae', 'Specialized Bentley service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Bestune', 'bestune', 'published', 13, 'Bestune Repair & Service in UAE | CarWorkshop.ae', 'Specialized Bestune service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Bmw', 'bmw', 'published', 14, 'Bmw Repair & Service in UAE | CarWorkshop.ae', 'Specialized Bmw service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Bmw Alpina', 'bmw-alpina', 'published', 15, 'Bmw Alpina Repair & Service in UAE | CarWorkshop.ae', 'Specialized Bmw Alpina service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Brilliance', 'brilliance', 'published', 16, 'Brilliance Repair & Service in UAE | CarWorkshop.ae', 'Specialized Brilliance service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Bufori', 'bufori', 'published', 17, 'Bufori Repair & Service in UAE | CarWorkshop.ae', 'Specialized Bufori service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Bugatti', 'bugatti', 'published', 18, 'Bugatti Repair & Service in UAE | CarWorkshop.ae', 'Specialized Bugatti service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Buick', 'buick', 'published', 19, 'Buick Repair & Service in UAE | CarWorkshop.ae', 'Specialized Buick service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Byd', 'byd', 'published', 20, 'Byd Repair & Service in UAE | CarWorkshop.ae', 'Specialized Byd service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Cadillac', 'cadillac', 'published', 21, 'Cadillac Repair & Service in UAE | CarWorkshop.ae', 'Specialized Cadillac service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Can Am', 'can-am', 'published', 22, 'Can Am Repair & Service in UAE | CarWorkshop.ae', 'Specialized Can Am service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Caterham', 'caterham', 'published', 23, 'Caterham Repair & Service in UAE | CarWorkshop.ae', 'Specialized Caterham service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Changan', 'changan', 'published', 24, 'Changan Repair & Service in UAE | CarWorkshop.ae', 'Specialized Changan service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Chery', 'chery', 'published', 25, 'Chery Repair & Service in UAE | CarWorkshop.ae', 'Specialized Chery service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Chevrolet', 'chevrolet', 'published', 26, 'Chevrolet Repair & Service in UAE | CarWorkshop.ae', 'Specialized Chevrolet service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Chrysler', 'chrysler', 'published', 27, 'Chrysler Repair & Service in UAE | CarWorkshop.ae', 'Specialized Chrysler service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Citroen', 'citroen', 'published', 28, 'Citroen Repair & Service in UAE | CarWorkshop.ae', 'Specialized Citroen service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Cmc', 'cmc', 'published', 29, 'Cmc Repair & Service in UAE | CarWorkshop.ae', 'Specialized Cmc service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Daihatsu', 'daihatsu', 'published', 30, 'Daihatsu Repair & Service in UAE | CarWorkshop.ae', 'Specialized Daihatsu service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Denza', 'denza', 'published', 31, 'Denza Repair & Service in UAE | CarWorkshop.ae', 'Specialized Denza service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Dfsk', 'dfsk', 'published', 32, 'Dfsk Repair & Service in UAE | CarWorkshop.ae', 'Specialized Dfsk service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Dodge', 'dodge', 'published', 33, 'Dodge Repair & Service in UAE | CarWorkshop.ae', 'Specialized Dodge service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Dongfeng', 'dongfeng', 'published', 34, 'Dongfeng Repair & Service in UAE | CarWorkshop.ae', 'Specialized Dongfeng service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Exeed', 'exeed', 'published', 35, 'Exeed Repair & Service in UAE | CarWorkshop.ae', 'Specialized Exeed service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Fengon', 'fengon', 'published', 36, 'Fengon Repair & Service in UAE | CarWorkshop.ae', 'Specialized Fengon service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Ferrari', 'ferrari', 'published', 37, 'Ferrari Repair & Service in UAE | CarWorkshop.ae', 'Specialized Ferrari service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Fiat', 'fiat', 'published', 38, 'Fiat Repair & Service in UAE | CarWorkshop.ae', 'Specialized Fiat service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Force', 'force', 'published', 39, 'Force Repair & Service in UAE | CarWorkshop.ae', 'Specialized Force service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Ford', 'ford', 'published', 40, 'Ford Repair & Service in UAE | CarWorkshop.ae', 'Specialized Ford service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Forthing', 'forthing', 'published', 41, 'Forthing Repair & Service in UAE | CarWorkshop.ae', 'Specialized Forthing service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Foton', 'foton', 'published', 42, 'Foton Repair & Service in UAE | CarWorkshop.ae', 'Specialized Foton service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Fuso', 'fuso', 'published', 43, 'Fuso Repair & Service in UAE | CarWorkshop.ae', 'Specialized Fuso service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Gac', 'gac', 'published', 44, 'Gac Repair & Service in UAE | CarWorkshop.ae', 'Specialized Gac service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Geely', 'geely', 'published', 45, 'Geely Repair & Service in UAE | CarWorkshop.ae', 'Specialized Geely service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Genesis', 'genesis', 'published', 46, 'Genesis Repair & Service in UAE | CarWorkshop.ae', 'Specialized Genesis service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Gmc', 'gmc', 'published', 47, 'Gmc Repair & Service in UAE | CarWorkshop.ae', 'Specialized Gmc service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Gwm', 'gwm', 'published', 48, 'Gwm Repair & Service in UAE | CarWorkshop.ae', 'Specialized Gwm service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Haval', 'haval', 'published', 49, 'Haval Repair & Service in UAE | CarWorkshop.ae', 'Specialized Haval service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Hino', 'hino', 'published', 50, 'Hino Repair & Service in UAE | CarWorkshop.ae', 'Specialized Hino service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Honda', 'honda', 'published', 51, 'Honda Repair & Service in UAE | CarWorkshop.ae', 'Specialized Honda service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Hongqi', 'hongqi', 'published', 52, 'Hongqi Repair & Service in UAE | CarWorkshop.ae', 'Specialized Hongqi service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Hummer', 'hummer', 'published', 53, 'Hummer Repair & Service in UAE | CarWorkshop.ae', 'Specialized Hummer service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Hyundai', 'hyundai', 'published', 54, 'Hyundai Repair & Service in UAE | CarWorkshop.ae', 'Specialized Hyundai service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Ineos', 'ineos', 'published', 55, 'Ineos Repair & Service in UAE | CarWorkshop.ae', 'Specialized Ineos service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Infiniti', 'infiniti', 'published', 56, 'Infiniti Repair & Service in UAE | CarWorkshop.ae', 'Specialized Infiniti service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Isuzu', 'isuzu', 'published', 57, 'Isuzu Repair & Service in UAE | CarWorkshop.ae', 'Specialized Isuzu service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Jac', 'jac', 'published', 58, 'Jac Repair & Service in UAE | CarWorkshop.ae', 'Specialized Jac service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Jaecoo', 'jaecoo', 'published', 59, 'Jaecoo Repair & Service in UAE | CarWorkshop.ae', 'Specialized Jaecoo service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Jaguar', 'jaguar', 'published', 60, 'Jaguar Repair & Service in UAE | CarWorkshop.ae', 'Specialized Jaguar service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Jeep', 'jeep', 'published', 61, 'Jeep Repair & Service in UAE | CarWorkshop.ae', 'Specialized Jeep service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Jetour', 'jetour', 'published', 62, 'Jetour Repair & Service in UAE | CarWorkshop.ae', 'Specialized Jetour service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Kaiyi', 'kaiyi', 'published', 63, 'Kaiyi Repair & Service in UAE | CarWorkshop.ae', 'Specialized Kaiyi service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Kia', 'kia', 'published', 64, 'Kia Repair & Service in UAE | CarWorkshop.ae', 'Specialized Kia service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('King Long', 'king-long', 'published', 65, 'King Long Repair & Service in UAE | CarWorkshop.ae', 'Specialized King Long service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Koenigsegg', 'koenigsegg', 'published', 66, 'Koenigsegg Repair & Service in UAE | CarWorkshop.ae', 'Specialized Koenigsegg service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Ktm', 'ktm', 'published', 67, 'Ktm Repair & Service in UAE | CarWorkshop.ae', 'Specialized Ktm service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Lamborghini', 'lamborghini', 'published', 68, 'Lamborghini Repair & Service in UAE | CarWorkshop.ae', 'Specialized Lamborghini service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Lancia', 'lancia', 'published', 69, 'Lancia Repair & Service in UAE | CarWorkshop.ae', 'Specialized Lancia service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Land Rover', 'land-rover', 'published', 70, 'Land Rover Repair & Service in UAE | CarWorkshop.ae', 'Specialized Land Rover service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Leapmotor', 'leapmotor', 'published', 71, 'Leapmotor Repair & Service in UAE | CarWorkshop.ae', 'Specialized Leapmotor service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Lexus', 'lexus', 'published', 72, 'Lexus Repair & Service in UAE | CarWorkshop.ae', 'Specialized Lexus service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Li Auto', 'li-auto', 'published', 73, 'Li Auto Repair & Service in UAE | CarWorkshop.ae', 'Specialized Li Auto service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Lincoln', 'lincoln', 'published', 74, 'Lincoln Repair & Service in UAE | CarWorkshop.ae', 'Specialized Lincoln service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Livan', 'livan', 'published', 75, 'Livan Repair & Service in UAE | CarWorkshop.ae', 'Specialized Livan service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Lotus', 'lotus', 'published', 76, 'Lotus Repair & Service in UAE | CarWorkshop.ae', 'Specialized Lotus service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Lucid', 'lucid', 'published', 77, 'Lucid Repair & Service in UAE | CarWorkshop.ae', 'Specialized Lucid service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Luxeed', 'luxeed', 'published', 78, 'Luxeed Repair & Service in UAE | CarWorkshop.ae', 'Specialized Luxeed service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Lynk Co', 'lynk-co', 'published', 79, 'Lynk Co Repair & Service in UAE | CarWorkshop.ae', 'Specialized Lynk Co service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Maextro', 'maextro', 'published', 80, 'Maextro Repair & Service in UAE | CarWorkshop.ae', 'Specialized Maextro service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mahindra', 'mahindra', 'published', 81, 'Mahindra Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mahindra service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Maserati', 'maserati', 'published', 82, 'Maserati Repair & Service in UAE | CarWorkshop.ae', 'Specialized Maserati service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Maxus', 'maxus', 'published', 83, 'Maxus Repair & Service in UAE | CarWorkshop.ae', 'Specialized Maxus service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Maybach', 'maybach', 'published', 84, 'Maybach Repair & Service in UAE | CarWorkshop.ae', 'Specialized Maybach service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mazda', 'mazda', 'published', 85, 'Mazda Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mazda service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mclaren', 'mclaren', 'published', 86, 'Mclaren Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mclaren service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mercedes Benz', 'mercedes-benz', 'published', 87, 'Mercedes Benz Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mercedes Benz service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mercedes Maybach', 'mercedes-maybach', 'published', 88, 'Mercedes Maybach Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mercedes Maybach service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mercury', 'mercury', 'published', 89, 'Mercury Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mercury service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mg', 'mg', 'published', 90, 'Mg Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mg service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mini', 'mini', 'published', 91, 'Mini Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mini service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Mitsubishi', 'mitsubishi', 'published', 92, 'Mitsubishi Repair & Service in UAE | CarWorkshop.ae', 'Specialized Mitsubishi service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Morgan', 'morgan', 'published', 93, 'Morgan Repair & Service in UAE | CarWorkshop.ae', 'Specialized Morgan service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Neta', 'neta', 'published', 94, 'Neta Repair & Service in UAE | CarWorkshop.ae', 'Specialized Neta service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Nissan', 'nissan', 'published', 95, 'Nissan Repair & Service in UAE | CarWorkshop.ae', 'Specialized Nissan service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Omoda', 'omoda', 'published', 96, 'Omoda Repair & Service in UAE | CarWorkshop.ae', 'Specialized Omoda service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Opel', 'opel', 'published', 97, 'Opel Repair & Service in UAE | CarWorkshop.ae', 'Specialized Opel service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Pagani', 'pagani', 'published', 98, 'Pagani Repair & Service in UAE | CarWorkshop.ae', 'Specialized Pagani service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Peugeot', 'peugeot', 'published', 99, 'Peugeot Repair & Service in UAE | CarWorkshop.ae', 'Specialized Peugeot service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Polaris', 'polaris', 'published', 100, 'Polaris Repair & Service in UAE | CarWorkshop.ae', 'Specialized Polaris service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Polestar', 'polestar', 'published', 101, 'Polestar Repair & Service in UAE | CarWorkshop.ae', 'Specialized Polestar service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Pontiac', 'pontiac', 'published', 102, 'Pontiac Repair & Service in UAE | CarWorkshop.ae', 'Specialized Pontiac service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Porsche', 'porsche', 'published', 103, 'Porsche Repair & Service in UAE | CarWorkshop.ae', 'Specialized Porsche service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Rabdan', 'rabdan', 'published', 104, 'Rabdan Repair & Service in UAE | CarWorkshop.ae', 'Specialized Rabdan service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Ram', 'ram', 'published', 105, 'Ram Repair & Service in UAE | CarWorkshop.ae', 'Specialized Ram service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Renault', 'renault', 'published', 106, 'Renault Repair & Service in UAE | CarWorkshop.ae', 'Specialized Renault service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Riddara', 'riddara', 'published', 107, 'Riddara Repair & Service in UAE | CarWorkshop.ae', 'Specialized Riddara service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Roewe', 'roewe', 'published', 108, 'Roewe Repair & Service in UAE | CarWorkshop.ae', 'Specialized Roewe service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Rolls Royce', 'rolls-royce', 'published', 109, 'Rolls Royce Repair & Service in UAE | CarWorkshop.ae', 'Specialized Rolls Royce service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Rolls Royce Onyx', 'rolls-royce-onyx', 'published', 110, 'Rolls Royce Onyx Repair & Service in UAE | CarWorkshop.ae', 'Specialized Rolls Royce Onyx service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Saic', 'saic', 'published', 111, 'Saic Repair & Service in UAE | CarWorkshop.ae', 'Specialized Saic service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Seres', 'seres', 'published', 112, 'Seres Repair & Service in UAE | CarWorkshop.ae', 'Specialized Seres service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Sinotruk', 'sinotruk', 'published', 113, 'Sinotruk Repair & Service in UAE | CarWorkshop.ae', 'Specialized Sinotruk service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Skoda', 'skoda', 'published', 114, 'Skoda Repair & Service in UAE | CarWorkshop.ae', 'Specialized Skoda service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Skywell', 'skywell', 'published', 115, 'Skywell Repair & Service in UAE | CarWorkshop.ae', 'Specialized Skywell service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Smart', 'smart', 'published', 116, 'Smart Repair & Service in UAE | CarWorkshop.ae', 'Specialized Smart service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Soueast', 'soueast', 'published', 117, 'Soueast Repair & Service in UAE | CarWorkshop.ae', 'Specialized Soueast service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Stelato', 'stelato', 'published', 118, 'Stelato Repair & Service in UAE | CarWorkshop.ae', 'Specialized Stelato service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Subaru', 'subaru', 'published', 119, 'Subaru Repair & Service in UAE | CarWorkshop.ae', 'Specialized Subaru service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Suzuki', 'suzuki', 'published', 120, 'Suzuki Repair & Service in UAE | CarWorkshop.ae', 'Specialized Suzuki service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Tam', 'tam', 'published', 121, 'Tam Repair & Service in UAE | CarWorkshop.ae', 'Specialized Tam service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Tank', 'tank', 'published', 122, 'Tank Repair & Service in UAE | CarWorkshop.ae', 'Specialized Tank service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Tesla', 'tesla', 'published', 123, 'Tesla Repair & Service in UAE | CarWorkshop.ae', 'Specialized Tesla service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Toyota', 'toyota', 'published', 124, 'Toyota Repair & Service in UAE | CarWorkshop.ae', 'Specialized Toyota service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Vgv', 'vgv', 'published', 125, 'Vgv Repair & Service in UAE | CarWorkshop.ae', 'Specialized Vgv service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Victory', 'victory', 'published', 126, 'Victory Repair & Service in UAE | CarWorkshop.ae', 'Specialized Victory service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Volkswagen', 'volkswagen', 'published', 127, 'Volkswagen Repair & Service in UAE | CarWorkshop.ae', 'Specialized Volkswagen service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Volvo', 'volvo', 'published', 128, 'Volvo Repair & Service in UAE | CarWorkshop.ae', 'Specialized Volvo service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Voyah', 'voyah', 'published', 129, 'Voyah Repair & Service in UAE | CarWorkshop.ae', 'Specialized Voyah service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Wey', 'wey', 'published', 130, 'Wey Repair & Service in UAE | CarWorkshop.ae', 'Specialized Wey service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Xiaomi', 'xiaomi', 'published', 131, 'Xiaomi Repair & Service in UAE | CarWorkshop.ae', 'Specialized Xiaomi service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Xpeng', 'xpeng', 'published', 132, 'Xpeng Repair & Service in UAE | CarWorkshop.ae', 'Specialized Xpeng service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Yangwang', 'yangwang', 'published', 133, 'Yangwang Repair & Service in UAE | CarWorkshop.ae', 'Specialized Yangwang service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Yipai', 'yipai', 'published', 134, 'Yipai Repair & Service in UAE | CarWorkshop.ae', 'Specialized Yipai service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Zeekr', 'zeekr', 'published', 135, 'Zeekr Repair & Service in UAE | CarWorkshop.ae', 'Specialized Zeekr service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Zotye', 'zotye', 'published', 136, 'Zotye Repair & Service in UAE | CarWorkshop.ae', 'Specialized Zotye service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';
INSERT INTO brands (name, slug, status, sort_order, seo_title, seo_description)
VALUES ('Zxauto', 'zxauto', 'published', 137, 'Zxauto Repair & Service in UAE | CarWorkshop.ae', 'Specialized Zxauto service & repair in UAE.')
ON CONFLICT (slug) DO UPDATE SET status = 'published';

-- 2. Insert Models Linked to Brands
DO $$
DECLARE
  b_id UUID;
BEGIN
  -- Brand: abarth
  SELECT id INTO b_id FROM brands WHERE slug = 'abarth';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '124', '124', 'published', 1),
    (b_id, '500', '500', 'published', 2),
    (b_id, '595', '595', 'published', 3),
    (b_id, '695', '695', 'published', 4)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: acura
  SELECT id INTO b_id FROM brands WHERE slug = 'acura';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Nsx', 'nsx', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: aito
  SELECT id INTO b_id FROM brands WHERE slug = 'aito';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'M5', 'm5', 'published', 1),
    (b_id, 'M7', 'm7', 'published', 2),
    (b_id, 'M8', 'm8', 'published', 3),
    (b_id, 'M9', 'm9', 'published', 4)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: alfa-romeo
  SELECT id INTO b_id FROM brands WHERE slug = 'alfa-romeo';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Giulia', 'giulia', 'published', 1),
    (b_id, 'Giulietta', 'giulietta', 'published', 2),
    (b_id, 'Spider', 'spider', 'published', 3),
    (b_id, 'Stelvio', 'stelvio', 'published', 4),
    (b_id, 'Tonale', 'tonale', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: ashok-leyland
  SELECT id INTO b_id FROM brands WHERE slug = 'ashok-leyland';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Falcon', 'falcon', 'published', 1),
    (b_id, 'Oyster', 'oyster', 'published', 2),
    (b_id, 'Partner', 'partner', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: aston-martin
  SELECT id INTO b_id FROM brands WHERE slug = 'aston-martin';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Db11', 'db11', 'published', 1),
    (b_id, 'Db12', 'db12', 'published', 2),
    (b_id, 'Db9', 'db9', 'published', 3),
    (b_id, 'Dbs', 'dbs', 'published', 4),
    (b_id, 'Dbx', 'dbx', 'published', 5),
    (b_id, 'Rapide', 'rapide', 'published', 6),
    (b_id, 'V12 Speedster', 'v12-speedster', 'published', 7),
    (b_id, 'Valkyrie', 'valkyrie', 'published', 8),
    (b_id, 'Vanquish', 'vanquish', 'published', 9),
    (b_id, 'Vantage', 'vantage', 'published', 10),
    (b_id, 'Virage', 'virage', 'published', 11)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: audi
  SELECT id INTO b_id FROM brands WHERE slug = 'audi';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'A1', 'a1', 'published', 1),
    (b_id, 'A3', 'a3', 'published', 2),
    (b_id, 'A4', 'a4', 'published', 3),
    (b_id, 'A5', 'a5', 'published', 4),
    (b_id, 'A6', 'a6', 'published', 5),
    (b_id, 'A7', 'a7', 'published', 6),
    (b_id, 'A8', 'a8', 'published', 7),
    (b_id, 'E Tron', 'e-tron', 'published', 8),
    (b_id, 'E Tron Gt', 'e-tron-gt', 'published', 9),
    (b_id, 'Q2', 'q2', 'published', 10),
    (b_id, 'Q3', 'q3', 'published', 11),
    (b_id, 'Q5', 'q5', 'published', 12),
    (b_id, 'Q5 E Tron', 'q5-e-tron', 'published', 13),
    (b_id, 'Q6 E Tron', 'q6-e-tron', 'published', 14),
    (b_id, 'Q7', 'q7', 'published', 15),
    (b_id, 'Q8', 'q8', 'published', 16),
    (b_id, 'Q8 E Tron', 'q8-e-tron', 'published', 17),
    (b_id, 'R8', 'r8', 'published', 18),
    (b_id, 'Rs Q8', 'rs-q8', 'published', 19),
    (b_id, 'Rs6', 'rs6', 'published', 20),
    (b_id, 'S3', 's3', 'published', 21),
    (b_id, 'S5', 's5', 'published', 22),
    (b_id, 'S7', 's7', 'published', 23),
    (b_id, 'S8', 's8', 'published', 24),
    (b_id, 'Sq5', 'sq5', 'published', 25),
    (b_id, 'Sq7', 'sq7', 'published', 26),
    (b_id, 'Sq8', 'sq8', 'published', 27),
    (b_id, 'Tt', 'tt', 'published', 28)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: avatr
  SELECT id INTO b_id FROM brands WHERE slug = 'avatr';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '7', '7', 'published', 1),
    (b_id, '11', '11', 'published', 2),
    (b_id, '12', '12', 'published', 3),
    (b_id, '6', '6', 'published', 4)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: backdraft
  SELECT id INTO b_id FROM brands WHERE slug = 'backdraft';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Racing Cobra', 'racing-cobra', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: baic
  SELECT id INTO b_id FROM brands WHERE slug = 'baic';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Bj30', 'bj30', 'published', 1),
    (b_id, 'Bj40 C', 'bj40-c', 'published', 2),
    (b_id, 'Bj40 Pro', 'bj40-pro', 'published', 3),
    (b_id, 'Bj40 Se', 'bj40-se', 'published', 4),
    (b_id, 'Bj40l', 'bj40l', 'published', 5),
    (b_id, 'Bj60', 'bj60', 'published', 6),
    (b_id, 'Bj80', 'bj80', 'published', 7),
    (b_id, 'U5 Plus', 'u5-plus', 'published', 8),
    (b_id, 'X35', 'x35', 'published', 9),
    (b_id, 'X55', 'x55', 'published', 10)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: baw
  SELECT id INTO b_id FROM brands WHERE slug = 'baw';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '212 T01', '212-t01', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: bentley
  SELECT id INTO b_id FROM brands WHERE slug = 'bentley';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Arnage', 'arnage', 'published', 1),
    (b_id, 'Azure', 'azure', 'published', 2),
    (b_id, 'Bentayga', 'bentayga', 'published', 3),
    (b_id, 'Continental', 'continental', 'published', 4),
    (b_id, 'Flying Spur', 'flying-spur', 'published', 5),
    (b_id, 'Mulsanne', 'mulsanne', 'published', 6)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: bestune
  SELECT id INTO b_id FROM brands WHERE slug = 'bestune';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'B70', 'b70', 'published', 1),
    (b_id, 'T77', 't77', 'published', 2),
    (b_id, 'T99', 't99', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: bmw
  SELECT id INTO b_id FROM brands WHERE slug = 'bmw';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '1 Series', '1-series', 'published', 1),
    (b_id, '2 Series', '2-series', 'published', 2),
    (b_id, '3 Series', '3-series', 'published', 3),
    (b_id, '4 Series', '4-series', 'published', 4),
    (b_id, '5 Series', '5-series', 'published', 5),
    (b_id, '6 Series', '6-series', 'published', 6),
    (b_id, '7 Series', '7-series', 'published', 7),
    (b_id, '8 Series', '8-series', 'published', 8),
    (b_id, 'I3', 'i3', 'published', 9),
    (b_id, 'I4', 'i4', 'published', 10),
    (b_id, 'I5', 'i5', 'published', 11),
    (b_id, 'I7', 'i7', 'published', 12),
    (b_id, 'I8', 'i8', 'published', 13),
    (b_id, 'Ix', 'ix', 'published', 14),
    (b_id, 'Ix1', 'ix1', 'published', 15),
    (b_id, 'Ix3', 'ix3', 'published', 16),
    (b_id, 'M2', 'm2', 'published', 17),
    (b_id, 'M3', 'm3', 'published', 18),
    (b_id, 'M4', 'm4', 'published', 19),
    (b_id, 'M5', 'm5', 'published', 20),
    (b_id, 'M6', 'm6', 'published', 21),
    (b_id, 'M8', 'm8', 'published', 22),
    (b_id, 'X1', 'x1', 'published', 23),
    (b_id, 'X2', 'x2', 'published', 24),
    (b_id, 'X3', 'x3', 'published', 25),
    (b_id, 'X4', 'x4', 'published', 26),
    (b_id, 'X5', 'x5', 'published', 27),
    (b_id, 'X6', 'x6', 'published', 28),
    (b_id, 'X7', 'x7', 'published', 29),
    (b_id, 'Xm', 'xm', 'published', 30),
    (b_id, 'Z3', 'z3', 'published', 31),
    (b_id, 'Z4', 'z4', 'published', 32),
    (b_id, 'Z8', 'z8', 'published', 33)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: bmw-alpina
  SELECT id INTO b_id FROM brands WHERE slug = 'bmw-alpina';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Xb7', 'xb7', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: brilliance
  SELECT id INTO b_id FROM brands WHERE slug = 'brilliance';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'V6', 'v6', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: bufori
  SELECT id INTO b_id FROM brands WHERE slug = 'bufori';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Mk Iii', 'mk-iii', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: bugatti
  SELECT id INTO b_id FROM brands WHERE slug = 'bugatti';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Chiron', 'chiron', 'published', 1),
    (b_id, 'Divo', 'divo', 'published', 2),
    (b_id, 'Veyron', 'veyron', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: buick
  SELECT id INTO b_id FROM brands WHERE slug = 'buick';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Riviera', 'riviera', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: byd
  SELECT id INTO b_id FROM brands WHERE slug = 'byd';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Atto 3', 'atto-3', 'published', 1),
    (b_id, 'Destroyer 05', 'destroyer-05', 'published', 2),
    (b_id, 'E2', 'e2', 'published', 3),
    (b_id, 'Han', 'han', 'published', 4),
    (b_id, 'Leopard 5', 'leopard-5', 'published', 5),
    (b_id, 'Leopard 8', 'leopard-8', 'published', 6),
    (b_id, 'Leopard Titanium 3', 'leopard-titanium-3', 'published', 7),
    (b_id, 'Leopard Titanium 7', 'leopard-titanium-7', 'published', 8),
    (b_id, 'Qin', 'qin', 'published', 9),
    (b_id, 'Qin L', 'qin-l', 'published', 10),
    (b_id, 'Qin Plus', 'qin-plus', 'published', 11),
    (b_id, 'Seagull', 'seagull', 'published', 12),
    (b_id, 'Seal', 'seal', 'published', 13),
    (b_id, 'Seal 06', 'seal-06', 'published', 14),
    (b_id, 'Sealion 7', 'sealion-7', 'published', 15),
    (b_id, 'Shark 6', 'shark-6', 'published', 16),
    (b_id, 'Song L', 'song-l', 'published', 17),
    (b_id, 'Song Plus', 'song-plus', 'published', 18),
    (b_id, 'Tang', 'tang', 'published', 19)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: cadillac
  SELECT id INTO b_id FROM brands WHERE slug = 'cadillac';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Ats', 'ats', 'published', 1),
    (b_id, 'Ct4', 'ct4', 'published', 2),
    (b_id, 'Ct5', 'ct5', 'published', 3),
    (b_id, 'Ct6', 'ct6', 'published', 4),
    (b_id, 'Catera', 'catera', 'published', 5),
    (b_id, 'Dtsde Ville', 'dtsde-ville', 'published', 6),
    (b_id, 'Escalade', 'escalade', 'published', 7),
    (b_id, 'Lyriq', 'lyriq', 'published', 8),
    (b_id, 'Srx', 'srx', 'published', 9),
    (b_id, 'Stsseville', 'stsseville', 'published', 10),
    (b_id, 'Xt4', 'xt4', 'published', 11),
    (b_id, 'Xt5', 'xt5', 'published', 12),
    (b_id, 'Xt6', 'xt6', 'published', 13),
    (b_id, 'Xlr eldorado', 'xlr eldorado', 'published', 14),
    (b_id, 'Xts', 'xts', 'published', 15)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: can-am
  SELECT id INTO b_id FROM brands WHERE slug = 'can-am';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Maverick', 'maverick', 'published', 1),
    (b_id, 'Maverick X3', 'maverick-x3', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: caterham
  SELECT id INTO b_id FROM brands WHERE slug = 'caterham';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Seven 360', 'seven-360', 'published', 1),
    (b_id, 'Seven 420', 'seven-420', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: changan
  SELECT id INTO b_id FROM brands WHERE slug = 'changan';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Alsvin', 'alsvin', 'published', 1),
    (b_id, 'Cs35 Plus', 'cs35-plus', 'published', 2),
    (b_id, 'Cs55 Plus', 'cs55-plus', 'published', 3),
    (b_id, 'Cs75', 'cs75', 'published', 4),
    (b_id, 'Cs75 Plus', 'cs75-plus', 'published', 5),
    (b_id, 'Cs85', 'cs85', 'published', 6),
    (b_id, 'Cs95', 'cs95', 'published', 7),
    (b_id, 'Deepal G318', 'deepal-g318', 'published', 8),
    (b_id, 'Eado', 'eado', 'published', 9),
    (b_id, 'Eado Plus', 'eado-plus', 'published', 10),
    (b_id, 'Uni K', 'uni-k', 'published', 11),
    (b_id, 'Uni T', 'uni-t', 'published', 12),
    (b_id, 'Uni V', 'uni-v', 'published', 13),
    (b_id, 'Uni Z', 'uni-z', 'published', 14),
    (b_id, 'X5 Plus', 'x5-plus', 'published', 15)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: chery
  SELECT id INTO b_id FROM brands WHERE slug = 'chery';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Arrizo 5', 'arrizo-5', 'published', 1),
    (b_id, 'Arrizo 6', 'arrizo-6', 'published', 2),
    (b_id, 'Arrizo 8', 'arrizo-8', 'published', 3),
    (b_id, 'Icar', 'icar', 'published', 4),
    (b_id, 'Tiggo 4', 'tiggo-4', 'published', 5),
    (b_id, 'Tiggo 7', 'tiggo-7', 'published', 6),
    (b_id, 'Tiggo 8', 'tiggo-8', 'published', 7),
    (b_id, 'Tiggo 8 Pro', 'tiggo-8-pro', 'published', 8),
    (b_id, 'Tiggo 8 Pro Max', 'tiggo-8-pro-max', 'published', 9),
    (b_id, 'Tiggo 9', 'tiggo-9', 'published', 10),
    (b_id, 'Tiggo7 Pro', 'tiggo7-pro', 'published', 11),
    (b_id, 'Tiggo7 Pro Max', 'tiggo7-pro-max', 'published', 12)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: chevrolet
  SELECT id INTO b_id FROM brands WHERE slug = 'chevrolet';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Astro', 'astro', 'published', 1),
    (b_id, 'Aveo', 'aveo', 'published', 2),
    (b_id, 'Blazer', 'blazer', 'published', 3),
    (b_id, 'Camaro', 'camaro', 'published', 4),
    (b_id, 'Captiva', 'captiva', 'published', 5),
    (b_id, 'Chevelle', 'chevelle', 'published', 6),
    (b_id, 'Colorado', 'colorado', 'published', 7),
    (b_id, 'Corvette', 'corvette', 'published', 8),
    (b_id, 'Cruze', 'cruze', 'published', 9),
    (b_id, 'Equinox', 'equinox', 'published', 10),
    (b_id, 'Express', 'express', 'published', 11),
    (b_id, 'Groove', 'groove', 'published', 12),
    (b_id, 'Impala', 'impala', 'published', 13),
    (b_id, 'Lumina', 'lumina', 'published', 14),
    (b_id, 'Malibu', 'malibu', 'published', 15),
    (b_id, 'Menlo', 'menlo', 'published', 16),
    (b_id, 'Sonic', 'sonic', 'published', 17),
    (b_id, 'Spark', 'spark', 'published', 18),
    (b_id, 'Suburban', 'suburban', 'published', 19),
    (b_id, 'Tahoe', 'tahoe', 'published', 20),
    (b_id, 'Trailblazer', 'trailblazer', 'published', 21),
    (b_id, 'Traverse', 'traverse', 'published', 22),
    (b_id, 'Trax', 'trax', 'published', 23)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: chrysler
  SELECT id INTO b_id FROM brands WHERE slug = 'chrysler';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '200', '200', 'published', 1),
    (b_id, '200cev200', '200cev200', 'published', 2),
    (b_id, '300', '300', 'published', 3),
    (b_id, '300c', '300c', 'published', 4),
    (b_id, '300s', '300s', 'published', 5),
    (b_id, 'Crossfire', 'crossfire', 'published', 6),
    (b_id, 'Pacifica', 'pacifica', 'published', 7),
    (b_id, 'Prowler', 'prowler', 'published', 8),
    (b_id, 'Pt Cruiser', 'pt-cruiser', 'published', 9),
    (b_id, 'Sebring', 'sebring', 'published', 10),
    (b_id, 'Voyagercaravan', 'voyagercaravan', 'published', 11)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: citroen
  SELECT id INTO b_id FROM brands WHERE slug = 'citroen';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'C3', 'c3', 'published', 1),
    (b_id, 'C4', 'c4', 'published', 2),
    (b_id, 'C5', 'c5', 'published', 3),
    (b_id, 'Ds 3', 'ds-3', 'published', 4),
    (b_id, 'Jumpy', 'jumpy', 'published', 5),
    (b_id, 'Spacetourer', 'spacetourer', 'published', 6)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: cmc
  SELECT id INTO b_id FROM brands WHERE slug = 'cmc';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Veryca', 'veryca', 'published', 1),
    (b_id, 'Z7', 'z7', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: daihatsu
  SELECT id INTO b_id FROM brands WHERE slug = 'daihatsu';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Gran Max', 'gran-max', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: denza
  SELECT id INTO b_id FROM brands WHERE slug = 'denza';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'D9', 'd9', 'published', 1),
    (b_id, 'N9', 'n9', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: dfsk
  SELECT id INTO b_id FROM brands WHERE slug = 'dfsk';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Fengon 580', 'fengon-580', 'published', 1),
    (b_id, 'Fengon Ix5', 'fengon-ix5', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: dodge
  SELECT id INTO b_id FROM brands WHERE slug = 'dodge';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Caravan', 'caravan', 'published', 1),
    (b_id, 'Challenger', 'challenger', 'published', 2),
    (b_id, 'Charger', 'charger', 'published', 3),
    (b_id, 'Dart', 'dart', 'published', 4),
    (b_id, 'Durango', 'durango', 'published', 5),
    (b_id, 'Neon', 'neon', 'published', 6),
    (b_id, 'Nitro', 'nitro', 'published', 7)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: dongfeng
  SELECT id INTO b_id FROM brands WHERE slug = 'dongfeng';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '7', '7', 'published', 1),
    (b_id, 'Ax7', 'ax7', 'published', 2),
    (b_id, 'Huge', 'huge', 'published', 3),
    (b_id, 'Mage', 'mage', 'published', 4),
    (b_id, 'Rich 6', 'rich-6', 'published', 5),
    (b_id, 'Rich 7', 'rich-7', 'published', 6),
    (b_id, 'Shine', 'shine', 'published', 7),
    (b_id, 'Z9', 'z9', 'published', 8)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: exeed
  SELECT id INTO b_id FROM brands WHERE slug = 'exeed';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Elantix Et', 'elantix-et', 'published', 1),
    (b_id, 'Lx', 'lx', 'published', 2),
    (b_id, 'Rx', 'rx', 'published', 3),
    (b_id, 'Txl', 'txl', 'published', 4),
    (b_id, 'Vx', 'vx', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: fengon
  SELECT id INTO b_id FROM brands WHERE slug = 'fengon';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '500', '500', 'published', 1),
    (b_id, '600', '600', 'published', 2),
    (b_id, 'Ix7', 'ix7', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: ferrari
  SELECT id INTO b_id FROM brands WHERE slug = 'ferrari';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '12cilindri', '12cilindri', 'published', 1),
    (b_id, '296 Gtb', '296-gtb', 'published', 2),
    (b_id, '296 Gts', '296-gts', 'published', 3),
    (b_id, '348', '348', 'published', 4),
    (b_id, '355', '355', 'published', 5),
    (b_id, '360', '360', 'published', 6),
    (b_id, '412', '412', 'published', 7),
    (b_id, '458', '458', 'published', 8),
    (b_id, '458 Italia', '458-italia', 'published', 9),
    (b_id, '458 Speciale', '458-speciale', 'published', 10),
    (b_id, '458 Spider', '458-spider', 'published', 11),
    (b_id, '488', '488', 'published', 12),
    (b_id, '488 Gtb', '488-gtb', 'published', 13),
    (b_id, '488 Pista', '488-pista', 'published', 14),
    (b_id, '488 Pista Spider', '488-pista-spider', 'published', 15),
    (b_id, '488 Spider', '488-spider', 'published', 16),
    (b_id, '512', '512', 'published', 17),
    (b_id, '550', '550', 'published', 18),
    (b_id, '575m Maranello', '575m-maranello', 'published', 19),
    (b_id, '599', '599', 'published', 20),
    (b_id, '599 Gto', '599-gto', 'published', 21),
    (b_id, '599gtb', '599gtb', 'published', 22),
    (b_id, '612 Scaglietti', '612-scaglietti', 'published', 23),
    (b_id, '812', '812', 'published', 24),
    (b_id, '812 Gts', '812-gts', 'published', 25),
    (b_id, '812 Superfast', '812-superfast', 'published', 26),
    (b_id, 'California', 'california', 'published', 27),
    (b_id, 'California T', 'california-t', 'published', 28),
    (b_id, 'F12', 'f12', 'published', 29),
    (b_id, 'F12 Berlinetta', 'f12-berlinetta', 'published', 30),
    (b_id, 'F430', 'f430', 'published', 31),
    (b_id, 'F8 Spider', 'f8-spider', 'published', 32),
    (b_id, 'F8 Tributo', 'f8-tributo', 'published', 33),
    (b_id, 'Ferrari 456', 'ferrari-456', 'published', 34),
    (b_id, 'Ferrari Enzo', 'ferrari-enzo', 'published', 35),
    (b_id, 'Ff', 'ff', 'published', 36),
    (b_id, 'Gtc4 Lusso', 'gtc4-lusso', 'published', 37),
    (b_id, 'Gtc4 Lusso T', 'gtc4-lusso-t', 'published', 38),
    (b_id, 'La Ferrari Aperta', 'la-ferrari-aperta', 'published', 39),
    (b_id, 'Monza', 'monza', 'published', 40),
    (b_id, 'Portofino', 'portofino', 'published', 41),
    (b_id, 'Purosangue', 'purosangue', 'published', 42),
    (b_id, 'Roma', 'roma', 'published', 43),
    (b_id, 'Sf90 Spider', 'sf90-spider', 'published', 44),
    (b_id, 'Sf90 Stradale', 'sf90-stradale', 'published', 45),
    (b_id, 'Testarossa', 'testarossa', 'published', 46)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: fiat
  SELECT id INTO b_id FROM brands WHERE slug = 'fiat';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '124 Spider', '124-spider', 'published', 1),
    (b_id, '500', '500', 'published', 2),
    (b_id, '500l', '500l', 'published', 3),
    (b_id, '500x', '500x', 'published', 4),
    (b_id, 'Ducato', 'ducato', 'published', 5),
    (b_id, 'Fiorino', 'fiorino', 'published', 6)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: force
  SELECT id INTO b_id FROM brands WHERE slug = 'force';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Urbania', 'urbania', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: ford
  SELECT id INTO b_id FROM brands WHERE slug = 'ford';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Bronco', 'bronco', 'published', 1),
    (b_id, 'Ecosport', 'ecosport', 'published', 2),
    (b_id, 'Edge', 'edge', 'published', 3),
    (b_id, 'Escape', 'escape', 'published', 4),
    (b_id, 'Escort', 'escort', 'published', 5),
    (b_id, 'Everest', 'everest', 'published', 6),
    (b_id, 'Expedition', 'expedition', 'published', 7),
    (b_id, 'Explorer', 'explorer', 'published', 8),
    (b_id, 'Fiesta', 'fiesta', 'published', 9),
    (b_id, 'Figo', 'figo', 'published', 10),
    (b_id, 'Flex', 'flex', 'published', 11),
    (b_id, 'Focus', 'focus', 'published', 12),
    (b_id, 'Fusion', 'fusion', 'published', 13),
    (b_id, 'Gt', 'gt', 'published', 14),
    (b_id, 'Mustang', 'mustang', 'published', 15),
    (b_id, 'Mustang Mach E', 'mustang-mach-e', 'published', 16),
    (b_id, 'Ranger', 'ranger', 'published', 17),
    (b_id, 'Taurus', 'taurus', 'published', 18),
    (b_id, 'Territory', 'territory', 'published', 19),
    (b_id, 'Thunderbird', 'thunderbird', 'published', 20),
    (b_id, 'Tourneo', 'tourneo', 'published', 21),
    (b_id, 'Transit', 'transit', 'published', 22)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: forthing
  SELECT id INTO b_id FROM brands WHERE slug = 'forthing';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Friday', 'friday', 'published', 1),
    (b_id, 'S7', 's7', 'published', 2),
    (b_id, 'T5', 't5', 'published', 3),
    (b_id, 'T5 Evo', 't5-evo', 'published', 4),
    (b_id, 'U Tour', 'u-tour', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: foton
  SELECT id INTO b_id FROM brands WHERE slug = 'foton';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Cargo Van', 'cargo-van', 'published', 1),
    (b_id, 'Tunland', 'tunland', 'published', 2),
    (b_id, 'View', 'view', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: fuso
  SELECT id INTO b_id FROM brands WHERE slug = 'fuso';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Ba', 'ba', 'published', 1),
    (b_id, 'Fj', 'fj', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: gac
  SELECT id INTO b_id FROM brands WHERE slug = 'gac';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Emkoo', 'emkoo', 'published', 1),
    (b_id, 'Empow', 'empow', 'published', 2),
    (b_id, 'Emzoom', 'emzoom', 'published', 3),
    (b_id, 'Ga4', 'ga4', 'published', 4),
    (b_id, 'Ga8', 'ga8', 'published', 5),
    (b_id, 'Gn6', 'gn6', 'published', 6),
    (b_id, 'Gn8', 'gn8', 'published', 7),
    (b_id, 'Gs3', 'gs3', 'published', 8),
    (b_id, 'Gs4', 'gs4', 'published', 9),
    (b_id, 'Gs8', 'gs8', 'published', 10),
    (b_id, 'M8', 'm8', 'published', 11),
    (b_id, 'S7', 's7', 'published', 12)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: geely
  SELECT id INTO b_id FROM brands WHERE slug = 'geely';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Cityray', 'cityray', 'published', 1),
    (b_id, 'Coolray', 'coolray', 'published', 2),
    (b_id, 'Emgrand', 'emgrand', 'published', 3),
    (b_id, 'Emgrand X7 Sport', 'emgrand-x7-sport', 'published', 4),
    (b_id, 'Gc6', 'gc6', 'published', 5),
    (b_id, 'Geometry C', 'geometry-c', 'published', 6),
    (b_id, 'Gx3 Pro', 'gx3-pro', 'published', 7),
    (b_id, 'Monjaro', 'monjaro', 'published', 8),
    (b_id, 'Okvango', 'okvango', 'published', 9),
    (b_id, 'Preface', 'preface', 'published', 10),
    (b_id, 'Starray', 'starray', 'published', 11),
    (b_id, 'Tugella', 'tugella', 'published', 12)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: genesis
  SELECT id INTO b_id FROM brands WHERE slug = 'genesis';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'G70', 'g70', 'published', 1),
    (b_id, 'G80', 'g80', 'published', 2),
    (b_id, 'G90', 'g90', 'published', 3),
    (b_id, 'Gv70', 'gv70', 'published', 4),
    (b_id, 'Gv80', 'gv80', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: gmc
  SELECT id INTO b_id FROM brands WHERE slug = 'gmc';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Acadia', 'acadia', 'published', 1),
    (b_id, 'Canyon', 'canyon', 'published', 2),
    (b_id, 'Hummer', 'hummer', 'published', 3),
    (b_id, 'Pickup', 'pickup', 'published', 4),
    (b_id, 'Savana', 'savana', 'published', 5),
    (b_id, 'Sierra', 'sierra', 'published', 6),
    (b_id, 'Suburban', 'suburban', 'published', 7),
    (b_id, 'Terrain', 'terrain', 'published', 8),
    (b_id, 'Yukon', 'yukon', 'published', 9)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: gwm
  SELECT id INTO b_id FROM brands WHERE slug = 'gwm';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Poer', 'poer', 'published', 1),
    (b_id, 'Wingle 5', 'wingle-5', 'published', 2),
    (b_id, 'Wingle 7', 'wingle-7', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: haval
  SELECT id INTO b_id FROM brands WHERE slug = 'haval';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'H6', 'h6', 'published', 1),
    (b_id, 'H7', 'h7', 'published', 2),
    (b_id, 'H9', 'h9', 'published', 3),
    (b_id, 'Jolion', 'jolion', 'published', 4)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: hino
  SELECT id INTO b_id FROM brands WHERE slug = 'hino';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '300', '300', 'published', 1),
    (b_id, '500', '500', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: honda
  SELECT id INTO b_id FROM brands WHERE slug = 'honda';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Accord', 'accord', 'published', 1),
    (b_id, 'City', 'city', 'published', 2),
    (b_id, 'Civic', 'civic', 'published', 3),
    (b_id, 'Cr V', 'cr-v', 'published', 4),
    (b_id, 'Crider', 'crider', 'published', 5),
    (b_id, 'Fit', 'fit', 'published', 6),
    (b_id, 'Hr V', 'hr-v', 'published', 7),
    (b_id, 'Jazz', 'jazz', 'published', 8),
    (b_id, 'M Nv', 'm-nv', 'published', 9),
    (b_id, 'Odyssey', 'odyssey', 'published', 10),
    (b_id, 'Odyssey J', 'odyssey-j', 'published', 11),
    (b_id, 'Passport', 'passport', 'published', 12),
    (b_id, 'Pilot', 'pilot', 'published', 13),
    (b_id, 'S2000', 's2000', 'published', 14),
    (b_id, 'Zr V', 'zr-v', 'published', 15)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: hongqi
  SELECT id INTO b_id FROM brands WHERE slug = 'hongqi';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'E Hs9', 'e-hs9', 'published', 1),
    (b_id, 'H5', 'h5', 'published', 2),
    (b_id, 'H7', 'h7', 'published', 3),
    (b_id, 'H9', 'h9', 'published', 4),
    (b_id, 'Hs5', 'hs5', 'published', 5),
    (b_id, 'Hs7', 'hs7', 'published', 6)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: hummer
  SELECT id INTO b_id FROM brands WHERE slug = 'hummer';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'H1', 'h1', 'published', 1),
    (b_id, 'H2', 'h2', 'published', 2),
    (b_id, 'H3', 'h3', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: hyundai
  SELECT id INTO b_id FROM brands WHERE slug = 'hyundai';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Accent', 'accent', 'published', 1),
    (b_id, 'Avante', 'avante', 'published', 2),
    (b_id, 'Azera', 'azera', 'published', 3),
    (b_id, 'Centennial', 'centennial', 'published', 4),
    (b_id, 'Creta', 'creta', 'published', 5),
    (b_id, 'Elantra', 'elantra', 'published', 6),
    (b_id, 'Genesis', 'genesis', 'published', 7),
    (b_id, 'Grand I10', 'grand-i10', 'published', 8),
    (b_id, 'Grand Santa Fe', 'grand-santa-fe', 'published', 9),
    (b_id, 'Grandeur', 'grandeur', 'published', 10),
    (b_id, 'H1', 'h1', 'published', 11),
    (b_id, 'I10', 'i10', 'published', 12),
    (b_id, 'I20', 'i20', 'published', 13),
    (b_id, 'I30', 'i30', 'published', 14),
    (b_id, 'I40', 'i40', 'published', 15),
    (b_id, 'Ioniq', 'ioniq', 'published', 16),
    (b_id, 'Kona', 'kona', 'published', 17),
    (b_id, 'Palisade', 'palisade', 'published', 18),
    (b_id, 'Porter', 'porter', 'published', 19),
    (b_id, 'Santa Cruz', 'santa-cruz', 'published', 20),
    (b_id, 'Santa Fe', 'santa-fe', 'published', 21),
    (b_id, 'Sonata', 'sonata', 'published', 22),
    (b_id, 'Staria', 'staria', 'published', 23),
    (b_id, 'Tucson', 'tucson', 'published', 24),
    (b_id, 'Veloster', 'veloster', 'published', 25)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: ineos
  SELECT id INTO b_id FROM brands WHERE slug = 'ineos';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Grenadier', 'grenadier', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: infiniti
  SELECT id INTO b_id FROM brands WHERE slug = 'infiniti';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Ex35', 'ex35', 'published', 1),
    (b_id, 'Fx45fx35', 'fx45fx35', 'published', 2),
    (b_id, 'Fx50', 'fx50', 'published', 3),
    (b_id, 'G25', 'g25', 'published', 4),
    (b_id, 'G35', 'g35', 'published', 5),
    (b_id, 'G37', 'g37', 'published', 6),
    (b_id, 'Jxseries', 'jxseries', 'published', 7),
    (b_id, 'Q30', 'q30', 'published', 8),
    (b_id, 'Q50', 'q50', 'published', 9),
    (b_id, 'Q60', 'q60', 'published', 10),
    (b_id, 'Q70', 'q70', 'published', 11),
    (b_id, 'Qx50', 'qx50', 'published', 12),
    (b_id, 'Qx55', 'qx55', 'published', 13),
    (b_id, 'Qx56', 'qx56', 'published', 14),
    (b_id, 'Qx60', 'qx60', 'published', 15),
    (b_id, 'Qx70', 'qx70', 'published', 16),
    (b_id, 'Qx80', 'qx80', 'published', 17)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: isuzu
  SELECT id INTO b_id FROM brands WHERE slug = 'isuzu';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'D Max', 'd-max', 'published', 1),
    (b_id, 'F Series', 'f-series', 'published', 2),
    (b_id, 'N Series', 'n-series', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: jac
  SELECT id INTO b_id FROM brands WHERE slug = 'jac';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'J7', 'j7', 'published', 1),
    (b_id, 'Js3', 'js3', 'published', 2),
    (b_id, 'Js4', 'js4', 'published', 3),
    (b_id, 'Js6', 'js6', 'published', 4),
    (b_id, 'M4', 'm4', 'published', 5),
    (b_id, 'S3', 's3', 'published', 6),
    (b_id, 'S3 Plus', 's3-plus', 'published', 7)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: jaecoo
  SELECT id INTO b_id FROM brands WHERE slug = 'jaecoo';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'J5', 'j5', 'published', 1),
    (b_id, 'J7', 'j7', 'published', 2),
    (b_id, 'J7 Shs', 'j7-shs', 'published', 3),
    (b_id, 'J8', 'j8', 'published', 4)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: jaguar
  SELECT id INTO b_id FROM brands WHERE slug = 'jaguar';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'E Pace', 'e-pace', 'published', 1),
    (b_id, 'E Type', 'e-type', 'published', 2),
    (b_id, 'F Pace', 'f-pace', 'published', 3),
    (b_id, 'F Type', 'f-type', 'published', 4),
    (b_id, 'I Pace', 'i-pace', 'published', 5),
    (b_id, 'X Type', 'x-type', 'published', 6),
    (b_id, 'Xe', 'xe', 'published', 7),
    (b_id, 'Xf', 'xf', 'published', 8),
    (b_id, 'Xj', 'xj', 'published', 9),
    (b_id, 'Xjs', 'xjs', 'published', 10),
    (b_id, 'Xk', 'xk', 'published', 11),
    (b_id, 'Xk8', 'xk8', 'published', 12),
    (b_id, 'Xkr', 'xkr', 'published', 13)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: jeep
  SELECT id INTO b_id FROM brands WHERE slug = 'jeep';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Cherokee', 'cherokee', 'published', 1),
    (b_id, 'Compass', 'compass', 'published', 2),
    (b_id, 'Gladiator', 'gladiator', 'published', 3),
    (b_id, 'Grand Cherokee', 'grand-cherokee', 'published', 4),
    (b_id, 'Grand Cherokee L', 'grand-cherokee-l', 'published', 5),
    (b_id, 'Grand Wagoneer', 'grand-wagoneer', 'published', 6),
    (b_id, 'Liberty', 'liberty', 'published', 7),
    (b_id, 'Renegade', 'renegade', 'published', 8),
    (b_id, 'Wrangler', 'wrangler', 'published', 9)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: jetour
  SELECT id INTO b_id FROM brands WHERE slug = 'jetour';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Dashing', 'dashing', 'published', 1),
    (b_id, 'G700', 'g700', 'published', 2),
    (b_id, 'T1', 't1', 'published', 3),
    (b_id, 'T2', 't2', 'published', 4),
    (b_id, 'T2 I Dm', 't2-i-dm', 'published', 5),
    (b_id, 'X50', 'x50', 'published', 6),
    (b_id, 'X70', 'x70', 'published', 7),
    (b_id, 'X70 Fl', 'x70-fl', 'published', 8),
    (b_id, 'X70 Plus', 'x70-plus', 'published', 9),
    (b_id, 'X70 S', 'x70-s', 'published', 10),
    (b_id, 'X90', 'x90', 'published', 11),
    (b_id, 'X90 Plus', 'x90-plus', 'published', 12)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: kaiyi
  SELECT id INTO b_id FROM brands WHERE slug = 'kaiyi';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'X3', 'x3', 'published', 1),
    (b_id, 'X3 Pro', 'x3-pro', 'published', 2),
    (b_id, 'X7', 'x7', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: kia
  SELECT id INTO b_id FROM brands WHERE slug = 'kia';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Cadenza', 'cadenza', 'published', 1),
    (b_id, 'Carens', 'carens', 'published', 2),
    (b_id, 'Carnival', 'carnival', 'published', 3),
    (b_id, 'Cerato', 'cerato', 'published', 4),
    (b_id, 'Forte', 'forte', 'published', 5),
    (b_id, 'K3', 'k3', 'published', 6),
    (b_id, 'K5', 'k5', 'published', 7),
    (b_id, 'K8', 'k8', 'published', 8),
    (b_id, 'K900', 'k900', 'published', 9),
    (b_id, 'Kx1', 'kx1', 'published', 10),
    (b_id, 'Morning', 'morning', 'published', 11),
    (b_id, 'Niro', 'niro', 'published', 12),
    (b_id, 'Optima', 'optima', 'published', 13),
    (b_id, 'Pegas', 'pegas', 'published', 14),
    (b_id, 'Picanto', 'picanto', 'published', 15),
    (b_id, 'Rio', 'rio', 'published', 16),
    (b_id, 'Sedona', 'sedona', 'published', 17),
    (b_id, 'Seltos', 'seltos', 'published', 18),
    (b_id, 'Sonet', 'sonet', 'published', 19),
    (b_id, 'Sorento', 'sorento', 'published', 20),
    (b_id, 'Soul', 'soul', 'published', 21),
    (b_id, 'Sportage', 'sportage', 'published', 22),
    (b_id, 'Stinger', 'stinger', 'published', 23),
    (b_id, 'Tasman', 'tasman', 'published', 24),
    (b_id, 'Telluride', 'telluride', 'published', 25)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: king-long
  SELECT id INTO b_id FROM brands WHERE slug = 'king-long';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'China Mini Van', 'china-mini-van', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: koenigsegg
  SELECT id INTO b_id FROM brands WHERE slug = 'koenigsegg';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Jesko', 'jesko', 'published', 1),
    (b_id, 'Regera', 'regera', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: ktm
  SELECT id INTO b_id FROM brands WHERE slug = 'ktm';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'X Bow', 'x-bow', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: lamborghini
  SELECT id INTO b_id FROM brands WHERE slug = 'lamborghini';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Aventador', 'aventador', 'published', 1),
    (b_id, 'Aventador S', 'aventador-s', 'published', 2),
    (b_id, 'Countach', 'countach', 'published', 3),
    (b_id, 'Diablo', 'diablo', 'published', 4),
    (b_id, 'Gallardo', 'gallardo', 'published', 5),
    (b_id, 'Huracan', 'huracan', 'published', 6),
    (b_id, 'Murcielago', 'murcielago', 'published', 7),
    (b_id, 'Revuelto', 'revuelto', 'published', 8),
    (b_id, 'Sian', 'sian', 'published', 9),
    (b_id, 'Urus', 'urus', 'published', 10)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: lancia
  SELECT id INTO b_id FROM brands WHERE slug = 'lancia';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Delta', 'delta', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: land-rover
  SELECT id INTO b_id FROM brands WHERE slug = 'land-rover';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Defender', 'defender', 'published', 1),
    (b_id, 'Discovery', 'discovery', 'published', 2),
    (b_id, 'Discovery Sport', 'discovery-sport', 'published', 3),
    (b_id, 'Lr2', 'lr2', 'published', 4),
    (b_id, 'Lr3', 'lr3', 'published', 5),
    (b_id, 'Lr4', 'lr4', 'published', 6),
    (b_id, 'Range Rover', 'range-rover', 'published', 7),
    (b_id, 'Range Rover Evoque', 'range-rover-evoque', 'published', 8),
    (b_id, 'Range Rover Sport', 'range-rover-sport', 'published', 9),
    (b_id, 'Range Rover Velar', 'range-rover-velar', 'published', 10)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: leapmotor
  SELECT id INTO b_id FROM brands WHERE slug = 'leapmotor';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'C10', 'c10', 'published', 1),
    (b_id, 'C16', 'c16', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: lexus
  SELECT id INTO b_id FROM brands WHERE slug = 'lexus';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Ct Series', 'ct-series', 'published', 1),
    (b_id, 'Es Series', 'es-series', 'published', 2),
    (b_id, 'Gs Series', 'gs-series', 'published', 3),
    (b_id, 'Is Series', 'is-series', 'published', 4),
    (b_id, 'Lbx', 'lbx', 'published', 5),
    (b_id, 'Ls Series', 'ls-series', 'published', 6),
    (b_id, 'Lx Series', 'lx-series', 'published', 7),
    (b_id, 'Nx Series', 'nx-series', 'published', 8),
    (b_id, 'Rx Series', 'rx-series', 'published', 9),
    (b_id, 'Sc Series', 'sc-series', 'published', 10),
    (b_id, 'Ux Series', 'ux-series', 'published', 11)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: li-auto
  SELECT id INTO b_id FROM brands WHERE slug = 'li-auto';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'L6', 'l6', 'published', 1),
    (b_id, 'L7', 'l7', 'published', 2),
    (b_id, 'L8', 'l8', 'published', 3),
    (b_id, 'L9', 'l9', 'published', 4),
    (b_id, 'Mega', 'mega', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: lincoln
  SELECT id INTO b_id FROM brands WHERE slug = 'lincoln';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Aviator', 'aviator', 'published', 1),
    (b_id, 'Continental', 'continental', 'published', 2),
    (b_id, 'Corsair', 'corsair', 'published', 3),
    (b_id, 'Mkc', 'mkc', 'published', 4),
    (b_id, 'Mks', 'mks', 'published', 5),
    (b_id, 'Mkx', 'mkx', 'published', 6),
    (b_id, 'Mkz', 'mkz', 'published', 7),
    (b_id, 'Nautilus', 'nautilus', 'published', 8),
    (b_id, 'Navigator', 'navigator', 'published', 9),
    (b_id, 'Town Car', 'town-car', 'published', 10)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: livan
  SELECT id INTO b_id FROM brands WHERE slug = 'livan';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'X6 Pro', 'x6-pro', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: lotus
  SELECT id INTO b_id FROM brands WHERE slug = 'lotus';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Elan', 'elan', 'published', 1),
    (b_id, 'Eletre', 'eletre', 'published', 2),
    (b_id, 'Elise', 'elise', 'published', 3),
    (b_id, 'Emira', 'emira', 'published', 4),
    (b_id, 'Evora', 'evora', 'published', 5),
    (b_id, 'Exige', 'exige', 'published', 6)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: lucid
  SELECT id INTO b_id FROM brands WHERE slug = 'lucid';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Air', 'air', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: luxeed
  SELECT id INTO b_id FROM brands WHERE slug = 'luxeed';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'R7', 'r7', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: lynk-co
  SELECT id INTO b_id FROM brands WHERE slug = 'lynk-co';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '9', '9', 'published', 1),
    (b_id, '900', '900', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: maextro
  SELECT id INTO b_id FROM brands WHERE slug = 'maextro';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'S800', 's800', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mahindra
  SELECT id INTO b_id FROM brands WHERE slug = 'mahindra';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Scorpio Pickup', 'scorpio-pickup', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: maserati
  SELECT id INTO b_id FROM brands WHERE slug = 'maserati';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Ghibli', 'ghibli', 'published', 1),
    (b_id, 'Grancabrio', 'grancabrio', 'published', 2),
    (b_id, 'Granturismo', 'granturismo', 'published', 3),
    (b_id, 'Grecale', 'grecale', 'published', 4),
    (b_id, 'Levante', 'levante', 'published', 5),
    (b_id, 'Mc20', 'mc20', 'published', 6),
    (b_id, 'Quattroporte', 'quattroporte', 'published', 7)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: maxus
  SELECT id INTO b_id FROM brands WHERE slug = 'maxus';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'G50', 'g50', 'published', 1),
    (b_id, 'T60', 't60', 'published', 2),
    (b_id, 'V80', 'v80', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: maybach
  SELECT id INTO b_id FROM brands WHERE slug = 'maybach';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '57', '57', 'published', 1),
    (b_id, '62', '62', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mazda
  SELECT id INTO b_id FROM brands WHERE slug = 'mazda';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '2', '2', 'published', 1),
    (b_id, '3', '3', 'published', 2),
    (b_id, '3 Hatchback', '3-hatchback', 'published', 3),
    (b_id, '6', '6', 'published', 4),
    (b_id, 'Bt 50', 'bt-50', 'published', 5),
    (b_id, 'Cx 3', 'cx-3', 'published', 6),
    (b_id, 'Cx 30', 'cx-30', 'published', 7),
    (b_id, 'Cx 5', 'cx-5', 'published', 8),
    (b_id, 'Cx 9', 'cx-9', 'published', 9),
    (b_id, 'Cx 90', 'cx-90', 'published', 10),
    (b_id, 'Mx5', 'mx5', 'published', 11),
    (b_id, 'Rx 7', 'rx-7', 'published', 12)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mclaren
  SELECT id INTO b_id FROM brands WHERE slug = 'mclaren';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '540c', '540c', 'published', 1),
    (b_id, '570s', '570s', 'published', 2),
    (b_id, '600lt', '600lt', 'published', 3),
    (b_id, '620r', '620r', 'published', 4),
    (b_id, '650s', '650s', 'published', 5),
    (b_id, '720s', '720s', 'published', 6),
    (b_id, '750s', '750s', 'published', 7),
    (b_id, '765lt', '765lt', 'published', 8),
    (b_id, 'Artura', 'artura', 'published', 9),
    (b_id, 'Elva', 'elva', 'published', 10),
    (b_id, 'Gt', 'gt', 'published', 11),
    (b_id, 'Mp412c', 'mp412c', 'published', 12),
    (b_id, 'P1', 'p1', 'published', 13),
    (b_id, 'Senna', 'senna', 'published', 14),
    (b_id, 'Slr', 'slr', 'published', 15),
    (b_id, 'Speedtail', 'speedtail', 'published', 16)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mercedes-benz
  SELECT id INTO b_id FROM brands WHERE slug = 'mercedes-benz';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '190', '190', 'published', 1),
    (b_id, '240260280', '240260280', 'published', 2),
    (b_id, 'A Class', 'a-class', 'published', 3),
    (b_id, 'Amg', 'amg', 'published', 4),
    (b_id, 'B Class', 'b-class', 'published', 5),
    (b_id, 'C Class', 'c-class', 'published', 6),
    (b_id, 'Cl Class', 'cl-class', 'published', 7),
    (b_id, 'Cle Class', 'cle-class', 'published', 8),
    (b_id, 'Clk Class', 'clk-class', 'published', 9),
    (b_id, 'Cls Class', 'cls-class', 'published', 10),
    (b_id, 'E Class', 'e-class', 'published', 11),
    (b_id, 'Eqa', 'eqa', 'published', 12),
    (b_id, 'Eqb', 'eqb', 'published', 13),
    (b_id, 'Eqc', 'eqc', 'published', 14),
    (b_id, 'Eqe', 'eqe', 'published', 15),
    (b_id, 'Eqs', 'eqs', 'published', 16),
    (b_id, 'G Class', 'g-class', 'published', 17),
    (b_id, 'G Class Brabus', 'g-class-brabus', 'published', 18),
    (b_id, 'Gl Class', 'gl-class', 'published', 19),
    (b_id, 'Glc Class', 'glc-class', 'published', 20),
    (b_id, 'Glc Coupe', 'glc-coupe', 'published', 21),
    (b_id, 'Gle Class', 'gle-class', 'published', 22),
    (b_id, 'Gle Coupe', 'gle-coupe', 'published', 23),
    (b_id, 'Glk', 'glk', 'published', 24),
    (b_id, 'Gls Class', 'gls-class', 'published', 25),
    (b_id, 'M Class', 'm-class', 'published', 26),
    (b_id, 'R Class', 'r-class', 'published', 27),
    (b_id, 'S Class', 's-class', 'published', 28),
    (b_id, 'Sel Class', 'sel-class', 'published', 29),
    (b_id, 'Sl Class', 'sl-class', 'published', 30),
    (b_id, 'Slk Class', 'slk-class', 'published', 31),
    (b_id, 'Slr', 'slr', 'published', 32),
    (b_id, 'Sls', 'sls', 'published', 33),
    (b_id, 'Sprinter', 'sprinter', 'published', 34),
    (b_id, 'V Class', 'v-class', 'published', 35),
    (b_id, 'Viano', 'viano', 'published', 36),
    (b_id, 'Vito', 'vito', 'published', 37),
    (b_id, 'X Class', 'x-class', 'published', 38)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mercedes-maybach
  SELECT id INTO b_id FROM brands WHERE slug = 'mercedes-maybach';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Gls Class', 'gls-class', 'published', 1),
    (b_id, 'S Class', 's-class', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mercury
  SELECT id INTO b_id FROM brands WHERE slug = 'mercury';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Grand Marquis', 'grand-marquis', 'published', 1),
    (b_id, 'Montego', 'montego', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mg
  SELECT id INTO b_id FROM brands WHERE slug = 'mg';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '360', '360', 'published', 1),
    (b_id, '6', '6', 'published', 2),
    (b_id, 'Gs', 'gs', 'published', 3),
    (b_id, 'Gt', 'gt', 'published', 4),
    (b_id, 'Hs', 'hs', 'published', 5),
    (b_id, 'Mg 7', 'mg-7', 'published', 6),
    (b_id, 'Mg3', 'mg3', 'published', 7),
    (b_id, 'Mg5', 'mg5', 'published', 8),
    (b_id, 'Mg6', 'mg6', 'published', 9),
    (b_id, 'One', 'one', 'published', 10),
    (b_id, 'Rx5', 'rx5', 'published', 11),
    (b_id, 'Rx8', 'rx8', 'published', 12),
    (b_id, 'Rx9', 'rx9', 'published', 13),
    (b_id, 'T60', 't60', 'published', 14),
    (b_id, 'Whale', 'whale', 'published', 15),
    (b_id, 'Zs', 'zs', 'published', 16),
    (b_id, 'Zst', 'zst', 'published', 17)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mini
  SELECT id INTO b_id FROM brands WHERE slug = 'mini';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Aceman', 'aceman', 'published', 1),
    (b_id, 'Clubman', 'clubman', 'published', 2),
    (b_id, 'Cooper', 'cooper', 'published', 3),
    (b_id, 'Countryman', 'countryman', 'published', 4),
    (b_id, 'Paceman', 'paceman', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: mitsubishi
  SELECT id INTO b_id FROM brands WHERE slug = 'mitsubishi';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Asx', 'asx', 'published', 1),
    (b_id, 'Attrage', 'attrage', 'published', 2),
    (b_id, 'Canter', 'canter', 'published', 3),
    (b_id, 'Galant', 'galant', 'published', 4),
    (b_id, 'L200', 'l200', 'published', 5),
    (b_id, 'Lancer', 'lancer', 'published', 6),
    (b_id, 'Lancer Ex', 'lancer-ex', 'published', 7),
    (b_id, 'Mirage', 'mirage', 'published', 8),
    (b_id, 'Montero', 'montero', 'published', 9),
    (b_id, 'Montero Sport', 'montero-sport', 'published', 10),
    (b_id, 'Nativa', 'nativa', 'published', 11),
    (b_id, 'Outlander', 'outlander', 'published', 12),
    (b_id, 'Pajero', 'pajero', 'published', 13),
    (b_id, 'Pajero Sport', 'pajero-sport', 'published', 14),
    (b_id, 'Xpander', 'xpander', 'published', 15),
    (b_id, 'Xpander Cross', 'xpander-cross', 'published', 16)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: morgan
  SELECT id INTO b_id FROM brands WHERE slug = 'morgan';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Roadster', 'roadster', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: neta
  SELECT id INTO b_id FROM brands WHERE slug = 'neta';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Aya', 'aya', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: nissan
  SELECT id INTO b_id FROM brands WHERE slug = 'nissan';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '350z', '350z', 'published', 1),
    (b_id, '370z', '370z', 'published', 2),
    (b_id, 'Altima', 'altima', 'published', 3),
    (b_id, 'Armada', 'armada', 'published', 4),
    (b_id, 'Frontier', 'frontier', 'published', 5),
    (b_id, 'Gt R', 'gt-r', 'published', 6),
    (b_id, 'Juke', 'juke', 'published', 7),
    (b_id, 'Kicks', 'kicks', 'published', 8),
    (b_id, 'Leaf', 'leaf', 'published', 9),
    (b_id, 'Magnite', 'magnite', 'published', 10),
    (b_id, 'Maxima', 'maxima', 'published', 11),
    (b_id, 'Micra', 'micra', 'published', 12),
    (b_id, 'Murano', 'murano', 'published', 13),
    (b_id, 'Navara', 'navara', 'published', 14),
    (b_id, 'Pathfinder', 'pathfinder', 'published', 15),
    (b_id, 'Patrol', 'patrol', 'published', 16),
    (b_id, 'Patrol Safari', 'patrol-safari', 'published', 17),
    (b_id, 'Pickup', 'pickup', 'published', 18),
    (b_id, 'Qashqai', 'qashqai', 'published', 19),
    (b_id, 'Rogue', 'rogue', 'published', 20),
    (b_id, 'Sentra', 'sentra', 'published', 21),
    (b_id, 'Silvia', 'silvia', 'published', 22),
    (b_id, 'Skyline', 'skyline', 'published', 23),
    (b_id, 'Sunny', 'sunny', 'published', 24),
    (b_id, 'Sylphy', 'sylphy', 'published', 25),
    (b_id, 'Tiida', 'tiida', 'published', 26),
    (b_id, 'Urvan', 'urvan', 'published', 27),
    (b_id, 'Versa', 'versa', 'published', 28),
    (b_id, 'X Trail', 'x-trail', 'published', 29),
    (b_id, 'Xterra', 'xterra', 'published', 30),
    (b_id, 'Z', 'z', 'published', 31)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: omoda
  SELECT id INTO b_id FROM brands WHERE slug = 'omoda';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Omoda C5', 'omoda-c5', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: opel
  SELECT id INTO b_id FROM brands WHERE slug = 'opel';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Astra', 'astra', 'published', 1),
    (b_id, 'Corsa', 'corsa', 'published', 2),
    (b_id, 'Crossland X', 'crossland-x', 'published', 3),
    (b_id, 'Grandland X', 'grandland-x', 'published', 4),
    (b_id, 'Insignia', 'insignia', 'published', 5),
    (b_id, 'Mokka', 'mokka', 'published', 6),
    (b_id, 'Zafira Life', 'zafira-life', 'published', 7)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: pagani
  SELECT id INTO b_id FROM brands WHERE slug = 'pagani';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Huayra', 'huayra', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: peugeot
  SELECT id INTO b_id FROM brands WHERE slug = 'peugeot';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '207', '207', 'published', 1),
    (b_id, '208', '208', 'published', 2),
    (b_id, '301', '301', 'published', 3),
    (b_id, '308', '308', 'published', 4),
    (b_id, '408', '408', 'published', 5),
    (b_id, '508', '508', 'published', 6),
    (b_id, 'Boxer', 'boxer', 'published', 7),
    (b_id, 'E 2008', 'e-2008', 'published', 8),
    (b_id, 'E 208', 'e-208', 'published', 9),
    (b_id, 'Expert', 'expert', 'published', 10),
    (b_id, 'Landtrek', 'landtrek', 'published', 11),
    (b_id, 'Partner', 'partner', 'published', 12),
    (b_id, 'Rcz', 'rcz', 'published', 13),
    (b_id, 'Traveller', 'traveller', 'published', 14)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: polaris
  SELECT id INTO b_id FROM brands WHERE slug = 'polaris';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Slingshot', 'slingshot', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: polestar
  SELECT id INTO b_id FROM brands WHERE slug = 'polestar';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '2', '2', 'published', 1),
    (b_id, '3', '3', 'published', 2),
    (b_id, '4', '4', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: pontiac
  SELECT id INTO b_id FROM brands WHERE slug = 'pontiac';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Firebird', 'firebird', 'published', 1),
    (b_id, 'Gto', 'gto', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: porsche
  SELECT id INTO b_id FROM brands WHERE slug = 'porsche';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '911', '911', 'published', 1),
    (b_id, '968', '968', 'published', 2),
    (b_id, 'Boxster', 'boxster', 'published', 3),
    (b_id, 'Carrera 911', 'carrera-911', 'published', 4),
    (b_id, 'Cayenne', 'cayenne', 'published', 5),
    (b_id, 'Cayman', 'cayman', 'published', 6),
    (b_id, 'Macan', 'macan', 'published', 7),
    (b_id, 'Panamera', 'panamera', 'published', 8),
    (b_id, 'Taycan', 'taycan', 'published', 9)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: rabdan
  SELECT id INTO b_id FROM brands WHERE slug = 'rabdan';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'One', 'one', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: ram
  SELECT id INTO b_id FROM brands WHERE slug = 'ram';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '1500 Trx', '1500-trx', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: renault
  SELECT id INTO b_id FROM brands WHERE slug = 'renault';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Arkana', 'arkana', 'published', 1),
    (b_id, 'Captur', 'captur', 'published', 2),
    (b_id, 'Dokker', 'dokker', 'published', 3),
    (b_id, 'Duster', 'duster', 'published', 4),
    (b_id, 'Express Van', 'express-van', 'published', 5),
    (b_id, 'Fluence', 'fluence', 'published', 6),
    (b_id, 'Koleos', 'koleos', 'published', 7),
    (b_id, 'Master', 'master', 'published', 8),
    (b_id, 'Megane', 'megane', 'published', 9),
    (b_id, 'Safrane', 'safrane', 'published', 10),
    (b_id, 'Symbol', 'symbol', 'published', 11),
    (b_id, 'Trafic', 'trafic', 'published', 12)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: riddara
  SELECT id INTO b_id FROM brands WHERE slug = 'riddara';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Rd6', 'rd6', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: roewe
  SELECT id INTO b_id FROM brands WHERE slug = 'roewe';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'I5', 'i5', 'published', 1),
    (b_id, 'Rx5', 'rx5', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: rolls-royce
  SELECT id INTO b_id FROM brands WHERE slug = 'rolls-royce';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Corniche', 'corniche', 'published', 1),
    (b_id, 'Cullinan', 'cullinan', 'published', 2),
    (b_id, 'Dawn', 'dawn', 'published', 3),
    (b_id, 'Ghost', 'ghost', 'published', 4),
    (b_id, 'Phantom', 'phantom', 'published', 5),
    (b_id, 'Silver Seraph', 'silver-seraph', 'published', 6),
    (b_id, 'Spectre', 'spectre', 'published', 7),
    (b_id, 'Wraith', 'wraith', 'published', 8)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: rolls-royce-onyx
  SELECT id INTO b_id FROM brands WHERE slug = 'rolls-royce-onyx';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Cullinan', 'cullinan', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: saic
  SELECT id INTO b_id FROM brands WHERE slug = 'saic';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Rising R7', 'rising-r7', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: seres
  SELECT id INTO b_id FROM brands WHERE slug = 'seres';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '5', '5', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: sinotruk
  SELECT id INTO b_id FROM brands WHERE slug = 'sinotruk';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Bolden', 'bolden', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: skoda
  SELECT id INTO b_id FROM brands WHERE slug = 'skoda';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Fabia', 'fabia', 'published', 1),
    (b_id, 'Kamiq', 'kamiq', 'published', 2),
    (b_id, 'Karoq', 'karoq', 'published', 3),
    (b_id, 'Kodiaq', 'kodiaq', 'published', 4),
    (b_id, 'Kushaq', 'kushaq', 'published', 5),
    (b_id, 'Octavia', 'octavia', 'published', 6),
    (b_id, 'Scala', 'scala', 'published', 7),
    (b_id, 'Superb', 'superb', 'published', 8)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: skywell
  SELECT id INTO b_id FROM brands WHERE slug = 'skywell';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Et5', 'et5', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: smart
  SELECT id INTO b_id FROM brands WHERE slug = 'smart';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '1', '1', 'published', 1),
    (b_id, '5', '5', 'published', 2),
    (b_id, 'Forfour', 'forfour', 'published', 3),
    (b_id, 'Fortwo', 'fortwo', 'published', 4)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: soueast
  SELECT id INTO b_id FROM brands WHERE slug = 'soueast';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Dx7', 'dx7', 'published', 1),
    (b_id, 'Dx8', 'dx8', 'published', 2),
    (b_id, 'S06', 's06', 'published', 3),
    (b_id, 'S07', 's07', 'published', 4),
    (b_id, 'S09', 's09', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: stelato
  SELECT id INTO b_id FROM brands WHERE slug = 'stelato';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'S9', 's9', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: subaru
  SELECT id INTO b_id FROM brands WHERE slug = 'subaru';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Brz', 'brz', 'published', 1),
    (b_id, 'Crosstrek', 'crosstrek', 'published', 2),
    (b_id, 'Forester', 'forester', 'published', 3),
    (b_id, 'Impreza', 'impreza', 'published', 4),
    (b_id, 'Legacy', 'legacy', 'published', 5),
    (b_id, 'Outback', 'outback', 'published', 6),
    (b_id, 'Wrx', 'wrx', 'published', 7),
    (b_id, 'Xv', 'xv', 'published', 8)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: suzuki
  SELECT id INTO b_id FROM brands WHERE slug = 'suzuki';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Apvvan', 'apvvan', 'published', 1),
    (b_id, 'Baleno', 'baleno', 'published', 2),
    (b_id, 'Carry', 'carry', 'published', 3),
    (b_id, 'Celerio', 'celerio', 'published', 4),
    (b_id, 'Ciaz', 'ciaz', 'published', 5),
    (b_id, 'Dzire', 'dzire', 'published', 6),
    (b_id, 'Eeco', 'eeco', 'published', 7),
    (b_id, 'Ertiga', 'ertiga', 'published', 8),
    (b_id, 'Fronx', 'fronx', 'published', 9),
    (b_id, 'Grand Vitara', 'grand-vitara', 'published', 10),
    (b_id, 'Jimny', 'jimny', 'published', 11),
    (b_id, 'Spresso', 'spresso', 'published', 12),
    (b_id, 'Swift', 'swift', 'published', 13),
    (b_id, 'Sx4', 'sx4', 'published', 14),
    (b_id, 'Vitara', 'vitara', 'published', 15)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: tam
  SELECT id INTO b_id FROM brands WHERE slug = 'tam';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Vika T2', 'vika-t2', 'published', 1),
    (b_id, 'Vika T4', 'vika-t4', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: tank
  SELECT id INTO b_id FROM brands WHERE slug = 'tank';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '300', '300', 'published', 1),
    (b_id, '500', '500', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: tesla
  SELECT id INTO b_id FROM brands WHERE slug = 'tesla';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Cybertruck', 'cybertruck', 'published', 1),
    (b_id, 'Model 3', 'model-3', 'published', 2),
    (b_id, 'Model S', 'model-s', 'published', 3),
    (b_id, 'Model X', 'model-x', 'published', 4),
    (b_id, 'Model Y', 'model-y', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: toyota
  SELECT id INTO b_id FROM brands WHERE slug = 'toyota';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '2025', '2025', 'published', 1),
    (b_id, '4 Runner', '4-runner', 'published', 2),
    (b_id, '86', '86', 'published', 3),
    (b_id, 'Alphard', 'alphard', 'published', 4),
    (b_id, 'Avalon', 'avalon', 'published', 5),
    (b_id, 'Avanza', 'avanza', 'published', 6),
    (b_id, 'Bz3', 'bz3', 'published', 7),
    (b_id, 'Bz4x', 'bz4x', 'published', 8),
    (b_id, 'C Hr', 'c-hr', 'published', 9),
    (b_id, 'Camry', 'camry', 'published', 10),
    (b_id, 'Century', 'century', 'published', 11),
    (b_id, 'Coaster', 'coaster', 'published', 12),
    (b_id, 'Corolla', 'corolla', 'published', 13),
    (b_id, 'Corolla Cross', 'corolla-cross', 'published', 14),
    (b_id, 'Cressida', 'cressida', 'published', 15),
    (b_id, 'Crown', 'crown', 'published', 16),
    (b_id, 'Fj Cruiser', 'fj-cruiser', 'published', 17),
    (b_id, 'Fortuner', 'fortuner', 'published', 18),
    (b_id, 'Frontlander', 'frontlander', 'published', 19),
    (b_id, 'Gr86', 'gr86', 'published', 20),
    (b_id, 'Granvia', 'granvia', 'published', 21),
    (b_id, 'Hiace', 'hiace', 'published', 22),
    (b_id, 'Highlander', 'highlander', 'published', 23),
    (b_id, 'Hilux', 'hilux', 'published', 24),
    (b_id, 'Innova', 'innova', 'published', 25),
    (b_id, 'Land Cruiser', 'land-cruiser', 'published', 26),
    (b_id, 'Levin', 'levin', 'published', 27),
    (b_id, 'Lite Ace', 'lite-ace', 'published', 28),
    (b_id, 'Mr2', 'mr2', 'published', 29),
    (b_id, 'Prado', 'prado', 'published', 30),
    (b_id, 'Previa', 'previa', 'published', 31),
    (b_id, 'Prius', 'prius', 'published', 32),
    (b_id, 'Raize', 'raize', 'published', 33),
    (b_id, 'Rav 4', 'rav-4', 'published', 34),
    (b_id, 'Rush', 'rush', 'published', 35),
    (b_id, 'Sequoia', 'sequoia', 'published', 36),
    (b_id, 'Sienna', 'sienna', 'published', 37),
    (b_id, 'Supra', 'supra', 'published', 38),
    (b_id, 'Tacoma', 'tacoma', 'published', 39),
    (b_id, 'Tundra', 'tundra', 'published', 40),
    (b_id, 'Urban Cruiser', 'urban-cruiser', 'published', 41),
    (b_id, 'Veloz', 'veloz', 'published', 42),
    (b_id, 'Vitz', 'vitz', 'published', 43),
    (b_id, 'Xa', 'xa', 'published', 44),
    (b_id, 'Yaris', 'yaris', 'published', 45),
    (b_id, 'Zelas', 'zelas', 'published', 46)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: vgv
  SELECT id INTO b_id FROM brands WHERE slug = 'vgv';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'U70 Pro', 'u70-pro', 'published', 1),
    (b_id, 'U75 Plus', 'u75-plus', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: victory
  SELECT id INTO b_id FROM brands WHERE slug = 'victory';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Sch 1025', 'sch-1025', 'published', 1),
    (b_id, 'V1', 'v1', 'published', 2),
    (b_id, 'V2', 'v2', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: volkswagen
  SELECT id INTO b_id FROM brands WHERE slug = 'volkswagen';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Amarok', 'amarok', 'published', 1),
    (b_id, 'Beetle', 'beetle', 'published', 2),
    (b_id, 'Bora', 'bora', 'published', 3),
    (b_id, 'Cc', 'cc', 'published', 4),
    (b_id, 'Eos', 'eos', 'published', 5),
    (b_id, 'Golf', 'golf', 'published', 6),
    (b_id, 'Id3', 'id3', 'published', 7),
    (b_id, 'Jetta', 'jetta', 'published', 8),
    (b_id, 'Kombi', 'kombi', 'published', 9),
    (b_id, 'Multivan', 'multivan', 'published', 10),
    (b_id, 'Passat', 'passat', 'published', 11),
    (b_id, 'Polo', 'polo', 'published', 12),
    (b_id, 'Scirocco', 'scirocco', 'published', 13),
    (b_id, 'T Roc', 't-roc', 'published', 14),
    (b_id, 'Teramont', 'teramont', 'published', 15),
    (b_id, 'Tiguan', 'tiguan', 'published', 16),
    (b_id, 'Touareg', 'touareg', 'published', 17),
    (b_id, 'Viloran', 'viloran', 'published', 18)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: volvo
  SELECT id INTO b_id FROM brands WHERE slug = 'volvo';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'C Class', 'c-class', 'published', 1),
    (b_id, 'C40', 'c40', 'published', 2),
    (b_id, 'Ex30', 'ex30', 'published', 3),
    (b_id, 'S40', 's40', 'published', 4),
    (b_id, 'S60', 's60', 'published', 5),
    (b_id, 'S80', 's80', 'published', 6),
    (b_id, 'S90', 's90', 'published', 7),
    (b_id, 'V Class', 'v-class', 'published', 8),
    (b_id, 'V90', 'v90', 'published', 9),
    (b_id, 'Xc40', 'xc40', 'published', 10),
    (b_id, 'Xc60', 'xc60', 'published', 11),
    (b_id, 'Xc90', 'xc90', 'published', 12)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: voyah
  SELECT id INTO b_id FROM brands WHERE slug = 'voyah';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Dreamer', 'dreamer', 'published', 1),
    (b_id, 'Free', 'free', 'published', 2),
    (b_id, 'Taishan', 'taishan', 'published', 3)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: wey
  SELECT id INTO b_id FROM brands WHERE slug = 'wey';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '3', '3', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: xiaomi
  SELECT id INTO b_id FROM brands WHERE slug = 'xiaomi';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Su7', 'su7', 'published', 1),
    (b_id, 'Yu7', 'yu7', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: xpeng
  SELECT id INTO b_id FROM brands WHERE slug = 'xpeng';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'G9', 'g9', 'published', 1),
    (b_id, 'P7', 'p7', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: yangwang
  SELECT id INTO b_id FROM brands WHERE slug = 'yangwang';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'U8', 'u8', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: yipai
  SELECT id INTO b_id FROM brands WHERE slug = 'yipai';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '8', '8', 'published', 1)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: zeekr
  SELECT id INTO b_id FROM brands WHERE slug = 'zeekr';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, '1', '1', 'published', 1),
    (b_id, '7', '7', 'published', 2),
    (b_id, '9', '9', 'published', 3),
    (b_id, '7x', '7x', 'published', 4),
    (b_id, 'X', 'x', 'published', 5)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: zotye
  SELECT id INTO b_id FROM brands WHERE slug = 'zotye';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'T600', 't600', 'published', 1),
    (b_id, 'T700', 't700', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

  -- Brand: zxauto
  SELECT id INTO b_id FROM brands WHERE slug = 'zxauto';
  IF b_id IS NOT NULL THEN
    INSERT INTO brand_models (brand_id, name, slug, status, sort_order) VALUES
    (b_id, 'Grandlion', 'grandlion', 'published', 1),
    (b_id, 'Terralord', 'terralord', 'published', 2)
    ON CONFLICT (brand_id, slug) DO UPDATE SET status = 'published';
  END IF;

END $$;
