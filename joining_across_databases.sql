-- Joining multiple databases together
USE sql_store;

SELECT *
FROM order_items OI
JOIN sql_inventory.products P
		ON OI.product_id = P.product_id