-- IS NULL gets value of a Null column field

SELECT * 
FROM customers
WHERE phone IS NULL


SELECT * 
FROM customers
WHERE phone IS NOT NULL


-- ORDER BY CLAUSE
-- SORTING DATA IN OUR SQL QUERY


SELECT *
FROM customers
ORDER BY first_name DESC

SELECT *
FROM customers
ORDER BY first_name ASC

SELECT *
FROM customers
ORDER BY state DESC, first_name ASC


-- you can sort data from any column 
-- even when its not in the select clause
SELECT first_name, last_name
FROM customers
ORDER BY birth_date


SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC



-- The LIMIT CLAUSE
SELECT *
FROM customers
LIMIT 3


-- FOR PAGINATION WITH LIMIT
-- it would skip preceding records and would start from the 6th item in the database 
-- and woul select 4 item after the 5th item
SELECT *
FROM customers
LIMIT 5, 4








