SELECT * 
FROM film;


SELECT rental_rate, COUNT(film_id) AS total_films --group by rate
FROM film
GROUP BY rental_rate;
