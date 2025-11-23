WITH revenue AS (
    SELECT store_id,
           SUM(amount) AS total_revenue
    FROM payment p
    JOIN rental r ON p.rental_id = r.rental_id
    JOIN inventory i ON r.inventory_id = i.inventory_id
    GROUP BY store_id
),
rentals AS (
    SELECT i.store_id,
           COUNT(*) AS total_rentals
    FROM rental r
    JOIN inventory i ON r.inventory_id = i.inventory_id
    GROUP BY i.store_id
)
SELECT r.store_id,
       r.total_revenue,
       rentals.total_rentals
FROM revenue r
JOIN rentals ON r.store_id = rentals.store_id
ORDER BY total_revenue DESC;
