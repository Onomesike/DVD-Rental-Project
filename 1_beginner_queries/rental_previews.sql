SELECT rental_id,
       rental_date,
       inventory_id,
       customer_id
FROM rental
ORDER BY rental_date DESC
LIMIT 20;
