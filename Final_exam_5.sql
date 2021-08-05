/*
Final Exam Quiz
How many seats remained free on flight PG0404 in the day before the last in the airlines database? 
*/

SELECT COUNT(*)
FROM flights f
JOIN seats s
ON s.aircraft_code = f.aircraft_code
WHERE f.flight_no = 'PG0404'
AND f.scheduled_departure::date = public.now()::date - INTERVAL '1 day'
AND NOT EXISTS (SELECT NULL FROM boarding_passes bp
				WHERE bp.flight_id = f.flight_id 
				AND bp.seat_no = s.seat_no);