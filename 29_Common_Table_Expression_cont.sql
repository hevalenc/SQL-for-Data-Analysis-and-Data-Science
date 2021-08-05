WITH t1 AS(SELECT f.flight_id, f.flight_no, f.scheduled_departure,
		  		(SELECT city ->> 'en' FROM airports WHERE airport_code = f.departure_airport) AS departure_city,
		  		(SELECT city ->> 'en' FROM airports WHERE airport_code = f.arrival_airport) AS arrival_city, 
		  		f.aircraft_code, COUNT(tf.ticket_no) AS actual_passengers,
		  		(SELECT COUNT(s.seat_no) FROM seats s WHERE s.aircraft_code = f.aircraft_code) AS total_seats
		  FROM flights f
		  JOIN ticket_flights tf
		  ON f.flight_id = tf.flight_id
		  WHERE f.status = 'Arrived'
		  GROUP BY 1, 2, 3, 4, 5, 6)
SELECT t1.flight_id, t1.flight_no, t1.scheduled_departure, t1.departure_city,
		t1.arrival_city, a.model ->> 'en' AS model, t1.actual_passengers, t1.total_seats,
		ROUND(t1.actual_passengers :: NUMERIC / t1.total_seats :: NUMERIC, 2) AS occupation
FROM t1
JOIN aircrafts AS a
ON t1.aircraft_code = a.aircraft_code
ORDER BY t1.scheduled_departure;