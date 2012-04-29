-- blog application database
CREATE DATABASE blog_app;

-- users table
CREATE TABLE users (
  id INT(11) AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  UNIQUE KEY(email)
);
INSERT INTO users (email, first_name, last_name) VALUES ('tyrion@lanister.com', 'Tyrion', 'Lanister');
INSERT INTO users (email, first_name, last_name) VALUES ('jon@winterfell.com', 'Jon', 'Snow');
INSERT INTO users (email, first_name, last_name) VALUES ('arya@winterfell.com', 'Arya', 'Stark');
INSERT INTO users (email, first_name, last_name) VALUES ('tywin@lanister.com', 'Tywin', 'Lanister');
INSERT INTO users (email, first_name, last_name) VALUES ('jamie@lanister.com', 'Jamie', 'Lanister');
INSERT INTO users (email, first_name, last_name) VALUES ('rob@winterfell.com', 'Rob', 'Stark');
INSERT INTO users (email, first_name, last_name) VALUES ('daenerys@targaryen.com', 'Daenerys', 'Targaryen');
INSERT INTO users (email, first_name, last_name) VALUES ('varys@thespider.com', 'Lord', 'Varys');
INSERT INTO users (email, first_name, last_name) VALUES ('peter@littlefinger.com', 'Peter', 'Baelish');

-- posts table
CREATE TABLE posts (
  id INT(11) AUTO_INCREMENT,
  user_id INT(11) NOT NULL, 
  title VARCHAR(255) NOT NULL,
  body TEXT,
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  KEY(user_id)
);

CREATE TABLE comments (
  id INT(11) AUTO_INCREMENT,
  post_id INT(11) NOT NULL,
  body TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  KEY(post_id)
);

CREATE TABLE labels (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);
INSERT INTO labels (name) VALUES ('Sigil Related');
INSERT INTO labels (name) VALUES ('Snobbish');
INSERT INTO labels (name) VALUES ('Funny');
INSERT INTO labels (name) VALUES ('Whining');

CREATE TABLE posts_labels (
  post_id INT(11) NOT NULL,
  label_id INT(11) NOT NULL,
  UNIQUE KEY(post_id, label_id)
);