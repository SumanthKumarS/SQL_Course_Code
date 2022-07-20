-- where clause atatement
USE coffee_store;
SELECT * FROM products WHERE price = '3.50';
SELECT * FROM products WHERE price = '3.50'
AND coffee_origin = 'India';
SELECT * FROM products WHERE price = '3.50'
OR coffee_origin = 'USA';

-- where clause with greater than or equal or not equal
SELECT * FROM products;
SELECT * FROM products WHERE price = '3.50';
SELECT * FROM products WHERE price >= '3.0';
SELECT * FROM products WHERE price > '3.0';
SELECT * FROM products WHERE price <= '3.0';
SELECT * FROM products WHERE price < '3.0';

-- finding the null values
SELECT * FROM customers;
SELECT * FROM customers WHERE phone_number IS NULL;
SELECT * FROM customers WHERE phone_number AND last_name IS NOT NULL;

-- Exersise
-- 1. from the customer table select the first name and phone numbers of all females who have last name bluth.
SELECT first_name, phone_number FROM customers WHERE gender = 'F' AND last_name = 'Bluth';

-- 2. From the products table, select the name for all products that have a price greater than or a coffee origin of Sri Lanka
SELECT name FROM products WHERE price > 3.00 or coffee_origin = 'Sri Lanka';

-- 3. How many male customers don't have a phone number entered into the customers table
SELECT * FROM customers WHERE gender='M' AND phone_number IS NULL;
SELECT COUNT(*) FROM customers WHERE gender='M' AND phone_number IS NULL;