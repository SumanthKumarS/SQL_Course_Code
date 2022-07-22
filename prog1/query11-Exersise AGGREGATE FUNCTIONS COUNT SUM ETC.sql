USE cinema_booking_system;
SELECT * FROM bookings;
SELECT SUM(no_seats) FROM rooms WHERE id >= 3;
SELECT MAX(length_min) FROM films;
SELECT MIN(length_min) FROM films;
SELECT AVG(length_min) FROM films;
SELECT AVG(length_min) FROM films WHERE length_min > 120;

-- HOW MANY BOOKINGS DID CUSTOMER ID 10 MAKE IN OCTOBER 2017
SELECT COUNT(*) FROM bookings b 
JOIN screenings s ON b.screening_id = s.id
JOIN customers c ON b.customer_id = c.id
WHERE b.customer_id = 10 AND s.start_time BETWEEN '2017-10-01' AND '2017-10-31';
-- COUNT THE NUMBER OF SCREENINGS FOR BALDE RUNNER 2049 IN OCTOBER 2017.alter
SELECT COUNT(*) FROM screenings s 
JOIN films f ON s.film_id = f.id
WHERE f.name = 'Blade Runner 2049' AND s.start_time BETWEEN '2017-10-01' AND '2017-10-31';
-- COUNT THE NUMBER OF UNIQUE CUSTOMERS WHO MADE A BOOKING FOR OCTOBER 2017.
SELECT COUNT(DISTINCT c.id) FROM customers c
JOIN bookings b ON c.id = b.customer_id
JOIN screenings s ON b.screening_id = s.id
WHERE s.start_time BETWEEN '2017-10-01' AND '2017-10-31';