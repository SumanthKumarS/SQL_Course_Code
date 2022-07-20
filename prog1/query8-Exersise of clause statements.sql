SHOW DATABASES;
USE coffee_store;
SELECT * FROM customers;
-- if comparing multiple values
SELECT * FROM customers WHERE last_name IN ('Taylor','Bluth','Armstrong');
-- not in for multiple values
SELECT * FROM customers WHERE first_name NOT IN ('Katie','John','George');

SELECT * FROM orders;
SELECT * FROM products;
SELECT product_id, customer_id, order_time FROM orders;

-- finding the between values using between key words
SELECT product_id, customer_id, order_time FROM orders WHERE order_time BETWEEN '2017-01-01' AND '2017-01-07'; 
SELECT product_id, customer_id, order_time FROM orders WHERE customer_id BETWEEN 1 AND 5; 
SELECT * FROM customers WHERE last_name BETWEEN 'A' AND 'L'; 

-- Like statement in the query
SELECT * FROM customers WHERE last_name LIKE 'W%'; -- % taking last name as W and followed by number of characters
SELECT * FROM customers WHERE last_name LIKE 'Wa%';
SELECT * FROM customers WHERE last_name LIKE 'o%';
SELECT * FROM customers WHERE last_name LIKE '%o%'; -- sentence with before and after the charcter o
SELECT * FROM customers WHERE last_name LIKE 'o_'; -- _ which returns for one character
SELECT * FROM customers WHERE last_name LIKE '_o'; -- _ which returns for one character
SELECT * FROM customers WHERE first_name LIKE '%o%'; 
SELECT * FROM customers WHERE first_name LIKE '_o_'; 

-- creating  a list using order by clause
SELECT * FROM products;
SELECT * FROM products ORDER BY price ASC; -- price value by ordering by ascending value
SELECT * FROM products ORDER BY price DESC; -- price value by ordering by descending value

SELECT * FROM customers ORDER BY last_name ASC;
SELECT * FROM customers ORDER BY last_name DESC;

SELECT * FROM orders;
SELECT * FROM orders ORDER BY order_time ASC;
SELECT * FROM orders WHERE customer_id = 1 ORDER BY order_time ASC;
SELECT * FROM orders WHERE customer_id = 1 ORDER BY order_time DESC;

-- Exercise 2
-- 1. From the products table select the name and price of all products with a 
-- coffee origin equal to clolmbia or indonesia order by name from A-Z
SELECT name, price FROM products WHERE coffee_origin = 'USA' or coffee_origin = 'Costa Rica' ORDER BY name ASC;

-- 2. from the orders table select all the orders from february 2017 for customers with ids of 2,4,6,8.
SELECT * FROM orders WHERE order_time >= '2017-02-01' AND customer_id IN (2,4,6,8);
SELECT * FROM orders WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28' AND customer_id IN (2,4,6,8);

-- 3. fROM THE CUSTOMERS TABLE SELECT THE FIRST NAME AND PHONE NUMBER OF ALL THE CUSTOMERS WHOS LAST NAME CONTAINS 'ar'
SELECT first_name, phone_number,last_name FROM customers WHERE last_name LIKE '%ar%';