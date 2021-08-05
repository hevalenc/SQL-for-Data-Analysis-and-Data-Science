/*
SQL Basics Challenge
- Return all information about air craft that has aircraft_code = 'SU9' and its range in miles ?
*/

SELECT *, round(range/1.69, 2) AS range_in_miles
FROM aircrafts
WHERE aircraft_code = 'SU9';