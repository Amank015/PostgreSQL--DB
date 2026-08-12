
--NOT NULL, UNIQUE, DEFAULT, CHECK
-- app, script , developer

DROP TABLE IF EXISTS baiscs.accounts;

CREATE TABLE basics.accounts(

    id SERIAL PRIMARY KEY,

    full_name TEXT NOT NULL,


   email TEXT NOT NULL UNIQUE,

   age INTEGER CHECK (age>=18),

   created_at TIMESTAMP DEFAULT NOW()

);



--insert the data into the table
INSERT INTO basics.accounts(full_name,email,age)
VALUES
('Aman khan','aman552@gmail.com',20);



SELECT * FROM basics.accounts;