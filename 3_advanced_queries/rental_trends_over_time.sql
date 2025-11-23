SELECT DATE_TRUNC('month', rental_date) AS month,
       COUNT(*) AS rentals
FROM rental
GROUP BY month
ORDER BY month;
