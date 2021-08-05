/*
Test Your Self
Count the number of routes laid from the airports?
*/

/*Firstly we will create View called cities as the following:*/
CREATE VIEW cities AS SELECT (SELECT city ->> 'en'
							  FROM airports WHERE airport_code =departure_airport) AS departure_city,
					(SELECT city ->> 'en' FROM airports WHERE airport_code =arrival_airport) AS arrival_city
FROM flights
/*then add the following code:*/
SELECT departure_city, COUNT(*)
FROM cities
GROUP BY departure_city
HAVING departure_city IN (SELECT city->> 'en' FROM airports )
ORDER BY count DESC;