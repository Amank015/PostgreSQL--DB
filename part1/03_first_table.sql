
-- dont do in production
DROP TABLE IF EXISTS basics.students;


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


--insert the data

INSERT INTO basics.students (name,email,age)
VALUES
('Aman', 'Aman@gmail.com', 20),
('Rahul', 'rahul@gmail.com', 22),
('Ankit', 'ankit@gmail.com', 21);

SELECT * FROM basics.students;















