SELECT * 
FROM film_category;

SELECT * 
FROM film;

SELECT *   -- join two tables
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id;

