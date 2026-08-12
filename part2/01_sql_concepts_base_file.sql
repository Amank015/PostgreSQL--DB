
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products(

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL,

    category TEXT NOT NULL,

    price NUMERIC(10,2) NOT NULL CHECK (price>=0),

    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock>=0),

    is_active BOOLEAN  NOT NULL DEFAULT true,

    sku TEXT UNIQUE,

    description TEXT,

    created_at TIMESTAMP DEFAULT NOW()
);


--insert the data
INSERT INTO products
(name, category, price, stock, is_active, sku, description)
VALUES
('Wireless Mouse', 'Electronics', 799.00, 50, true, 'WM-001', 'Ergonomic wireless mouse'),
('Mechanical Keyboard', 'Electronics', 2499.00, 30, true, 'KB-002', 'RGB mechanical keyboard'),
('USB-C Cable', 'Accessories', 399.00, 100, true, 'UC-003', 'Fast charging USB-C cable'),
('Laptop Stand', 'Accessories', 1299.00, 25, true, 'LS-004', 'Adjustable aluminum laptop stand'),
('Bluetooth Speaker', 'Electronics', 1999.00, 40, true, 'BS-005', 'Portable Bluetooth speaker'),
('Webcam', 'Electronics', 1599.00, 20, true, 'WC-006', 'Full HD USB webcam'),
('Gaming Headset', 'Gaming', 2999.00, 15, true, 'GH-007', 'Over-ear gaming headset'),
('Power Bank', 'Electronics', 1499.00, 35, true, 'PB-008', '10000mAh fast charging power bank'),
('Desk Lamp', 'Home', 899.00, 45, true, 'DL-009', 'LED desk lamp with adjustable brightness'),
('Notebook', 'Stationery', 249.00, 80, false, 'NB-010', 'Hardcover ruled notebook');


SELECT * FROM products;
