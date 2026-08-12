
-- select * - returns every cols
--SELECT * FROM products;


-- select specific cols is going to return the cols that i want

--SELECT name, category, price,stock
--FROM products;

-- SELECT price 
-- FROM products;


--As creates an alias for the output of that column name 
-- 'AS' means name update karna  
--makes the col name easier to read

SELECT 
    name AS product_name,
    price AS selling_price,
    stock AS availibility_qunatity
FROM products;    


