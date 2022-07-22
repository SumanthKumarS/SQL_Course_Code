USE cinema_booking_system;
SELECT * FROM bookings;

-- GROUP BY CLAUSE
SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id,screening_id;
SELECT f.name,s.start_time,c.first_name,c.last_name, COUNT(b.id) FROM films f 
JOIN screenings s ON f.id = s.film_id
JOIN bookings b ON  s.id = b.screening_id
JOIN customers c ON b.customer_id = c.id
GROUP BY f.name,c.last_name,c.first_name, s.start_time
ORDER BY s.start_time;

-- HAVING CLAUSE
SELECT customer_id,screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10;
SELECT customer_id,screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10 OR screening_id <=8;

-- SELECT THE CUSTOMER ID AND COUNT THE NUMBER OF RESERVED SEATS GROUPED BY CUSTOMER FRO OCTOBER 2017
SELECT b.customer_id, COUNT(r.id) FROM bookings b
JOIN reserved_seat r ON b.id = r.booking_id 
GROUP BY b.customer_id;
-- SELECT THE FILM NAME AND COUNT THE NUMBER OF SCREENINGS FOR EACH FILM THAT IS OVER 2 HOURS LONG
SELECT f.name,COUNT(*) FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY s.start_time
HAVING s.start_time > '2017-10-01 02:00:00';
-- 
-- Actual answer 
SELECT f.name,f.length_min,COUNT(s.id) FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY f.name,f.length_min
HAVING f.length_min > 120;