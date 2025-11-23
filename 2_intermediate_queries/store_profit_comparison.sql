SELECT store_id,
       SUM(amount) AS total_profit
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
GROUP BY store_id
ORDER BY total_profit DESC;
