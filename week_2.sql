-- create posts week 2 table
CREATE TABLE posts_week_2 (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  author_initials CHAR(2) DEFAULT '**',
  title VARCHAR(255),
  body TEXT,
  created_at DATETIME
);

-- insert without author intials
INSERT INTO posts_week_2 (title, body, created_at) VALUES ('My Anonymous Post', "I do not have an account on this website, but that won't stop be from blabbering on.  Here I go...", NOW());

-- insert with author intitals
INSERT INTO posts_week_2 (author_initials, title, body, created_at) VALUES ('BW', 'Author Post', 'Yep I have an account', NOW());

-- insert with NULL title.
INSERT INTO posts_week_2 (body, created_at) VALUES ('Post with a NULL title', NOW());

-- insert with blank string title
INSERT INTO posts_week_2 (title, body, created_at) VALUES (' ', 'Post with a blank string title', NOW());

-- insert with blank title
INSERT INTO posts_week_2 (title, body, created_at) VALUES ('', 'Post with an empty title', NOW());


-- create posts week 2 current timestamp
CREATE TABLE posts_week_2_timestamp (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  author_initials CHAR(2) DEFAULT '**',
  title VARCHAR(255),
  body TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- insert without created_at value
INSERT INTO posts_week_2_timestamp (author_initials, title, body) VALUES ('BW', 'My Title', 'No timstamp value here.');


-- select with where clause
SELECT * FROM posts_week_2 WHERE author_initials = '**';

-- string without quotes.  it will fail.
SELECT * FROM posts_week_2 WHERE author_initials = BW;

-- where clause with integer
SELECT * FROM posts_week_2 WHERE id = 1;

-- greater than comparison operator
SELECT * FROM posts_week_2 WHERE id > 2;

-- comparison of DATETIME
SELECT * FROM posts_week_2 WHERE created_at > '2012-01-01';
SELECT * FROM posts_week_2 WHERE created_at > '2013-01-01';
SELECT * FROM posts_week_2 WHERE created_at < NOW();

-- comparison by NULL values
SELECT * FROM posts_week_2 WHERE title IS NULL;
SELECT * FROM posts_week_2 WHERE title IS NOT NULL;

-- improper NULL queries
SELECT * FROM posts_week_2 WHERE title = NULL;
SELECT * FROM posts_week_2 WHERE title = 'NULL';


-- create table with keys
CREATE TABLE posts_week_2_keys (
  id INT(11) AUTO_INCREMENT,
  author_initials CHAR(2) DEFAULT '**',
  title VARCHAR(255),
  body TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(id),
  KEY(author_initials)
);

-- delete all rows in our posts_week_2 table
DELETE FROM posts_week_2;

-- delete all posts by anonymous authors
DELETE FROM posts_week_2 WHERE author_initials = '**';
