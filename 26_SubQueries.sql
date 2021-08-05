SELECT ai.city, ai.airport_code, ai.airport_name
FROM(
	SELECT city, COUNT(*)
	FROM airports
	GROUP BY city
	HAVING COUNT(*) > 1
) AS q
JOIN airports AS ai
ON q.city = ai.city
ORDER BY ai.city,ai.airport_name;

/*quantidade de rotas entre cidades*/
SELECT COUNT(*)
FROM (SELECT DISTINCT city FROM airports) AS a1
JOIN (SELECT DISTINCT city FROM airports) AS a2
ON a1.city <> a2.city;

/*rotas entre cidades*/
SELECT f.flight_no, f.departure_airport AS d_airport, f.arrival_airport AS a_airport,
	(SELECT city ->> 'en' FROM airports WHERE airport_code = f.departure_airport) AS d_city,
	(SELECT DISTINCT city ->> 'en' FROM airports WHERE airport_code = f.departure_airport) AS a_city
FROM flights f
WHERE f.status = 'Departed';