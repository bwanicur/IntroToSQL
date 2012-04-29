-- week_5_authors
CREATE TABLE authors_week_5 (
  id INT(11) AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  UNIQUE KEY(email)
);
INSERT INTO authors_week_5 (email, first_name, last_name) VALUES ('ned@winterfell.com', 'Eddard', 'Stark');
INSERT INTO authors_week_5 (email, first_name, last_name) VALUES ('jamie@lanister.com', 'Jamie', 'Lanister');
INSERT INTO authors_week_5 (email, first_name, last_name) VALUES ('tyrion@lanister.com', 'Tyrion', 'Lanister');
INSERT INTO authors_week_5 (email, first_name, last_name) VALUES ('jon@winterfell.com', 'Jon', 'Snow');
INSERT INTO authors_week_5 (email, first_name, last_name) VALUES ('arya@winterfell.com', 'Arya', 'Stark');
INSERT INTO authors_week_5 (email, first_name, last_name) VALUES ('tywin@lanister.com', 'Tywin', 'Lanister');

-- week 5 posts
CREATE TABLE posts_week_5 (
  id INT(11) AUTO_INCREMENT,
  author_id INT(11) NOT NULL,
  title VARCHAR(255) NOT NULL,
  body TEXT,
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
INSERT INTO posts_week_5 (author_id, title, body) VALUES (3, "Tyrion's World", 'The world according to Tyrion.');
INSERT INTO posts_week_5 (author_id, title, body) VALUES (5, "Why I am a Badass", 'I really do not have say why.  That\'s how bad-assed I am.');
INSERT INTO posts_week_5 (author_id, title, body) VALUES (6, "Lord Tywin's Daily Threat", 'I will destroy your family, root and stem.');
INSERT INTO posts_week_5 (author_id, title, body) VALUES (2, "I'm Fantastic", 'Well, someone had to say it.  No ego here.');
INSERT INTO posts_week_5 (author_id, title, body) VALUES (7, "Missing Author", "I'm writing this post.  As soon as I'm done, I'm deleting my account.");



-- basic inner join
SELECT a.first_name, a.last_name, p.title, p.body
FROM authors_week_5 a INNER JOIN posts_week_5 p ON (a.id = p.author_id);

-- left outer join
SELECT a.id, a.first_name, a.last_name, p.id 'Post ID', p.title, p.body
FROM authors_week_5 a LEFT OUTER JOIN posts_week_5 p ON (a.id = p.author_id);

-- right outer join
SELECT a.id 'Author ID', a.first_name, a.last_name, p.id 'Post ID', p.title, p.body
FROM authors_week_5 a RIGHT OUTER JOIN posts_week_5 p ON (a.id = p.author_id);

