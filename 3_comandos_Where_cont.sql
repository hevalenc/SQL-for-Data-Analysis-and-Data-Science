SELECT * FROM aircrafts
WHERE model ->> 'en' LIKE 'Airbus%'; /*% coringa para pesquisa, pode ser no início, no meio ou no fim*/

SELECT * FROM aircrafts
WHERE model ->> 'en' LIKE 'Airbus%200';

SELECT * FROM aircrafts
WHERE model ->> 'en' LIKE '%200%';

SELECT * FROM aircrafts
WHERE model ->> 'en' NOT LIKE 'Airbus%' AND model ->> 'en' NOT LIKE 'Boeing%';

SELECT * FROM aircrafts
WHERE model ->> 'en' NOT LIKE '_Airbus%' AND model ->> 'en' NOT LIKE '_Boeing%'; /* '_' antes do nome na consulta anula o comando NOT*/

SELECT * FROM tickets
WHERE passenger_name = 'ZULFIYA ZOTOVA'
ORDER BY passenger_name DESC
LIMIT 10;

SELECT * FROM tickets
WHERE ticket_no BETWEEN '0005434344902' AND '0005435132853';

SELECT * FROM tickets
WHERE ticket_no >= '0005434344902' AND ticket_no <= '0005435132853';

SELECT * FROM aircrafts
WHERE RANGE IN (5700, 6700, 1200);

SELECT * FROM bookings
WHERE book_date IN ('2017-7-10%', '2017-7-15%', '2017-7-20%', '2017-7-25%');

SELECT b.book_date AS date_of_booking, b.total_amount AS total
FROM bookings AS b
WHERE book_date IN ('2017-7-10%', '2017-7-15%', '2017-7-20%', '2017-7-25%');