USE coffee_store;
SELECT * FROM products;
SELECT * FROM orders;
-- Innner join where it joins the common values from the both the tables 
SELECT products.name, products.price , orders.order_time FROM orders INNER JOIN products ON orders.product_id=products.id;
SELECT p.name,p.price,o.order_time FROM orders o JOIN products p ON o.product_id=p.id WHERE o.product_id = 5 ORDER BY o.order_time; 

SELECT * FROM customers;
SELECT * FROM orders;

SELECT DISTINCT c.first_name, c.gender ,c.phone_number,o.order_time FROM orders o INNER JOIN customers c ON 
o.customer_id = c.id WHERE o.product_id >=5 AND c.gender = 'M' AND c.phone_number IS NOT NULL ORDER BY o.order_time;

-- lEFT jOIN WILL RETRIVE DATA FROM THE LEFT TABLE AND MATCHING ROWS FROM THE RIGHT TABLE
UPDATE orders SET customer_id = 1
WHERE id = 205;
SELECT * FROM orders;
SELECT c.id, c.phone_number, c.last_name, o.order_time FROM orders o LEFT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time LIMIT 10;
SELECT c.id, c.phone_number, c.last_name, o.order_time FROM customers c LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time LIMIT 10;

-- RIGHT JOIN WILL RETRIVE THE DATA FROM THE RIGHT TABLE WHICH IS MACHING TOWARDS THE LEFT TABLE
SELECT c.id, c.phone_number, c.last_name, o.order_time FROM orders o RIGHT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time LIMIT 10;
SELECT c.id, c.phone_number, c.last_name, o.order_time FROM customers c RIGHT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time LIMIT 10;

-- JOINING MORE THAN TWO TABLES
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;

SELECT c.first_name,c.gender,c.phone_number,p.name,p.price,p.coffee_origin,o.order_time 
FROM orders o INNER JOIN customers c INNER JOIN products p
ON o.customer_id=c.id AND o.product_id = p.id ORDER BY order_time LIMIT 5;

SELECT c.first_name,c.gender,c.phone_number,p.name,p.price,p.coffee_origin,o.order_time 
FROM orders o JOIN customers c JOIN products p
ON o.customer_id=c.id AND o.product_id = p.id ORDER BY order_time LIMIT 5;

SELECT c.first_name,c.gender,c.phone_number,p.name,p.price,p.coffee_origin,o.order_time 
FROM orders o JOIN products p ON o.product_id = p.id
JOIN customers c ON o.customer_id=c.id ORDER BY order_time LIMIT 5;

SELECT c.first_name,c.gender,c.phone_number,p.name,p.price,p.coffee_origin,o.order_time 
FROM products p JOIN orders o ON  p.id = o.product_id
JOIN customers c ON o.customer_id=c.id WHERE last_name = 'Martin' ORDER BY order_time LIMIT 5;

-- EXERCISE 1
-- 1.SELECT THE ORDER ID  AND ORDER TIME FOR ALL ORDERS FROM FEMALES IN JANUARY 2017
SELECT o.id, o.order_time FROM orders o INNER JOIN customers c ON o.customer_id = c.id WHERE c.gender = 'F' ORDER BY o.order_time BETWEEN '2017-01-01' AND '2017-01-31';
-- 2.SELECT PRODUCT NAME AND ORDER TIME FOR FILTER COFFEES SOLD BETWEEN JANUARY 15 2017 AN 
-- FEBRUARY 14 2017
SELECT p.name, o.order_time FROM products p INNER JOIN orders o ON p.id = o.product_id WHERE o.order_time BETWEEN '2017-01-15' AND '2017-02-14';
-- 3.SLECT THE PRODUCT NAME AND PRICE AND ORDER TIME FOR ALL ORDERS FROM FEMALES IN JANUARY 2017
SELECT p.name, p.price, o.order_time FROM products p 
JOIN orders o ON p.id = o.product_id
JOIN customers c ON o.customer_id = c.id
WHERE c.gender = 'F' ORDER BY order_time BETWEEN '2017-01-01' AND '2017-02-31';