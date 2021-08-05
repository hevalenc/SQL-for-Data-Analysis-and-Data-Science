SELECT f.flight_no, f.arrival_airport, f.status
FROM flights f
LIMIT 5;

SELECT f1.flight_no, f1.arrival_airport, f1.status, f2.flight_no, f2.arrival_airport, f2.status
FROM flights f1, flights f2
WHERE f1.flight_no <> f2.flight_no
LIMIT 5;
