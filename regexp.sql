-- Used for string searching
-- Allows us to seacrh for more complex patterns


SELECT * 
FROM customers
WHERE last_name REGEXP 'field'

-- ^ used to indicate the beginning of a strings
-- same with start with field
SELECT * 
FROM customers
WHERE last_name REGEXP '^field'


-- $ used to indicate the end of a strings
-- same with endwith field
SELECT * 
FROM customers
WHERE last_name REGEXP 'field$'


-- | used to search for multiple search pattern
-- search anywhere in the string for FIELD or MAC or ROSE
SELECT * 
FROM customers
WHERE last_name REGEXP 'field|mac|rose'

SELECT * 
FROM customers
WHERE last_name REGEXP 'field$|^mac|rose'

-- the searches for any character that has
-- combination of the word in the square bracket []
SELECT * 
FROM customers
WHERE last_name REGEXP '[gim]e'

SELECT * 
FROM customers
WHERE last_name REGEXP 'e[gim]'


-- SELECT A RANGE OF A CHARACTER
SELECT * 
FROM customers
WHERE last_name REGEXP '[a-h]e'



-- ^ beginning of a string
-- $ end of a string
-- | logical OR
-- [abcd] match any single or combination of caracter
-- [a-h] range of character


