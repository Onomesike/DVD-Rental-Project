SELECT COUNT(*) AS movies_not_offered
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN store s ON i.store_id = s.store_id
WHERE s.store_id IS NULL OR s.store_id NOT IN (1,2);
