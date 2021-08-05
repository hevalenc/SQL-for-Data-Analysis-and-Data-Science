SELECT * FROM aircrafts
WHERE aircraft_code NOT IN ('SU9', '320', '733');

SELECT flight_id, flight_no, departure_airport, arrival_airport, status
FROM flights
WHERE status NOT IN ('Scheduled', 'Delayed', 'Cancelled');

SELECT flight_id, flight_no, departure_airport, arrival_airport, status
FROM flights
WHERE status IN ('On Time', 'Departed', 'Arrived');
