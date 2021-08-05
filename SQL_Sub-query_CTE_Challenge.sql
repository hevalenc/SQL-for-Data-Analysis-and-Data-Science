/*
SQL Sub-query CTE Challenge
1. What are the maximum and minimum ticket prices in all directions?

2. Get a list of airports in cities with more than one airport ?

3. What will be the total number of different routes that are theoretically can be laid between all cities? 
*/

/*1*/
SELECT (SELECT city ->> 'en' FROM airports WHERE airport_code = f.departure_airport) AS departure_city,
		(SELECT city ->> 'en' FROM airports WHERE airport_code = f.arrival_airport) AS arrival_city,
		MAX(tf.amount), MIN(tf.amount)
FROM flights f
JOIN ticket_flights tf
ON f.flight_id = tf.flight_id
GROUP BY 1, 2
ORDER BY 1, 2;

/*2*/
SELECT aa.city ->> 'en'AS city, aa.airport_code, aa.airport_name ->> 'en' AS airport
FROM (SELECT city, COUNT(*)FROM airports GROUP BY city HAVING COUNT(*)> 1) AS a
JOIN airports AS aa
ON a.city = aa.city
ORDER BY aa.city, aa.airport_name;

/*3*/
SELECT count (*)
FROM (SELECT DISTINCT city FROM airports) AS a1
JOIN (SELECT DISTINCT city FROM airports) AS a2
ON a1.city <> a2.city; 