/*the rank function produces a numerical rank within the current row's partition for each distinct ORDER BY value,
in the order defined by the ORDER BY clause. rank needs no explicit parameter, because its behavior is entirely
determined by the OVER clause.*/

SELECT s.seat_no, s.fare_conditions, a.model ->> 'en' AS model, range,
RANK() OVER(PARTITION BY s.seat_no ORDER BY a.range DESC) range_rank
FROM seats s
JOIN aircrafts a
USING(aircraft_code)
ORDER BY range_rank;

/*The PostgreSQL NTILE() function allows you to divide ordered rows in the partition into a specified number of ranked
groups as equal size as possible. These ranked groups are called buckets.*/

SELECT s.seat_no, s.fare_conditions, a.model ->> 'en' AS model, range,
NTILE(5) OVER(PARTITION BY model ORDER BY a.range) ranking
FROM seats s
JOIN aircrafts a
USING(aircraft_code)
ORDER BY ranking;