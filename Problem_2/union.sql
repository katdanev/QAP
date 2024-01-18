SELECT * 
FROM film_category;

SELECT * 
FROM film;


SELECT film_id, title, description -- reduse columns to 3
FROM film;

SELECT *
FROM film
WHERE film_id < 10  --reduce the number of rows

SELECT rental_duration -- using ORDER BY to sort the data
FROM film
ORDER BY rental_duration ASC;

SELECT rental_rate, COUNT(film_id) AS total_films --group by rate
FROM film
GROUP BY rental_rate;

SELECT *   -- join two tables
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id;



-- Об'єднання всіх запитів з використанням UNION ALL
SELECT film_id, title, description
FROM film
UNION ALL
SELECT *
FROM film
WHERE film_id < 10
UNION ALL
SELECT rental_duration
FROM film
ORDER BY rental_duration ASC
UNION ALL
SELECT rental_rate, COUNT(film_id) AS total_films
FROM film
GROUP BY rental_rate
UNION ALL
SELECT film.*, film_category.*
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id;





