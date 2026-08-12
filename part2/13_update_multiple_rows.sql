
-- SELECT name, category, price , is_active
-- FROM products
-- WHERE category = 'Accessories';


-- UPDATE products
-- SET price = ROUND(price + 1.10,2)
-- WHERE category = 'Accessories';

-- SELECT name, category, price , is_active
-- FROM products
--  WHERE category = 'Accessories';


UPDATE products
SET is_active = FALSE
WHERE stock = 45;

SELECT name, stock, is_active
FROM products
WHERE is_active = FALSE;





