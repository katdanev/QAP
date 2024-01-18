SELECT 
    film_id, title, description, NULL AS rental_rate, NULL AS total_films, NULL AS rental_duration
FROM film
WHERE film_id < 10

UNION ALL

SELECT 
    NULL AS film_id, NULL AS title, NULL AS description, rental_rate, COUNT(film_id) AS total_films, NULL AS rental_duration
FROM film
GROUP BY rental_rate

UNION ALL

SELECT 
    NULL AS film_id, NULL AS title, NULL AS description, NULL AS rental_rate, NULL AS total_films, rental_duration
FROM film
ORDER BY rental_duration ASC

UNION ALL

SELECT 
    film.*, NULL AS rental_rate, NULL AS total_films, NULL AS rental_duration
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id;

