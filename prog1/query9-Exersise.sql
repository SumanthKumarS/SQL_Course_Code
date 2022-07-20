USE coffee_store;
SELECT coffee_origin FROM products;
SELECT DISTINCT coffee_origin FROM products;

SELECT customer_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';
SELECT DISTINCT customer_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';
SELECT DISTINCT customer_id,product_id FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28';

-- limiting the number of row from appearing in resultant statement
SELECT * FROM customers;
SELECT * FROM customers LIMIT 5; 
SELECT * FROM customers LIMIT 5 OFFSET 5;  -- for moving to next set of data  
SELECT * FROM customers LIMIT 5 OFFSET 15;  -- for moving to next set of data  
SELECT * FROM customers ORDER BY last_name LIMIT 10;
SELECT * FROM customers ORDER BY last_name LIMIT 10 OFFSET 2;

-- COLUMN NAME alias when we rename the column name in the results
SELECT name AS coffee ,price, coffee_origin AS country FROM products;

-- Exersise 3
-- 1.From the customers table, select distinct last names and order alphabetically from A-Z
SELECT DISTINCT last_name FROM customers ORDER BY last_name ASC; 
-- 2.From the orders table, select the first 3 orders placed by customer with id 1, in february 2017
SELECT * FROM orders WHERE customer_id=1 AND order_time BETWEEN '2017-02-01' AND '2017-02-28' LIMIT 3;
-- 3.From the products table select the name price and coffee origin but rename the price to retail_price in the results set
SELECT name,price AS retail_price,coffee_origin FROM products;