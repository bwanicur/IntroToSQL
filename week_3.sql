-- foods table
CREATE TABLE foods(
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  country_of_origin VARCHAR(255),
  primary_meal ENUM('breakfast', 'lunch', 'dinner'),
  short_description VARCHAR(255),
  average_price DECIMAL(8,2) DEFAULT 0.00,
  calories INTEGER(11) DEFAULT 0,
  discovery_date DATE,
  PRIMARY KEY(id)
);
-- example insert statements
INSERT INTO foods (name, country_of_origin, primary_meal, short_description, average_price, calories, discovery_date) VALUES
  ('rice', 'China', 'anytime', 'also great with anything', 0.99, 100, '1000-01-01');
INSERT INTO foods (name, primary_meal, short_description, discovery_date) VALUES ('water', NULL, 'we need it to survive', NULL);
-- insert data...
INSERT INTO foods (name, country_of_origin, primary_meal, short_description, average_price, calories, discovery_date) VALUES
  ('noodle', 'China', 'dinner', 'great with anything', 1.99, 250, '1100-01-01');
INSERT INTO foods (name, country_of_origin, primary_meal, short_description, average_price, calories, discovery_date) VALUES
  ('pizza', 'United States', 'breakfast', 'not health food', 1.50, 450, '1550-01-01');
INSERT INTO foods (name, country_of_origin, primary_meal, short_description, average_price, calories, discovery_date) VALUES
  ('calzone', 'Italy', 'lunch', 'delicious sandwhich food', 4.99, 800, '1600-01-01');
INSERT INTO foods (name, country_of_origin, primary_meal, short_description, average_price, calories, discovery_date) VALUES
  ('lasagna', 'Italy', 'dinner', 'great pasta dish', 8.99, 1400, '1600-01-01');
INSERT INTO foods (name, country_of_origin, primary_meal, short_description, average_price, calories, discovery_date) VALUES
  ('double down', 'United States', 'dinner', 'chicken sandwhich with chicken filets instead of buns.  it could kill you', 3.99, 2000, '2008-01-01');



-- slightly more complex query
SELECT * FROM foods
WHERE (country_of_origin = 'Italy' AND (calories < 1000 OR primary_meal = 'dinner'))
OR 
(country_of_origin = 'China' AND (calories < 1000 OR primary_meal = 'dinner'));

-- without parenthesis
SELECT * FROM foods
WHERE (country_of_origin = 'Italy' AND calories < 1000 OR primary_meal = 'dinner')
OR 
(country_of_origin = 'China' AND calories < 1000 OR primary_meal = 'dinner');


-- LIKE operator queries
-- short_description ends with word "food"
SELECT * FROM foods WHERE short_description LIKE "%food";
-- short_description starts with the word "great"
SELECT * FROM foods WHERE short_description LIKE "great%";
-- short_description has the word "with" somewhere inside of it
SELECT * FROM foods WHERE short_description LIKE "%with%";



-- create table with keys
CREATE TABLE posts_week_3_keys (
  id INT(11) AUTO_INCREMENT,
  author_id INT(11),
  title VARCHAR(255),
  body TEXT,
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  KEY(author_id)
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



-- Joining more than 2 tables

-- posts table week 3
CREATE TABLE posts_week_3 (
  id INT(11) AUTO_INCREMENT,
  author_id INT(11) NOT NULL,
  title VARCHAR(255),
  body TEXT,
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
-- insert data
INSERT INTO posts_week_3 (author_id, title, body) VALUES (1, 'Next Book ?', 'One day I will finish.  Get off my back you nerds!');
INSERT INTO posts_week_3 (author_id, title, body) VALUES (2, 'About Me', 'Damn it feels good to be a Lanister!');
INSERT INTO posts_week_3 (author_id, title, body) VALUES (3, 'The Dwarf', 'I am by far the most likeable character.');
INSERT INTO posts_week_3 (author_id, title, body) VALUES (3, 'My Family', 'Rich but stupid.');
INSERT INTO posts_week_3 (author_id, title, body) VALUES (5, 'The Starks', 'Noble but stupid.');
INSERT INTO posts_week_3 (author_id, title, body) VALUES (3, 'The Imp', 'I hate that name.');
INSERT INTO posts_week_3 (author_id, title, body) VALUES (5, 'Me too', 'Also possibly the most likeable character.');
INSERT INTO posts_week_3 (author_id, title, body) VALUES (4, 'The Bastard', "Just literally.  I'm a very honrable guy.");


-- create authors table
CREATE TABLE authors_week_3 (
  id INT(11) AUTO_INCREMENT,
  email VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
-- insert data into authors table
INSERT INTO authors_week_3 (email, first_name, last_name) VALUES ('georgerr@winterfell.com', 'George', 'Martin');
INSERT INTO authors_week_3 (email, first_name, last_name) VALUES ('jamie@lanister.com', 'Jamie', 'Lanister');
INSERT INTO authors_week_3 (email, first_name, last_name) VALUES ('tyrion@lanister.com', 'Tyrion', 'Lanister');
INSERT INTO authors_week_3 (email, first_name, last_name) VALUES ('john@winterfell.com', 'John', 'Snow');
INSERT INTO authors_week_3 (email, first_name, last_name) VALUES ('ayra@winterfell.com', 'Arya', 'Stark');
INSERT INTO authors_week_3 (email, first_name, last_name) VALUES ('ned@winterfell.com', 'Ned', 'Stark');
INSERT INTO authors_week_3 (email, first_name, last_name) VALUES ('tywin@lanister.com', 'Tywin', 'Lanister');


CREATE TABLE comments (
  id INT(11) AUTO_INCREMENT,
  post_id INT(11) NOT NULL,
  comment_text TEXT,
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
INSERT INTO comments (post_id, comment_text) VALUES (1, 'Move it buddy!');
INSERT INTO comments (post_id, comment_text) VALUES (1, 'But we cannot wait any longer!');
INSERT INTO comments (post_id, comment_text) VALUES (2, 'LOL!');
INSERT INTO comments (post_id, comment_text) VALUES (3, 'So true.');
INSERT INTO comments (post_id, comment_text) VALUES (3, 'I love to hate you.');
INSERT INTO comments (post_id, comment_text) VALUES (5, 'I agree.');


-- 3 table join
SELECT posts_week_3.title, posts_week_3.body, authors_week_3.first_name, authors_week_3.last_name, comments.comment_text
FROM posts_week_3 INNER JOIN authors_week_3 ON (posts_week_3.author_id = authors_week_3.id)
  INNER JOIN comments ON (posts_week_3.id = comments.post_id)




-- sub queries
SELECT * FROM posts_week_3 WHERE author_id = (SELECT id FROM authors_week_3 WHERE first_name = 'Tyrion' AND last_name = 'Lanister');
SELECT * FROM posts_week_3 WHERE author_id IN (SELECT id FROM authors_week_3 WHERE last_name = 'Lanister');




-- UPDATE and DELETE

-- update statement for every row 
UPDATE improved_posts_week_3 SET active = 0;

-- update statement with condition
UPDATE improved_posts_week_3 SET active = 1 WHERE author_id = 3;

-- update multiple columns
UPDATE improved_posts_week_3 SET active = 1, created_at = '2012-04-01' WHERE author_id != 3;

-- delete all rows in our posts_week_3 table
DELETE FROM posts_week_3;

-- delete all posts by author #1
DELETE FROM posts_week_3 WHERE author_id = 1
