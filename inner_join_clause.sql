-- Two type of join in SQL 
-- INNER jOIN 
-- OUTER JOIN
-- LEFT JOIN


SELECT *
FROM orders
JOIN customers
		ON orders.customer_id = customers.customer_id



SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers 
		ON orders.customer_id = customers.customer_id


SELECT order_id, products.product_id, quantity, order_items.unit_price, products.name
FROM order_items
JOIN products 
		ON products.product_id = order_items.product_id



-- USING ALIAS TO AVOID REPETITION
SELECT order_id, O.customer_id, first_name, last_name
FROM orders O
JOIN customers C
		ON O.customer_id = C.customer_id