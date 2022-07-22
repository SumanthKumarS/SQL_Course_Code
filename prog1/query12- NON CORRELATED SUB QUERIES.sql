-- NON CORRELATED SUB QUERIES
USE cinema_booking_system;
SELECT id, start_time FROM screenings WHERE film_id IN 
(SELECT id FROM films WHERE length_min > 120);
SELECT id FROM films WHERE length_min > 120;

SELECT * FROM customers;
SELECT * FROM bookings;
SELECT screening_id FROM bookings
WHERE customer_id IN 
(SELECT id FROM customers WHERE email = 'dmay@gmail.com');
SELECT first_name,last_name,email FROM customers
WHERE id IN 
(SELECT customer_id FROM bookings WHERE screening_id = 1);

SELECT * FROM reserved_seat;
SELECT MAX(b.no_seats) FROM 		-- after the from it uses as a seperat table which can also  be called as derived table 
(SELECT booking_id, COUNT(seat_id) AS no_seats FROM reserved_seat
GROUP BY booking_id) b; 	-- this table should be derived by a table

SELECT MAX(b.no_seats),AVG(no_seats) FROM 		-- after the from it uses as a seperat table which can also  be called as derived table 
(SELECT booking_id, COUNT(seat_id) AS no_seats FROM reserved_seat
GROUP BY booking_id) b; 	-- this table should be derived by a table