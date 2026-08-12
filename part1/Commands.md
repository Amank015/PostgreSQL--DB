
## connecting to database 
command -- psql -U postgres -d  "database name"

## showing for current database
command -- SELECT current_database();

## showing current user
command -- SELECT current_user;

## checking the version of postgres
command SELECT version();

## checking the db list
command -- \l

## checking the table
command -- \dt

## exit from db
command -- exit
command \q

## creating the schema
command -- CREATE SCHEMA IF NOT EXISTS basics;

command -- CREATE EXTENSION IF NOT EXISTS pgcrypto;
-- for generating the uuid in postgresql


## query for showing the schema is created or not
--query

SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name


## creating the table
CREATE TABLE basics.students(
    --create an auto incrementing integer
    -- 1,-> 2,3 and so on 4,5
    -- primary key simply means this col uniquely identifies each row

    id SERIAL PRIMARY KEY,

    --text - string data 
    -- not null means that this col required
    -- postgres is going to reject this name value is not present

    name TEXT NOT NULL,


    --unique means -- NO 2 students is going to have same email

    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age>=18),


    --TIMESTAMP - store the data and time format
    -- default means if u dont give any value it will take by default
    created_at TIMESTAMP DEFAULT NOW()
);


## Inserting the data

INSERT INTO basics.students (name,email,age)
VALUES
('Aman', 'Aman@gmail.com', 20),
('Rahul', 'rahul@gmail.com', 22),
('Ankit', 'ankit@gmail.com', 21);


## Showing the columns
SELECT * FROM TABLE_NAME

## For checking JSON data

SELECT
    event_name,  -- event ka naam
    metadata ->> 'browser' AS browser  --- "metadata ke JSON ke andar se
    browser ki value nikalo".
FROM basics.app_events
WHERE metadata ? 'browser';  --> 
kya metadata ke ander ye value like 'browser' exist karta hai kya


## for commenting the file in VS Code

SQL code select karo.
Press:
Ctrl + K, phir Ctrl + C → comment
Uncomment ke liye:
Ctrl + K, phir Ctrl + U



















