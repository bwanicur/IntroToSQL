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
)

-- create posts table
CREATE TABLE posts (
  id INT(11),
	author_initials CHAR(2),
	title VARCHAR(255),
	body TEXT,
	created_at DATETIME
)

-- insert some data into posts table


