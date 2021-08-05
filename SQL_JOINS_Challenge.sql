/*
SQL JOINS Challenge
Use SQL  joins to  return unique city name, flight_no, airport and timezone?
*/

SELECT DISTINCT a.city, f.flight_no, a.airport_name AS airport, a.timezone
FROM flights f
JOIN airports_eng a
ON a.airport_code = f.departure_airport;