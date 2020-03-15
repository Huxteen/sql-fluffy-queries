USE sql_store;

SELECT *
FROM customers;

SELECT *
FROM customers
ORDER BY first_name;

SELECT *
FROM customers
WHERE customer_id = 2;


-- The SELECT Clause in details
-- SQL OPERATORS 
--   Additions (+)
--   subtraction (-)
--   division (/)
--   multiplication (*)
--   modulus (%)
-- ORDER OF OPERATORS (BODMAS)

SELECT 
    first_name, 
    last_name, 
    points, 
    (points+10) * 25 AS discount_factor,
FROM customers

-- SELECT 
--     first_name, 
--     last_name, 
--     points, 
--     (points+10) * 25 AS "discount factor",
-- FROM customers


-- Select Distinct state in a table
SELECT DISTINCT state
FROM customers


SELECT 
			name, 
      unit_price,
      unit_price*1.1 AS new_price
FROM products;






-- THE WHERE CLAUSE IN DETAIL

-- COMPARISM OPERATORS IN SQL
  -- Equal to ( > )
  -- Less than ( < )
  -- Equal to (=)
  -- Greater than equal to (>=)
  -- Less than equal to (<=)
  -- Not Equal to (<> or != )

SELECT *
FROM customers
where points > 2000

--  'YEAR-MONTH-DAY'

SELECT *
FROM customers
where birth_date >  '1990-01-01'





-- THE AND, OR and NOT Operators
-- ORDER OF OPERATION
-- the order of these operators
--   AND
--   OR
--   NOT

SELECT * 
FROM customers
WHERE birth_date >= '1990-01-01' AND points > 1000

SELECT * 
FROM customers
WHERE birth_date >= '1990-01-01' OR points > 1000


SELECT * 
FROM customers
WHERE birth_date >= '1990-01-01' OR 
				(points > 1000 AND state = 'VA')


SELECT * 
FROM customers
WHERE NOT (birth_date >= '1990-01-01' OR points > 1000)
-- |||
SELECT * 
FROM customers
WHERE birth_date <= '1990-01-01' AND points < 1000


SELECT * 
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30


