INSERT INTO products
(name, category, price, stock, is_active, sku, description)
VALUES
('Smart Watch', 'Electronics', 3499.00, 20, true, 'SW-101', 'Fitness tracking smart watch'),
('Laptop Bag', 'Accessories', 1899.00, 15, true, 'LB-102', 'Water resistant laptop bag'),
('Desk Lamp', 'Home', 899.00, 30, false, 'DL-103', 'LED desk lamp with adjustable brightness');


SELECT name, category, price, stock, sku
FROM products
WHERE sku IN ('SW-101','LB-102','DL-103');