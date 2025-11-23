SELECT c.customer_id,
       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       SUM(p.amount) AS total_payment
FROM payment p
JOIN customer c
  ON p.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_payment DESC
LIMIT 1;
