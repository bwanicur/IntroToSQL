-- Week 3 Homework - Joins with 3 Tables

-- Execute the following SQL statements to create and populate the tables for our excersizes.
CREATE TABLE customers (
  id int(11) AUTO_INCREMENT,
  email VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  UNIQUE KEY(email)
);
INSERT INTO customers (email, first_name, last_name) VALUES ('rob@winterfell.com', 'rob', 'stark');
INSERT INTO customers (email, first_name, last_name) VALUES ('john@winterfell.com'. 'john', 'snow');
INSERT INTO customers (email, first_name, last_name) VALUES ('ned@winterfell.com', 'eddard', 'stark');
INSERT INTO customers (email, first_name, last_name) VALUES ('tyrion@lanister.com', 'tyrion', 'lanister');
INSERT INTO customers (email, first_name, last_name) VALUES ('davos@seaworth.com', 'davos', 'seaworth');
INSERT INTO customers (email, first_name, last_name) VALUES ('jamie@lanister.com', 'jamie', 'lanister');


CREATE TABLE orders (
  id INT(11) AUTO_INCREMENT,
  customer_id INT(11) NOT NULL,
  short_desc VARCHAR(255),
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id),
  KEY(customer_id)
);
INSERT INTO orders (customer_id, short_desc) VALUES (1, 'Wolf Grooming Supplies');
INSERT INTO orders (customer_id, short_desc) VALUES (5, 'Ship Repair Supplies');
INSERT INTO orders (customer_id, short_desc) VALUES (6, 'Hair Beauty Products');
INSERT INTO orders (customer_id, short_desc) VALUES (4, 'Shoe Products');
INSERT INTO orders (customer_id, short_desc) VALUES (4, 'Candles');


CREATE TABLE order_items (
  id INT(11) AUTO_INCREMENT,
  order_id INT(11) NOT NULL,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(id),
  KEY(order_id)
);
INSERT INTO order_items (order_id, name) VALUES (1, 'Wolf Brush');
INSERT INTO order_items (order_id, name) VALUES (1, 'Flea Shampoo');
INSERT INTO order_items (order_id, name) VALUES (1, 'Tick Repellent');
INSERT INTO order_items (order_id, name) VALUES (2, 'Tar');
INSERT INTO order_items (order_id, name) VALUES (2, 'Wooden Slats');
INSERT INTO order_items (order_id, name) VALUES (3, 'Fancy Comb');
INSERT INTO order_items (order_id, name) VALUES (3, 'Hair Gel');
INSERT INTO order_items (order_id, name) VALUES (4, 'Heightening Heels');
INSERT INTO order_items (order_id, name) VALUES (4, 'High Boots');
INSERT INTO order_items (order_id, name) VALUES (4, 'Shoe Shine');
INSERT INTO order_items (order_id, name) VALUES (5, 'Sandalwood Scented Candle');
INSERT INTO order_items (order_id, name) VALUES (6, 'Unscented Candle');
INSERT INTO order_items (order_id, name) VALUES (6, 'Candle Stand');





-- Excersizes:
-- 1. Query an order for every customer.  Here is what we need:  Email, First Name, Last Name, Order Description, All Order Item Names.  We must know which Order Items belong to which Customer.
-- 2.  Repeat step one, but we only want the Order and Order Items for Rob Stark.
-- 3.  Query the Order Names and all Order Items for all 'Lanister' orders.  We do not need any customer information.
-- 4.  Find the Email, First Name, Last Name, Order Description, All Order Item Names for all orders that did NOT come from the customers with '@winterfell.com' or '@lanister.com'.
-- 5. Find all of the Order Items only for Tyrion Lanister's "Shoe Products" order.  Assume that you do not have access to order.id here.  Hint:  Scope your query using the order.short_desc

-- Extra Credit:  Come up with some of your own queries!  Play around with joining 2 tables, then add the third.



