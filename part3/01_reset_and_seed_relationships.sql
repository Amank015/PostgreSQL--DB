
-- CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- DROP TABLE IF EXISTS post_tags;
-- DROP TABLE IF EXISTS comments;
-- DROP TABLE IF EXISTS posts;
-- DROP TABLE IF EXISTS tags;
-- DROP TABLE IF EXISTS users;



-- CREATE TABLE users(
    
--     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

--     name TEXT NOT NULL


-- );

-- CREATE TABLE posts(

--   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

--     user_id UUID NOT NULL REFERENCES users(id),

--     title TEXT NOT NULL,

--     status TEXT NOT NULL DEFAULT 'draft'
--     CHECK (status IN ('draft', 'published') ),


--   views INTEGER NOT NULL DEFAULT 0 CHECK (views >=0)

-- );


-- CREATE TABLE comments(

--     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

--     post_id UUID NOT NULL REFERENCES posts(id),

--     body TEXT NOT NULL
-- );


-- CREATE table tags(
--     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

--     name TEXT NOT NULL UNIQUE
-- );



-- CREATE TABLE post_tags(
--     post_id UUID NOT NULL REFERENCES posts(id),
--     tag_id UUID NOT NULL REFERENCES tags(id),

--     PRIMARY KEY(post_id,tag_id)
-- );


-- INSERT INTO users (name)
-- VALUES
-- ('Aman Khan'),
-- ('Rahul Sharma');



-- --posts
-- INSERT INTO posts (user_id, title, status, views)
-- VALUES
-- (
--     (SELECT id FROM users WHERE name = 'Aman Khan'),
--     'Introduction to Node.js',
--     'published',
--     1200
-- ),
-- (
--     (SELECT id FROM users WHERE name = 'Aman Khan'),
--     'PostgreSQL Basics',
--     'published',
--     850
-- ),
-- (
--     (SELECT id FROM users WHERE name = 'Rahul Sharma'),
--     'REST API Explained',
--     'published',
--     1500
-- ),
-- (
--     (SELECT id FROM users WHERE name = 'Rahul Sharma'),
--     'Docker for Beginners',
--     'draft',
--     0
-- );


-- --comments


-- INSERT INTO comments (post_id, body)
-- VALUES
-- (
--     (SELECT id FROM posts WHERE title = 'Introduction to Node.js'),
--     'Very useful article.'
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'Introduction to Node.js'),
--     'Thanks for explaining this.'
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'PostgreSQL Basics'),
--     'PostgreSQL is really powerful.'
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'REST API Explained'),
--     'Great explanation of REST APIs.'
-- );

-- --Tags

-- INSERT INTO tags (name)
-- VALUES
-- ('Node.js'),
-- ('PostgreSQL'),
-- ('REST API'),
-- ('Docker'),
-- ('Backend');

-- --post_tags

-- INSERT INTO post_tags (post_id, tag_id)
-- VALUES
-- (
--     (SELECT id FROM posts WHERE title = 'Introduction to Node.js'),
--     (SELECT id FROM tags WHERE name = 'Node.js')
-- )
-- (
--     (SELECT id FROM posts WHERE title = 'Introduction to Node.js'),
--     (SELECT id FROM tags WHERE name = 'Backend')
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'PostgreSQL Basics'),
--     (SELECT id FROM tags WHERE name = 'PostgreSQL')
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'PostgreSQL Basics'),
--     (SELECT id FROM tags WHERE name = 'Backend')
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'REST API Explained'),
--     (SELECT id FROM tags WHERE name = 'REST API')
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'REST API Explained'),
--     (SELECT id FROM tags WHERE name = 'Backend')
-- ),
-- (
--     (SELECT id FROM posts WHERE title = 'Docker for Beginners'),
--     (SELECT id FROM tags WHERE name = 'Docker')
-- );


-- SELECT 'insert the data successfully' AS message;


-- SELECT * FROM post_tags, posts, comments, users, tags;