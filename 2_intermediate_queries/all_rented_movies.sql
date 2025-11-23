SELECT film.title,
       rental.rental_date
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
ORDER BY rental.rental_date DESC;
