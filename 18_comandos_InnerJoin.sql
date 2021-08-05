/*The PostgreSQL INNER JOIN would return the records where table1 and table2 intersect*/

SELECT s.seat_no, s.fare_conditions, model ->> 'en' AS model
FROM seats s
JOIN aircrafts a
ON s.aircraft_code = a.aircraft_code;

SELECT s.seat_no, s.fare_conditions, model ->> 'en' AS model 
FROM seats s
JOIN aircrafts a
ON s.aircraft_code = a.aircraft_code
WHERE a.model ->> 'en' = 'Airbus A320-200';

SELECT s.seat_no, s.fare_conditions, model ->> 'en' AS model,
f.flight_no, f.departure_airport, f.arrival_airport, f.status
FROM seats s
INNER JOIN aircrafts a
ON s.aircraft_code = a.aircraft_code
INNER JOIN flights f
ON a.aircraft_code = f.aircraft_code;

SELECT s.seat_no, s.fare_conditions, model ->> 'en' AS model,
f.flight_no, f.departure_airport, f.arrival_airport, f.status
FROM seats s
INNER JOIN aircrafts a
ON s.aircraft_code = a.aircraft_code
INNER JOIN flights f
ON a.aircraft_code = f.aircraft_code
WHERE status = 'Cancelled';

SELECT s.seat_no, s.fare_conditions, model ->> 'en' AS model,
f.flight_no, f.departure_airport, f.arrival_airport, f.status
FROM seats s
INNER JOIN aircrafts a
ON s.aircraft_code = a.aircraft_code
INNER JOIN flights f
ON a.aircraft_code = f.aircraft_code
WHERE status = 'Cancelled' AND model ->> 'en' LIKE 'Cessna%';

SELECT DISTINCT f.flight_no, s.seat_no, s.fare_conditions, model ->> 'en' AS model,
f.departure_airport, f.arrival_airport, f.status
FROM seats s
INNER JOIN aircrafts a
ON s.aircraft_code = a.aircraft_code
INNER JOIN flights f
ON a.aircraft_code = f.aircraft_code
WHERE status = 'Cancelled' AND model ->> 'en' LIKE 'Cessna%';