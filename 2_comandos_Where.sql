SELECT airport_code, airport_name, city
FROM airports

SELECT airport_code, airport_name, city
FROM airports
WHERE city ->> 'en' = 'Moscow' /*city ->> 'en' = 'Moscow' => utilizado este formato para procurar uma informação em json*/

SELECT * FROM aircrafts
WHERE aircraft_code  = '773';

SELECT * FROM airports
WHERE timezone = 'Asia/Yakutsk'; /*igual*/

SELECT * FROM airports
WHERE timezone != 'Asia/Yakutsk';/*diferente*/

SELECT * FROM bookings
WHERE total_amount > 200000;

SELECT * FROM bookings
WHERE total_amount < 200000;

SELECT * FROM bookings
WHERE total_amount <= 200000;

SELECT * FROM seats
WHERE aircraft_code = '319' AND fare_conditions = 'Business';

SELECT * FROM seats
WHERE aircraft_code = '319' OR fare_conditions = 'Business';
