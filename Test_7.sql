/*
Test Your Self
1. Suppose our airline marketers want to know how often there are different names among the passengers?

2. Which combinations of first names and last names separately occur most often? What is the ratio of the passengers
with such names to the total number of passengers?
*/

/*1*/
SELECT LEFT(passenger_name, STRPOS(passenger_name, ' ') - 1) AS firstname, COUNT (*)
FROM tickets
GROUP BY 1
ORDER BY 2 DESC;

/*2*/
WITH p AS (SELECT left(passenger_name, position(' ' IN passenger_name)) AS passenger_name FROM tickets)
SELECT passenger_name, round( 100.0 * cnt / sum(cnt) OVER (), 2) AS percent
FROM (SELECT passenger_name,count(*) cnt FROM p GROUP BY passenger_name) t
ORDER BY percent DESC;