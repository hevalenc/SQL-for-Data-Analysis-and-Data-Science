SELECT COUNT(*)
FROM flights f
JOIN aircrafts a
ON f.aircraft_code = a.aircraft_code
WHERE a.range > 7000;

/*o código acima representa o código abaixo*/
WITH long_range AS (SELECT * FROM aircrafts WHERE range > 7000) /*criar uma tabela*/
SELECT COUNT(*)
FROM flights f
JOIN long_range l
ON f.aircraft_code = l.aircraft_code;

WITH pass_info AS(SELECT t.book_ref, f.flight_no, f.departure_airport dep,
				 		 f.arrival_airport arr, t.passenger_name, f.scheduled_departure
				 FROM tickets t
				 JOIN ticket_flights tf
				 ON t.ticket_no = tf.ticket_no
				 JOIN flights f
				 ON f.flight_id = tf.flight_id)
SELECT *
FROM pass_info
WHERE book_ref = 'A55664'
ORDER BY passenger_name, scheduled_departure;
