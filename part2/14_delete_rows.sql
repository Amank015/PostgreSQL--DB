
INSERT INTO products (name, category, price, stock, sku, description)
VALUES
('Coffee Mug', 'Kitchen', 349.00, 60,  'CM-202', 'Ceramic coffee mug with printed design');


-- SELECT name, category, sku
-- FROM products
-- WHERE sku = 'CM-202'

DELETE FROM products
WHERE sku = 'CM-202';


SELECT name, category, sku
FROM products
WHERE sku = 'CM-202';


