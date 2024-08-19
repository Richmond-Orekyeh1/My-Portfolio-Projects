-- Return all the products
-- name
-- unit price
-- new price (unit price * 1.1)
SELECT 
	name, 
    unit_price, 
    (unit_price * 1.1) AS new_price 
FROM sql_inventory.products
;


-- Get the orders placed this year
SELECT * 
FROM sql_store.orders
WHERE order_date >= '2019-01-01'
;


-- From the order_items table, get the items
-- 		for order #6
--  	where the total price is greater than 30
SELECT * 
FROM sql_store.order_items
WHERE order_id = 6 AND unit_price * quantity > 30
;


-- Return products with
--  	quantity in stock equal to 49,38, 72
SELECT * 
FROM sql_inventory.products
WHERE quantity_in_stock IN (49, 38, 72)
;


-- Return customer born
-- 		between 1/1/1990 and 1/1/2000
SELECT *
FROM sql_store.customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
;

-- Get the customers whose 
-- addresses contain TRAIL or AVENUE
SELECT *
FROM sql_store.customers
WHERE address LIKE '%Trail%' OR 
	  address LIKE'%Avenue%'
;

-- Phone numbers end with 9
SELECT *
FROM sql_store.customers
WHERE phone LIKE '%9'
;

-- Phone numbers end with 9
SELECT *
FROM sql_store.customers
WHERE phone NOT LIKE '%9'
;


-- Get the customers whose 
-- first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'Elka|Ambur'
;

-- last names end with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$'
;


-- Get the orders that are not shipped

SELECT *
FROM sql_store.orders
WHERE shipped_date IS NULL OR 
shipper_id IS NULL
;

-- Get the total price of order_items where order_id is 2, sort by total price Desc
SELECT *, quantity * unit_price AS total_price
FROM sql_store.order_items
WHERE order_id = 2
ORDER BY total_price DESC
;

-- last names start with MY or contains SE 
SELECT *
FROM customers
WHERE last_name REGEXP '^my|se'
;

-- last names contain B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]'
;


-- Get the top three loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3
;


-- Write a query to join the order items table to the products table
--   Return the order id, product id, quantity and unit price
SELECT order_id, p.product_id, quantity, oi.unit_price
FROM order_items AS oi
JOIN products AS p
	ON oi.product_id = p.product_id
    ;
    
    
    
-- Write a query to join the clients table, payments table to the payment methods table
--    Return the clients names, payment dates, amount and payment methods
SELECT 
	p.date,
    p.invoice_id,
    p.amount,
    c.name,
    pm.name AS payment_method
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
    ;
    
    
-- Write a query to produce the product id, product name and quantities ordered
SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
;


-- Write a query to produce the order id and order date from the order table, customer name, shipper name and order status
SELECT 
    o.order_id,
    o.order_date,
    c.first_name customer,
    sh.name shipper,
	os.name status
FROM orders o
JOIN  customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER BY status;
    
    
    
-- Write a query to produce the payment date from the payments table, client name, the amount paid, and the method of payment with the "USING" statement   
SELECT 
	p.date,
	c.name client,
    p.amount,
	pm.name payment_method
FROM payments p
JOIN clients c
	USING (client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;


-- Do a cross join between shippers and products
--    using the implicit syntax
SELECT 
	p.product_id,
    p.name product,
    sh.name shipper
FROM shippers sh, products p
ORDER BY p.product_id
;

--    and then using the explicit syntax
SELECT 
	p.product_id,
    p.name product,
    sh.name shipper
FROM products p
CROSS JOIN shippers sh
ORDER BY p.product_id
;
    

-- Write a query to produce the name, customer_id, points, and the types of ranking they belong to
SELECT 
	customer_id,
	first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT 
	customer_id,
	first_name,
    points,
    'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT 
	customer_id,
	first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name
;


INSERT INTO products (name, 
			quantity_in_stock, 
            unit_price)
VALUES  ('product1', 55, 8.66), 
		('product2', 66, 12.45),
        ('product3', 44, 20.33);


-- Write a query to create a new table called new_invoices containing the data in invoices table but change the client_id to client name using Subquery
CREATE TABLE new_invoices AS 
SELECT 
	i.invoice_id,
	i.number,
    c.name client,
	i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE i.payment_date IS NOT NULL
;

    
-- Write a SQL statement to 
--   give any customers born brfore 1990
--   50 extra points
UPDATE customers
SET 
	points = points + 50
WHERE birth_date < '1990-01-01';


-- Write a SQL statement to update the comments on all the customers who have more than 3000 points to Gold Customers using the UPDATE statement and Subquery
UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN 
			(SELECT customer_id
			FROM customers
			WHERE points > 3000);
    
    
    
    
    