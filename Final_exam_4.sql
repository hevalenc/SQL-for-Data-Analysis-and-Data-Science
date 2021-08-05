/*
Final Exam Quiz
How many seats remained free on flight PG0404 in the day before the last in the airlines database? 
*/

SELECT COUNT(*)
FROM (SELECT s.seat_no FROM seats s
	  WHERE s.aircraft_code = (SELECT aircraft_code FROM flights WHERE flight_no = 'PG0404'
							   AND scheduled_departure::date = public.now()::date - INTERVAL '1 day')
      EXCEPT
	  SELECT bp.seat_no
      FROM boarding_passes bp
      WHERE bp.flight_id = (SELECT flight_id FROM  flights WHERE flight_no = 'PG0404'
							AND scheduled_departure::date = public.now()::date - INTERVAL '1 day')) t;