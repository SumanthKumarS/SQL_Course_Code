-- CONCATENATE
USE cinema_booking_system;
SELECT CONCAT(first_name,last_name) AS full_name FROM customers;
SELECT CONCAT(first_name," ",last_name) AS full_name FROM customers;
SELECT CONCAT(first_name," ",last_name," ",email) AS full_name FROM customers;

SELECT CONCAT("THIS IS FIRST NAME :",first_name," ","LAST NAME :",last_name," ","EMAIL :",email) AS full_name FROM customers;

-- SUBSTRING
SELECT SUBSTRING("examples",3,2) AS sub; -- SUBSTRING('STRING',STARTING INDEX, LENGTH)
SELECT SUBSTRING("examples",3) AS sub;

SELECT name FROM films;
SELECT SUBSTRING(name,1,3) AS short_name FROM films;
SELECT SUBSTRING(name,5,4) AS short_name FROM films;
SELECT SUBSTRING(name,-2,2) AS short_name FROM films;
SELECT SUBSTRING(name,-6,6) AS short_name FROM films;

-- UPPER AND LOWER STRING FUNCTIONS
SELECT UPPER(name) FROM films;
SELECT name FROM rooms;
SELECT UPPER(name) FROM rooms;
SELECT LOWER(name) FROM rooms;

SELECT name FROM rooms;
SELECT UPPER(name) AS upper FROM rooms;
SELECT LOWER(name)  AS lower FROM rooms;

-- EXERCISE 1
-- CONCATENATE THE FILM NAME AND LENGTH FROM THE FIMLS TABLE
SELECT CONCAT(name," ",length_min) AS film_length FROM films; 

-- EXTRACT THE CUSTOMERS EMAIL FROM THE 5 TH CHARACTER ONWARDS
SELECT SUBSTRING(email,5) AS customer_email FROM customers;

-- SELECT THE CUSTOMERS FIRST NAME IN LOWER CASE AND THEIR LAST NAME IN UPPER CASE FOR EACH CUSTOMER
-- WITH LAST NAME OF 'Smith
SELECT LOWER(first_name),UPPER(last_name) FROM customers WHERE last_name = 'Smith';

-- SELECT THE LAST 3 LETTERS OF EACH FILM NAME FROM THE FILMS TABLE
SELECT SUBSTRING(name,-3) FROM films;

-- CONCATENATE THE FIRST THREE LETTERS IN THE FIRST_NAME AND LAST_NAME COLUMNS TOGETHER
-- FROM THE CUSTOMERS TABLE
SELECT CONCAT(SUBSTRING(first_name,1,3)," ",SUBSTRING(last_name,1,3)) FROM customers;