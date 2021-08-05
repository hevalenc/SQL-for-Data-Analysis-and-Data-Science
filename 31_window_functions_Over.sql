SELECT s.seat_no, s.fare_conditions, a.model ->> 'en' AS model, AVG(a.range) avg_range
FROM seats s
JOIN aircrafts a
USING(aircraft_code)
GROUP BY 1, 2, 3;

/*A window function performs a calculation across a set of table rows that are somehow related to the current row.
This is comparable to the type of calculation that can be done with an aggregate function. But unlike regular aggregate
functions, use of a window function does not cause rows to become grouped into a single output row — the rows retain
their separate identities. Behind the scenes, the window function is able to access more than just the current row of
the query result.*/

SELECT s.seat_no, s.fare_conditions, a.model ->> 'en' AS model,
AVG(a.range) OVER(PARTITION BY model) avg_range
FROM seats s
JOIN aircrafts a
USING(aircraft_code)
GROUP BY 1, 2, model, range;
