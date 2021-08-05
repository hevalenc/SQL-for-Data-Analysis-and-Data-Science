/*The UNION operator returns rows from both tables. If used by itself, the UNION returns a distinct list of rows*/
/*Using UNION ALL returns all rows from both tables*/
/*Use an INTERSECT operator to returns rows that are in common between two tables*/
/*Use the EXCEPT Operator to return only rows found in the left query. It returns unique rows from the left query that
isn't in the right query’s results*/

SELECT *
FROM aircrafts
WHERE range > 4500
UNION
SELECT *
FROM aircrafts
WHERE range < 7500; /*9 registros*/

SELECT *
FROM aircrafts
WHERE range > 4500
UNION ALL
SELECT *
FROM aircrafts
WHERE range < 7500; /*12 registros*/

SELECT *
FROM aircrafts
WHERE range > 4500
INTERSECT
SELECT *
FROM aircrafts
WHERE range < 7500; /*3 registros*/

SELECT *
FROM aircrafts
WHERE range > 4500
EXCEPT
SELECT *
FROM aircrafts
WHERE range < 7500; /*2 registros*/