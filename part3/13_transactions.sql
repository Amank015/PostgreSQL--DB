

-- multiple sql statements run as one safe unit


-- placing an order
-- reduce stock of that product
-- creating payment records
-- transfering money
-- creating user records with related profile data


BEGIN;

UPDATE posts
SET status = 'draft'
WHERE title = 'Introduction to Node.js'
  AND status = 'published';

UPDATE posts
SET views = views + 50
WHERE title = 'Introduction to Node.js';

SELECT
    title,
    status,
    views
FROM posts
WHERE title = 'Introduction to Node.js';

COMMIT;
























