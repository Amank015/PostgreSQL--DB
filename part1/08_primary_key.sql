

DROP TABLE IF EXISTS basics.sales;

CREATE TABLE basics.sales(

    id SERIAL PRIMARY KEY,

    title TEXT NOT NULL,

    price NUMERIC(10,2) NOT NULL DEFAULT 0,

    created_at TIMESTAMP DEFAULT NOW()
);



--Insert the data into the table
INSERT INTO basics.sales(title,price)
VALUES
('sale1',200),
('sale2',500);



SELECT * FROM basics.sales;