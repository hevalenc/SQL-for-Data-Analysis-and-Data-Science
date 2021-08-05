SELECT DATE_TRUNC('day', book_date), COUNT(t.ticket_no) / SUM(total_amount) AS sales_ratio
FROM  bookings b
JOIN tickets t
ON b.book_ref = t.book_ref
GROUP BY 1
ORDER BY 2
LIMIT 5;

SELECT DATE_TRUNC('day', book_date), COUNT(t.ticket_no) / SUM(amount) AS sales_ratio
FROM  bookings b
JOIN tickets t
ON b.book_ref = t.book_ref
JOIN ticket_flights tf
ON t.ticket_no = tf.ticket_no
GROUP BY 1
ORDER BY 2
LIMIT 5;