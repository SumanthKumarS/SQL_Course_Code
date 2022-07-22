-- CHALLENGES 
USE cinema_booking_system;

-- 1.WHICH FILMS ARE OVER 2 HOURS LONG
SELECT name,length_min FROM films WHERE length_min > 120;
 
 -- 2.WHICH FILMS HAD THE MOST SCREENINGS IN OCTOBER 2017
SELECT * FROM films;
SELECT * FROM screenings;

SELECT f.name,f.length_min,DATE(start_time),COUNT(s.film_id) AS showings FROM films f 
JOIN screenings s ON f.id = s.film_id 
WHERE MONTH(s.start_time)=10 AND YEAR(s.start_time) = 2017 GROUP BY film_id ORDER BY showings DESC LIMIT 1;

-- 3.HOW MANY BOOKINGS DID THE FILM JIGSAW HAVE IN OCTOBER 2017
SELECT * FROM bookings;
SELECT f.name,COUNT(b.id) AS no_bookings FROM bookings b
JOIN screenings s on b.screening_id = s.id 
JOIN films f on s.film_id = f.id
WHERE f.name = 'Jigsaw';

SELECT COUNT(*) FROM bookings WHERE screening_id IN
(SELECT id FROM screenings WHERE film_id = 5);

-- 4.WHICH 5 CUSTOMERS MADE THE MOST BOOKINGS IN OCTOBER 2017
SELECT * FROM customers;
SELECT COUNT(b.id) AS NO_BOOKINGS,b.customer_id,CONCAT(c.first_name," ",c.last_name) AS customer_name FROM bookings b
JOIN customers c ON b.customer_id = c.id 
WHERE b.id GROUP BY b.customer_id ORDER BY NO_BOOKINGS DESC LIMIT 5;

-- 5.WHICH FILM WAS SHOWN IN THE CHAPLIN ROOM MOST OFTEN IN OCTOBER 2017
SELECT * FROM rooms;
SELECT * FROM films;
SELECT * FROM screenings;
SELECT f.name,r.id,COUNT(r.name) AS RECENT FROM screenings s
JOIN rooms r ON  r.id = s.room_id
JOIN films f ON  f.id = s.film_id
WHERE r.name = 'Chaplin' GROUP BY f.name ORDER BY RECENT DESC LIMIT 1;

-- 6. how many of the customers made a booking in october 2017
SELECT * FROM customers;
SELECT * FROM bookings;
SELECT COUNT(DISTINCT c.id) FROM customers c
JOIN bookings b ON c.id = b.customer_id
JOIN screenings s ON s.id = b.screening_id
WHERE MONTH(s.start_time) = 10 AND YEAR(s.start_time) = 2017;