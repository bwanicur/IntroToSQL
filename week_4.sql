CREATE TABLE purchases (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  category VARCHAR(255),
  price DECIMAL(10,2),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
INSERT INTO purchases (name, category, price) VALUES ('t-shirt', 'clothing', 9.99);
INSERT INTO purchases (name, category, price) VALUES ('shoes', 'clothing', 34.99);
INSERT INTO purchases (name, category, price) VALUES ('eggs', 'food', 3.99);
INSERT INTO purchases (name, category, price) VALUES ('bread', 'food', 4.99);
INSERT INTO purchases (name, category, price) VALUES ('plates', 'kitchen-ware', 19.99);
INSERT INTO purchases (name, category, price) VALUES ('forks', 'kitchen-ware', 14.99);
INSERT INTO purchases (name, category, price) VALUES ('blanket', 'linens', 19.99);
INSERT INTO purchases (name, category, price) VALUES ('pillow case', 'linens', 4.99);


-- more select syntax
-- basic LIMIT
SELECT * FROM purchases LIMIT 2;

-- basic ORDER
SELECT * FROM purchases ORDER BY price;
SELECT * FROM purchases ORDER BY price ASC;
SELECT * FROM purchases ORDER BY price DESC;

-- LIMIT revisted
SELECT * FROM purchases ORDER BY price DESC LIMIT 4,3;

-- aggregate functions
-- basic COUNT
SELECT COUNT(*) FROM purchases;
SELECT COUNT(id) FROM purchases;

-- basic MAX
SELECT MAX(price) FROM purchases;

-- basic SUM
SELECT SUM(price) FROM purchases WHERE category = 'clothing';

-- GROUP BY
SELECT * FROM purchases;
SELECT * FROM purchases GROUP BY category;
SELECT COUNT(category), category FROM purchases GROUP BY category;
SELECT COUNT(category) FROM purchases GROUP BY category HAVING category = 'food';



-- posts week 4
CREATE TABLE posts_week_4 (
  id INT(11) AUTO_INCREMENT,
  author_id INT(11) NOT NULL,
  title VARCHAR(255),
  body TEXT,
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
-- insert data
INSERT INTO posts_week_4 (author_id, title, body) VALUES (1, 'Next Book ?', 'One day I will finish.  Get off my back you nerds!');
INSERT INTO posts_week_4 (author_id, title, body) VALUES (2, 'About Me', 'Damn it feels good to be a Lanister!');
INSERT INTO posts_week_4 (author_id, title, body) VALUES (3, 'The Dwarf', 'I am by far the most likeable character.');
INSERT INTO posts_week_4 (author_id, title, body) VALUES (3, 'My Family', 'Rich but stupid.');
INSERT INTO posts_week_4 (author_id, title, body) VALUES (5, 'The Starks', 'Noble but stupid.');
INSERT INTO posts_week_4 (author_id, title, body) VALUES (3, 'The Imp', 'I hate that name.');
INSERT INTO posts_week_4 (author_id, title, body) VALUES (5, 'Me too', 'Also possibly the most likeable character.');
INSERT INTO posts_week_4 (author_id, title, body) VALUES (4, 'The Bastard', "Just literally.  I'm a very honrable guy.");


-- labels
CREATE TABLE labels (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  color VARCHAR(255) DEFAULT 'white',
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
INSERT INTO labels (name,color) VALUES ('rant', 'red');
INSERT INTO labels (name,color) VALUES ('whining', 'yellow');
INSERT INTO labels (name,color) VALUES ('funny', 'green');
INSERT INTO labels (name,color) VALUES ('sad', 'blue');

-- intersection table
CREATE TABLE posts_labels (
  post_id INT(11),
  label_id INT(11),
  UNIQUE KEY(post_id, label_id)
);

-- labeling posts
INSERT INTO posts_labels (post_id, label_id) VALUES (1,1);
INSERT INTO posts_labels (post_id, label_id) VALUES (1,3);
INSERT INTO posts_labels (post_id, label_id) VALUES (2,3);
INSERT INTO posts_labels (post_id, label_id) VALUES (6,2);
INSERT INTO posts_labels (post_id, label_id) VALUES (1,2);


-- find post 1 and all labels
SELECT posts_week_4.title, posts_week_4.body, labels.name AS label_name 
FROM posts_week_4 INNER JOIN posts_labels ON (posts_week_4.id = posts_labels.post_id)
  INNER JOIN labels ON (posts_labels.label_id = labels.id)
WHERE posts_week_4.id = 1;

-- all posts labeled as funny
SELECT posts_week_4.title, posts_week_4.body, labels.name AS label_name 
FROM posts_week_4 INNER JOIN posts_labels ON (posts_week_4.id = posts_labels.post_id)
  INNER JOIN labels ON (posts_labels.label_id = labels.id)
WHERE labels.name = 'funny';