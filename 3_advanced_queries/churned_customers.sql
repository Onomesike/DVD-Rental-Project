SELECT customer_id,
       CONCAT(first_name, ' ', last_name) AS customer_name
FROM customer
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id
    FROM rental
    WHERE rental_date >= NOW() - INTERVAL '90 days'
);
