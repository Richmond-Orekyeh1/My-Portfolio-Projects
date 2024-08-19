USE sql_store;

SELECT 
	last_name, 
    first_name, 
    points, 
    (points + 10) * 100 AS 'discount factor'
FROM customers
;

SELECT DISTINCT state
FROM customers;


SELECT *
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE state = 'VA';

SELECT *
FROM customers
WHERE state != 'VA';

SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000
;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 1000
;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA'
;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR 
	(points > 1000 AND state = 'VA')
;

SELECT *
FROM customers
WHERE NOT (birth_date > '1990-01-01' OR points > 1000 AND state = 'VA')
;

SELECT *
FROM customers
WHERE NOT (birth_date <= '1990-01-01' AND points <= 1000)
;

SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA')
;

SELECT *
FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA')
;

SELECT *
FROM customers
WHERE points >= 1000 AND points <= 3000
;

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000
;

SELECT *
FROM customers
WHERE last_name LIKE 'b%'
;

SELECT *
FROM customers
WHERE last_name LIKE 'brush%'
;

SELECT *
FROM customers
WHERE last_name LIKE '%b%'
;

SELECT *
FROM customers
WHERE last_name LIKE '%y'
;


SELECT *
FROM customers
WHERE last_name LIKE '_____y'
;

SELECT *
FROM customers
WHERE last_name LIKE 'b____y'
;

-- % for any number of characters
-- _ for single character


-- Phone numbers end with 9
SELECT *
FROM customers
WHERE last_name LIKE '%field%'
;



SELECT *
FROM customers
WHERE last_name REGEXP 'field'
;


SELECT *
FROM customers
WHERE last_name REGEXP 'field'
;

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac'
;

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac|rose'
;

SELECT *
FROM customers
WHERE last_name REGEXP '^field|mac|rose'
;

SELECT *
FROM customers
WHERE last_name REGEXP 'field$|mac|rose'
;

SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e'
;

SELECT *
FROM customers
WHERE last_name REGEXP 'e[gim]'
;

SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e'
;

-- ^ to represent the begining of a string (meaning it must start with 'Field')
-- $ to represent the end of a string (meaning it must end with 'Mac')
-- | to seach for multiple strings or word (logical or)
-- [abcd] to match any single character listed in the squarebracket
-- [-] to represent a range e.g [a-m]


SELECT *
FROM customers
WHERE phone IS NULL
;

SELECT *
FROM customers
WHERE phone IS NOT NULL
;

SELECT *
FROM customers
ORDER BY first_name DESC
;

SELECT *
FROM customers
ORDER BY state, first_name
;

SELECT *
FROM customers
ORDER BY state DESC, first_name DESC
;

SELECT first_name, last_name
FROM customers
ORDER BY birth_date
;

SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points, first_name
;


SELECT *
FROM customers
LIMIT 3
;

SELECT *
FROM customers
LIMIT 6, 3
;

-- Get the top three loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3
;


SELECT *
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id
    ;
    
SELECT order_id, first_name, last_name
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id
    ;
    
SELECT order_id, O.customer_id, first_name, last_name
FROM orders AS O
JOIN customers AS C
	ON O.customer_id = C.customer_id
    ;
    
-- USE sql_inventory;
    
SELECT *
FROM sql_store.order_items oi
JOIN sql_inventory.products p
	ON oi.product_id = p.product_id
    ;
    

-- USE sql_hr;

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name manager
FROM employees e
join employees m
	ON e.reports_to = m.employee_id;
   
   
SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id
    ;
    
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;
    

SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
-- Implicit Join Syntax
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o 
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM orders o 
RIGHT JOIN customers c
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id;


SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name shipper
FROM customers c
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;
    
-- USE sql_hr;

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id;
    
    
    
SELECT 
	o.order_id,
	c.first_name,
	sh.name shipper
FROM orders o
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id);


SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;
    
    
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	USING (order_id, product_id);
    
USE sql_invoicing;


SELECT 
	o.order_id,
    c.first_name
FROM orders o 
NATURAL JOIN customers c;


SELECT 
	c.first_name customer,
    p.name product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name
;

SELECT 
	c.first_name customer,
    p.name product
FROM customers c, orders o
ORDER BY c.first_name
;


-- UNION
SELECT 
	order_id,
	order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	order_id,
	order_date,
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01';


SELECT first_name
FROM customers
UNION
SELECT name 
FROM shippers;


SELECT first_name, last_name
FROM customers
UNION
SELECT name 
FROM shippers;


INSERT INTO customers
VALUES (
	DEFAULT, 
    'John', 
    'Smith', 
    '1990-01-01',
    NULL,
    'address',
    'city',
    'CA',
    DEFAULT
    );
    
    -- OR
    
    INSERT INTO customers (
		first_name,
        last_name,
        birth_date,
        address,
        city,
        state)
VALUES (
    'John', 
    'Smith', 
    '1990-01-01',
    'address',
    'city',
    'CA'
    );
    

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 2.95),
		(LAST_INSERT_ID(), 2, 1, 3.95);


CREATE TABLE orders_archived AS 
SELECT * FROM orders;
-- SUBQUERY is a select statement inside another select statement.

--  Another example of Subquery
INSERT INTO orders_archived
SELECT * 
FROM orders
WHERE order_date < '2019-01-01';


UPDATE invoices
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1;

UPDATE invoices
SET payment_total = 0, payment_date = NULL
WHERE invoice_id = 1;

UPDATE invoices
SET payment_total = DEFAULT, payment_date = NULL
WHERE invoice_id = 1;


UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id = 
			(SELECT client_id
            FROM clients
            WHERE name = 'Myworks');
				

UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id IN
			(SELECT client_id
            FROM clients
            WHERE state IN ('CA', 'NY'));


UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE payment_date IS NULL;


DELETE FROM invoices
WHERE invoice_id = (
		SELECT * 
		FROM clients
		WHERE name = 'Myworks');
        
        



;
            

