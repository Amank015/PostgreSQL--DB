
--IN -> value must match one item from the list
--NOT IN -> value must not match any time from the list 
--BETWEEN -> value must be inside a range


-- SELECT name,category,price
-- FROM products
-- WHERE category IN ('electronics', 'furniture');

--Not in

-- SELECT name ,category
-- FROM products
-- WHERE category NOT IN ('electronics','furniture');


--between it includes 100 and 2000 also

-- SELECT name , price
-- FROM products
-- WHERE price BETWEEN 100 AND 2000;


-- SELECT name, category , price , stock
-- FROM products
-- WHERE category IN ('electronics', 'furniture')
-- AND price BETWEEN 100 AND 2000;









