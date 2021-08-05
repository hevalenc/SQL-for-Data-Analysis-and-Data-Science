/*
SQL Conditional Challenge
What is the shortest flight duration for each possible flight from Moscow to St. Petersburg, and how many times was the
flight delayed for more than an hour? 
*/

SELECT f.flight_no, (f.Scheduled_arrival - f.Scheduled_departure) AS scheduled_duration,
MIN(f.Scheduled_arrival - f.Scheduled_departure),
MAX(f.Scheduled_arrival - f.Scheduled_departure),
SUM(CASE WHEN f.actual_departure > f.scheduled_departure + INTERVAL '1 hour'THEN 1 ELSE 0 END) delays
FROM flights f
WHERE (SELECT city ->> 'en' FROM airports WHERE airport_code = departure_airport) = 'Moscow'
AND (SELECT city ->> 'en' FROM airports WHERE airport_code = arrival_airport) = 'St. Petersburg'
AND f.status = 'Arrived'
GROUP BY f.flight_no, (f.Scheduled_arrival - f.Scheduled_departure);