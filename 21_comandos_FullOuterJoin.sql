/*The PostgreSQL FULL OUTER JOIN would return the all records from both table1 and table2*/

SELECT *
FROM tickets t
RIGHT JOIN boarding_passes b
ON t.ticket_no = b.ticket_no; /*579686 registros*/

SELECT *
FROM tickets t
FULL JOIN boarding_passes b
ON t.ticket_no = b.ticket_no; /*707585 registros*/

SELECT *
FROM boarding_passes b
LEFT JOIN flights f
ON b.flight_id = f.flight_id; /*579686 registros*/

SELECT *
FROM boarding_passes b
RIGHT JOIN flights f
ON b.flight_id = f.flight_id; /*601289 registros*/

SELECT *
FROM boarding_passes b
FULL JOIN flights f
ON b.flight_id = f.flight_id; /*601289 registros*/