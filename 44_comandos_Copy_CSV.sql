COPY(SELECT passenger_name, DATE_PART('day', book_date) AS day, DATE_PART('month', book_date) AS month,
	(SELECT city ->> 'en' FROM airports WHERE airport_code = f.departure_airport) AS departure_city,
	(SELECT city ->> 'en' FROM airports WHERE airport_code = f.arrival_airport) AS arrival_city,
	SUM(total_amount) AS sales
	FROM bookings b
	JOIN tickets t
	ON b.book_ref = t.book_ref
	JOIN ticket_flights tf
	ON t.ticket_no = tf.ticket_no
	JOIN flights f
	ON tf.flight_id = f.flight_id
	GROUP BY 1, 2, 3, 4, 5
	ORDER BY 3, 2, 6) 
TO 'E:\EngSoft\Cursos\Udemy\SQL for Data Analysis and Data Science\airlines_data_part.CSV'
DELIMITER ','
CSV HEADER;