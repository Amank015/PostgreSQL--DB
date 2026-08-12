PostgreSQL Backend Engineering

A practical PostgreSQL learning repository focused on the database concepts required for building production-grade Node.js backend applications.

This repository covers PostgreSQL fundamentals, relational database design, CRUD operations, relationships, joins, aggregation, subqueries, indexes, and transactions.

🎯 Learning Objectives

By completing this repository, you should be able to:

- Design relational database schemas
- Create databases, schemas, and tables
- Choose appropriate PostgreSQL data types
- Apply constraints and primary keys
- Perform CRUD operations
- Filter, sort, paginate, and update data
- Design one-to-many and many-to-many relationships
- Work with foreign keys
- Write INNER JOIN and LEFT JOIN queries
- Use aggregate functions and GROUP BY
- Write subqueries
- Understand database indexes
- Use transactions safely
- Build PostgreSQL databases suitable for Node.js backend applications

---

📚 Topics Covered

1. Database Fundamentals

- Creating a database
- Creating schemas
- Creating tables
- Database vs Schema vs Table
- SQL data types
- Additional PostgreSQL data types
- NULL vs empty string vs zero
- Constraints
- Primary keys

2. CRUD Operations

INSERT

- Insert a single row
- Insert multiple rows
- RETURNING after INSERT

SELECT

- Select specific columns
- Basic filtering with "WHERE"
- "AND", "OR", and "NOT"
- Pattern matching with "LIKE"
- "IN" and "NOT IN"
- "BETWEEN"
- "NULL" and "NOT NULL"

UPDATE

- Update a single row
- Update multiple rows
- RETURNING after UPDATE

DELETE

- Delete rows
- RETURNING after DELETE

---

🔎 Filtering, Sorting & Pagination

Covered concepts:

WHERE
AND
OR
NOT
LIKE
IN
NOT IN
BETWEEN
IS NULL
IS NOT NULL
ORDER BY
LIMIT
OFFSET

Pagination

Practical offset-based pagination using:

LIMIT
OFFSET

Example:

SELECT *
FROM posts
ORDER BY created_at DESC
LIMIT 10 OFFSET 20;

---

🔗 Relationships

Foreign Keys

Understanding referential integrity and relationships between tables.

One-to-Many

Example:

User
 |
 ├── Post
 ├── Post
 └── Post

Many-to-Many

Example:

Users ←→ Roles

Usually implemented using a junction table.

---

🔀 SQL Joins

INNER JOIN

Returns matching records from both tables.

LEFT JOIN

Returns all records from the left table and matching records from the right table.

Table Aliases

Using aliases to make complex queries easier to read:

SELECT
    u.id,
    u.name,
    p.title
FROM users AS u
INNER JOIN posts AS p
    ON p.user_id = u.id;

---

📊 Aggregate Functions

Covered functions:

COUNT()
SUM()
AVG()
MIN()
MAX()

GROUP BY

Grouping records based on a column.

HAVING

Filtering grouped results.

COUNT DISTINCT

Counting unique values:

SELECT COUNT(DISTINCT user_id)
FROM posts;

---

🧠 Subqueries

Understanding nested SQL queries and when to use them.

Example:

SELECT *
FROM users
WHERE id IN (
    SELECT user_id
    FROM posts
);

---

⚡ Indexes

Understanding:

- What an index is
- Why indexes improve read performance
- Index trade-offs
- When indexes should and should not be created

«Indexes are not automatically beneficial for every column. They should be created based on actual query patterns and workload.»

---

🔐 Transactions

Understanding database transactions and the importance of atomic operations.

Example:

BEGIN;

UPDATE posts
SET status = 'published'
WHERE title = 'Introduction to Node.js';

UPDATE posts
SET views = views + 50
WHERE title = 'Introduction to Node.js';

COMMIT;

Transactions help ensure that related database operations succeed or fail together.

---

🏗️ Backend Use Cases

The concepts in this repository can be applied to backend systems such as:

- Authentication systems
- Blog APIs
- E-commerce APIs
- Job portals
- Social media backends
- URL shorteners
- File storage systems
- Order management systems
- SaaS applications
- AI/RAG applications

---

🛠️ Recommended Backend Stack

For Node.js backend development, PostgreSQL can be combined with:

Node.js
   ↓
TypeScript
   ↓
Express.js / NestJS
   ↓
PostgreSQL
   ↓
Prisma / Drizzle / node-postgres
   ↓
Redis
   ↓
Docker
   ↓
AWS

---
🎯 Goal

Build scalable and production-ready backend applications using Node.js, TypeScript, PostgreSQL, Redis, Docker, AWS and Nginx.

Author: Aman Khan

Role: Backend Engineer

Skills: Node.js • TypeScript • PostgreSQL • Redis • Docker • AWS • Nginx
