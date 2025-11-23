SELECT c.customer_id,
       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       SUM(p.amount) AS lifetime_value
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING SUM(p.amount) > 150
ORDER BY lifetime_value DESC;
