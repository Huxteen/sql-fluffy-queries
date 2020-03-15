
-- USING THE IN OPERATORS

SELECT * 
FROM customers
WHERE state IN ('VA', 'GA', 'FL')

SELECT * 
FROM customers
WHERE state NOT IN ('VA', 'GA', 'FL')



-- USING THE BETWEEN OPERATORS
SELECT * 
FROM customers
WHERE points BETWEEN 1000 AND 3000

SELECT * 
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'



-- USING THE LIKE OPERATORS

-- % is used to represent any number of characters
--underscore ( _ ) to represent single character

-- Select all customer that starts with B
-- Actually SQL IS CASE INSENSITIVE
SELECT * 
FROM customers
WHERE last_name LIKE 'B%'

-- Select all customer that have B anywhere in their last_name
SELECT * 
FROM customers
WHERE last_name LIKE '%B%'

-- Select all customer that endwith with y
SELECT * 
FROM customers
WHERE last_name LIKE '%y'

SELECT * 
FROM customers
WHERE last_name NOT LIKE '%y'


-- Select all customer that 
-- has a y at a specific index depending on number of underscore
-- here we have 5
SELECT * 
FROM customers
WHERE last_name LIKE '_____y'


-- Select all customer that 
-- starts with B and depending on the number of underscore within the space
-- should end with Y
SELECT * 
FROM customers
WHERE last_name LIKE 'b____y'