/*
Test Your Self
1. Calculate the Average tickets Sales?

2. Return the number of seats in the air craft that has aircraft code = 'CN1' ?

3. Return the number of seats in the air craft that has aircraft code = 'SU9'  ?

4. Write a query to return the aircraft_code and the number of seats of each air craft ordered ascending?

5. calculate the number of seats in the salons for all aircraft models, but now taking into account the class of service Business class and Economic class.

6. What was the least day in tickets sales?
*/

/*1*/
SELECT AVG(total_amount) AS sales
FROM bookings;

/*2*/
SELECT count (*)
FROM seats
WHERE aircraft_code = 'CN1';

/*3*/
SELECT count (*)
FROM seats
WHERE aircraft_code = 'SU9';

/*4*/
SELECT aircraft_code, COUNT(*)
FROM seats
GROUP BY aircraft_code
ORDER BY COUNT;

/*5*/
SELECT aircraft_code, fare_conditions, COUNT(*)
FROM seats
GROUP BY aircraft_code, fare_conditions
ORDER BY aircraft_code, fare_conditions;

/*6*/
SELECT book_date, SUM(total_amount) AS sales
FROM bookings
GROUP BY 1
ORDER BY 2
LIMIT 1;

/*Another solution to Coding Quiz no 6 :*/

SELECT MIN (total_amount)
FROM bookings;