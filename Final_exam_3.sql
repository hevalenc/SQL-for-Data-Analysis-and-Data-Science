/*
Final Exam Quiz
Which flights had the longest delays?
*/

SELECT f.flight_no,  f.scheduled_departure, f.actual_departure,
	  (f.actual_departure - f.scheduled_departure) AS delay
FROM  flights f
WHERE f.actual_departure IS NOT NULL
ORDER BY f.actual_departure - f.scheduled_departure;