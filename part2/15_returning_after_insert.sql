
--  returning usually returns back the rows after insert


-- INSERT INTO products(name, category, price, stock, sku, description)
-- VALUES (
--     'webcam camera',
--     'electronics',
--     456.65,
--     27,
--     'webcma-10101',
--     'webcam camera description'
-- )
-- RETURNING id, name, category, price, stock, created_at;




-- UPDATE products
-- SET stock = stock +11
-- WHERE sku =  'webcma-10101'
-- RETURNING id, name, stock;


-- DELETE FROM products
-- WHERE sku =  'webcma-10101'
-- RETURNING id, name, sku;


-- SELECT name, sku
-- FROM products
-- WHERE sku =  'webcma-10101'


























