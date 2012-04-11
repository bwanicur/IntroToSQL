-- This file contains some fun little assingments for you to play around with.  
-- Feel free to email me questions if you have them.  Make sure you review the "Week 2" class Wiki.

-- Please execute the following queries:
CREATE TABLE instruments (
  id INT AUTO_INCREMENT,
  category_id INT(11),
  name VARCHAR(255),
  description TEXT,
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
-- insert some data
INSERT INTO instruments (name, description) VALUES ('Piano', "Often the 'leader' of the rhtymn section.  You can do a lot with the Piano");
INSERT INTO instruments (name, category_id) VALUES ('Drums', 4);
INSERT INTO instruments (name, category_id, description) VALUES ('Bass', 3, "Only cool people can play this instrument.");
INSERT INTO instruments (name, category_id, description) VALUES ('Trumpet', 2, "You need an attitude for this one.");
INSERT INTO instruments (name, category_id, active, created_at) VALUES ('Flute', 1, 0, '2012-01-01');
INSERT INTO instruments (name, category_id, active, description, created_at) VALUES ('Viola de Gamba', 3, 0, 'Perhaps a predecessor to the bass?', '2012-02-10');
INSERT INTO instruments (name, category_id, description) VALUES ('Trombone', 2, 'People actually play this thing.');
INSERT INTO instruments (name, category_id, created_at) VALUES ('Saxophone', 1, '2012-02-21');
INSERT INTO instruments (name, category_id, description) VALUES ('Clarinet', 1, 'The licorice stick.');



-- QUERYING EXCERSIZES
-- All of the following queries can be completed with the tools learned in the "Week 2" class wiki.
--
-- 1. Write a query to find all of the inactive instruments.
-- 2. Write a query to find all the queries with NULL descriptions.
-- 3. Write a query to find all of the instruments belonging to category #3.
-- 4. Write a query to find instruments that are inactive and also have NULL descriptions.
-- 5. Write a query to find instruments that have a NULL category_id or are inactive.
-- 6. Write a query to find instruments with a created_at timestamp before April 1st, 2012.
-- 7. Write a query to find instruments with a created_at timestamp before April 1st 2012 and a NULL description.
-- 8. Write a query to find instruments with a created_at timestamp in the month of Feburary 2012.
  



-- Please execute the following queries:
CREATE TABLE categories (
  id INT AUTO_INCREMENT,
  name VARCHAR(255),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);
-- insert category data
INSERT INTO categories (name) VALUES ('Woodwind');
INSERT INTO categories (name) VALUES ('Brass');
INSERT INTO categories (name) VALUES ('Strings');
INSERT INTO categories (name) VALUES ('Percussion');


-- JOINS EXCERSIZES
-- All of the following queries can be complete with the tools learned in our Joins section of the "Week 2" class wiki.
--
-- 1.  Write a query to return all of the Woodwind category data and all of the Instrument data for instruments belonging to the Woodwind category.
--
-- 2.  Write a query to return the Brass category name and Instrument id, name, and description for instruments belonging to the Brass category.
--
-- 3.  Write a query to return the String category id and name and Instrument id and name for instruments belonging to the String category.  Please make sure that the category.id column is named "Category ID", the category.name column is named 'Category NAME', the instrument.id columns is named 'Instrument ID', and the instrument.name column is named 'Instrument NAME'.
--
-- 4.  Write a query to return the Woodwind category name and Instrument id and name for all active instruments that belong to the Woodwind category.
--
-- 5.  Write a query to return the Woodwind category name and Instrument id and name for instruments with NULL descriptions that belong to the Woodwind category.
--
-- 6.  Write a query to return the String category name and Instrument id and name for instruments with a created_at timestamps in the month of Feburary that belong to the String category.

