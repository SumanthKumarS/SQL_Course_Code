-- CORRELATED SUB QUERIES
USE cinema_booking_system;
SELECT * FROM films;
SELECT screening_id, customer_id FROM bookings ORDER BY screening_id;

SELECT screening_id, customer_id,
(SELECT COUNT(seat_id) FROM reserved_seat WHERE booking_id = b.id)
FROM bookings b ORDER BY screening_id;

-- SELECT THE FILM NAME AND LENGTH FOR ALL FILMS WITH A LENGTH GREATER THAN THE AVERAGE FILM LENGTH
SELECT name,length_min FROM films
WHERE length_min>(SELECT AVG(length_min) FROM films);

-- SELECT THE MAXIMUM NUMBER AND MINIMUM NUMBER OF SCREENINGS FOR A PERTICULAR FILM
SELECT * FROM screenings;
SELECT * FROM films;
SELECT MAX(f.id),MIN(f.id) FROM
(SELECT film_id, COUNT(ID) AS id FROM screenings GROUP BY film_id ) f;
-- SELECT MAX(f.film),MIN(f.film) FROM (SELECT id AS film FROM films) f;

-- SELECT EACH FILM NAME AND NUMBER OF SCREENINGS FOR THAT FILM
SELECT name,
(SELECT COUNT(id) FROM screenings WHERE film_id = f.id) FROM films f;