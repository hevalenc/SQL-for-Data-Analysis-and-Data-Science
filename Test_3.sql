/*
Test Your Self
- write a query to arrange the range of model of air crafts so  Short range is less than 2000, Middle range is more than
2000 and less than 5000 & any range above 5000 is long range?
*/

SELECT model, range,
CASE WHEN range < 2000 THEN 'Short'
	 WHEN range < 5000 THEN 'Middle'
	 ELSE 'Long' END AS range
FROM aircrafts
ORDER BY model; 