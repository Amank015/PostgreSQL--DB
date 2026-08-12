

-- inner join returns only the matching rows from both tables

SELECT
users.name AS auther_name,
posts.title AS posts_title,
posts.status,
posts.views
FROM posts
INNER JOIN users
--matching rule
ON posts.user_id = users.id 
WHERE posts.status = 'published'
ORDER BY posts.views DESC;



































