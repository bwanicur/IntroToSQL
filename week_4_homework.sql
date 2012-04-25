-- This week please use the data_set.sql for your homework data.

-- 1.  Find the oldest age among all of our employees.

-- 2.  Write a query that returns the number of employees that work at 'Lynch-Windler' company.  The query must return a number.  You cannot manually count rows to get this answer.

-- 3.  Write a query that returns the combined age of all employees that work at 'Batz LLC' company.  The query must return a number.

-- 4.  We have a catalog that lists our employees (last_name, first_name) by alphabetical order of the last name.  It also lists 10 employees per page.  Write a query that would return the employees that would be listed on page 3 of this catalog.

-- 5.  Create the following 2 resource tables blog_posts and tags.  Give them a many to many relationship using an intersection table.  You will need a total of 3 tables to accomplish this task.  Create a few blog_posts and tags with INSERT INTO statements.  Create a few relationships between your blog_posts and tags by inserting data into your intersection table.  Write a query fetching all the blog_posts and their related tags.

-- 6.  Write a query that will find employees id, first name, last name and all skill names for the first 10 employees that have skills.

-- 7.  Write a query to find return employee first name, last name, and all skill names for employees that work for 'Lebsack-Frami' company.

-- 8.  Write a query to find return employee first name, last name, age, company name, and all skill names for employees that work for 'Watsica-Marquardt' or 'Bechtelar, Turcotte and Hettinger' and are younger than 70.  



-- BONUS:

-- Write a query that will return employee first name, last name, and the number of skills they have.  (hint: use GROUP BY and COUNT)

-- Write a query that will retrn employee first name, last name, and the number of skills they have for employees with more that 1 skill. (hint: use GROUP BY, COUNT, and HAVING)