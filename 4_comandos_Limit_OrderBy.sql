SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '__IN%'; /*o 'IN' estará na terceira posição*/

SELECT * FROM ticket_flights
LIMIT 10; /*limitando a quantidade de resultados na pesquisa*/

SELECT ticket_no, fare_conditions
FROM ticket_flights
WHERE fare_conditions = 'Business'
LIMIT 10;

SELECT passenger_name, contact_data
FROM tickets
ORDER BY passenger_name
LIMIT 50;

SELECT passenger_name, contact_data
FROM tickets
ORDER BY passenger_name DESC /*ordem decrescente*/
LIMIT 50;

SELECT *
FROM tickets
WHERE passenger_name = 'ZULFIYA ZOTOVA'
ORDER BY passenger_name DESC
LIMIT 10;