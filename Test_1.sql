/*
Test Your Self
1. List the cities in which there is no flights from Moscow ?

2. Select airports in a time zone is in Asia / Novokuznetsk and Asia / Krasnoyarsk ?

3. Which planes have a flight range in the range from 3,000 km to 6,000 km ?

4. Get the model , range,  and miles of every air craft exist in the Airlines database, notice that miles = range / 1.609  and round the result to 2 numbers after the float point?
*/

/*1*/
SELECT DISTINCT a.city ->> 'en' as city
FROM airports a
WHERE a.city ->> 'en' <> 'Moscow'
ORDER BY city;

/*2*/
SELECT *
FROM airports
WHERE timezone IN ('Asia / Novokuznetsk', 'Asia / Krasnoyarsk');

/*3*/
SELECT *
FROM aircrafts
WHERE range BETWEEN 3000 AND 6000;

/*4*/
SELECT model, range, round (RANGE / 1.609, 2) AS miles
FROM aircrafts; 