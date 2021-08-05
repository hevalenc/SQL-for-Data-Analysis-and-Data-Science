/*The PostgreSQL LEFT OUTER JOIN would return the all records from table1 and only those records from table2 that
intersect with table1*/

SELECT t.passenger_name, t.ticket_no, tf.fare_conditions,
DATE_PART('day', b.book_date) AS day, DATE_PART('month', b.book_date) AS month
FROM tickets t
LEFT JOIN bookings b
ON t.book_ref = b.book_ref
LEFT JOIN ticket_flights tf
ON t.ticket_no = tf.ticket_no
WHERE tf.fare_conditions = 'Business'
ORDER BY month, day;

SELECT t.passenger_name, t.ticket_no, tf.fare_conditions,
DATE_PART('day', b.book_date) AS day, DATE_PART('month', b.book_date) AS month
FROM tickets t
LEFT OUTER JOIN bookings b
ON t.book_ref = b.book_ref
LEFT OUTER JOIN ticket_flights tf
ON t.ticket_no = tf.ticket_no
WHERE tf.fare_conditions = 'Business'
ORDER BY month, day;