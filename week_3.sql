-- create table with keys
CREATE TABLE posts_week_3_keys (
  id INT(11) AUTO_INCREMENT,
  author_initials CHAR(2) DEFAULT '**',
  title VARCHAR(255),
  body TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(id),
  KEY(author_initials)
);

-- authors table with unique key
CREATE TABLE authors_unique_key (
  id INT(11) AUTO_INCREMENT,
  email VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  UNIQUE KEY(email)
);
-- insert data
INSERT INTO authors_unique_key (email, first_name, last_name) VALUES ('rob@winterfell.com', 'Rob', 'Stark');
INSERT INTO authors_unique_key (email, first_name, last_name) VALUES ('rob@winterfell.com', 'Robert', 'Stark');


-- authors table with unique key over 2 columns
CREATE TABLE authors_unique_key_2(
  id INT(11) AUTO_INCREMENT,
  email VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  UNIQUE KEY(first_name, last_name)
);
-- insert data
INSERT INTO authors_unique_key_2 (email, first_name, last_name) VALUES ('rob@winterfell.com', 'Rob', 'Stark');
INSERT INTO authors_unique_key_2 (email, first_name, last_name) VALUES ('arya@winterfell.com', 'Arya', 'Stark');
INSERT INTO authors_unique_key_2 (email, first_name, last_name) VALUES ('rob@yahoo.com', 'Rob', 'Stark');


-- update statement for every row 
UPDATE improved_posts_week_2 SET active = 0;

-- update statement with condition
UPDATE improved_posts_week_2 SET active = 1 WHERE author_id = 3;

-- update multiple columns
UPDATE improved_posts_week_2 SET active = 1, created_at = '2012-04-01' WHERE author_id != 3;

-- delete all rows in our posts_week_2 table
DELETE FROM posts_week_2;

-- delete all posts by anonymous authors
DELETE FROM posts_week_2 WHERE author_initials = '**';
