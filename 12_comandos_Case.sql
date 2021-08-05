SELECT DATE_PART('month', book_date) AS month, SUM(total_amount) AS bookings,
CASE WHEN SUM(total_amount) > 6870706800.00 THEN 'the most'
	 WHEN SUM(total_amount) < 6870706800.00 THEN 'the least'
	 ELSE 'the medium' END booking_qt
FROM bookings
GROUP BY month;

SELECT *,
CASE WHEN age >= '50' THEN 'old'
	 WHEN age ISNULL THEN 'unknown'
	 ELSE 'young' END is_old
FROM pilots;