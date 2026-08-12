

-- one query inside another query
-- runs the inner query first
-- and then run outer query


SELECT
title,
status,
views
FROM posts 
WHERE views > (
    SELECT AVG(views) FROM posts 
)
ORDER BY views DESC;



































