SELECT payment_id,
       customer_id,
       amount,
       payment_date
FROM payment
ORDER BY payment_date DESC;
