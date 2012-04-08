-- example people table
CREATE TABLE people (
  id INT(11),
  email VARCHAR(255) NOT NULL,
  initials CHAR(2), 
  active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP
);

-- naughty insert statements
-- wrong data types
INSERT INTO people (id, email, initials, active, created_at) VALUES ('not an INT', 99, 999, 'not a TINYINT', 'not a TIMESTAMP');

-- violate CHAR(2) string limit
INSERT INTO people (id, email, initials, active, created_at) VALUES (1, 'fake@email.com', 'Long string here', 1, NOW());

-- fail NOT NULL column
INSERT INTO people (id, email, initials, active, created_at) VALUES (2, NULL, 'BW', 1, NOW());

-- will not fail with NULL column
INSERT INTO people (id, initials, active, created_at) VALUES (3, 'BW', 1, NOW());

-- set strict mode
SET sql_mode = 'STRICT_ALL_TABLES';

-- query sql mode
SELECT @sql_mode;

-- set "regular" mode
SET sql_mode = '';


-- strict mode: will fail
INSERT INTO people (id, initials, active, created_at) VALUES (4, 'BW', 1, NOW());

-- strict mode will fail - violating char length
INSERT INTO people (id, email, initials, active, created_at) VALUES (5, 'fake@email.com', 'Too Long', 1, NOW());