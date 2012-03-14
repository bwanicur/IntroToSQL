-- create a database
create database intro_to_sql;
	
-- use a database
use intro_to_sql;


-- create a table
CREATE TABLE example_table (
  id INT,
  abbreviation CHAR(2),
  title VARCHAR(255),
  body TEXT
);

-- create posts table
CREATE TABLE posts (
  id INT(11),
  author_initials CHAR(2),
  title VARCHAR(255),
  body TEXT,
  created_at DATETIME
);

-- insert some data into posts table
INSERT INTO posts (id, author_initials, title, body, created_at) 
VALUES (1, 'BW', 'My First Post', "This is a post about the SQL database language.  It's great", NOW());

-- query the posts table
SELECT * FROM posts;

-- another insert statment
INSERT INTO posts (id, author_initials, title, body, created_at) 
VALUES (2, 'BW', 'My Second Post', "This is my second post.  I feel like I am getting the hang of this.", NOW());


-- create improved id posts table
CREATE TABLE improved_id_posts (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  author_initials CHAR(2),
  title VARCHAR(255),
  body TEXT,
  created_at DATETIME
);

-- insert statments for improved_id_posts
INSERT INTO improved_id_posts (author_initials, title, body, created_at) VALUES ('BW', 'A New Post', 'This post is is inserted into a new table with an auto incrementing id column.  No need to manually set the id.', NOW());
INSERT INTO improved_id_posts (author_initials, title, body, created_at) VALUES ('BW', 'Another Post', 'Blah....', NOW());