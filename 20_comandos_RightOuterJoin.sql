/*The PostgreSQL RIGHT OUTER JOIN would return the all records from table2 and only those records from table1 that
intersect with table2*/

SELECT t.passenger_name, t.ticket_no, tf.fare_conditions,
DATE_PART('day', b.book_date) AS day, DATE_PART('month', b.book_date) AS month
FROM bookings b
RIGHT JOIN tickets t
ON b.book_ref = t.book_ref
RIGHT JOIN ticket_flights tf
ON tf.ticket_no = t.ticket_no
ORDER BY month, day;

SELECT t.passenger_name, t.ticket_no, tf.fare_conditions,
DATE_PART('day', b.book_date) AS day, DATE_PART('month', b.book_date) AS month
FROM bookings b
RIGHT OUTER JOIN tickets t
ON b.book_ref = t.book_ref
RIGHT OUTER JOIN ticket_flights tf
ON tf.ticket_no = t.ticket_no
WHERE tf.fare_conditions = 'Business'
ORDER BY month, day;