SELECT ticket_no, boarding_no, seat_no
FROM boarding_passes
WHERE EXISTS(SELECT flight_id FROM ticket_flights WHERE fare_conditions = 'Business');

SELECT flight_id, fare_conditions, amount
FROM ticket_flights
WHERE EXISTS(SELECT ticket_no FROM tickets);

SELECT flight_no, status
FROM flights
WHERE EXISTS(SELECT a.airport_code FROM airports a
			JOIN flights f ON a.airport_code = f.arrival_airport)
AND EXISTS(SELECT a.airport_code FROM airports a
		  JOIN flights f ON a.airport_code = f.departure_airport);

SELECT ticket_no, boarding_no, seat_no
FROM boarding_passes
WHERE flight_id = ALL(SELECT flight_id FROM flights WHERE status = 'Delayed');

SELECT flight_id, fare_conditions, amount
FROM ticket_flights
WHERE ticket_no = ANY(SELECT ticket_no FROM tickets);