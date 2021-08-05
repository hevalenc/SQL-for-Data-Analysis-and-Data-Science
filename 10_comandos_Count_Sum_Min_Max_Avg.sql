SELECT COUNT(*) FROM aircrafts; /*conta quantos registros há na tabela*/

SELECT COUNT(passenger_name) FROM tickets;

SELECT COUNT(DISTINCT passenger_name) FROM tickets;/*distinct = dados únicos*/

SELECT SUM(total_amount) FROM bookings; /*somar todos os valoresde uma coluna*/

SELECT MIN(total_amount) FROM bookings; /*menor valor*/

SELECT MAX(total_amount) FROM bookings; /*maior valor*/

SELECT AVG(total_amount) FROM bookings; /*valor médio dos valores da coluna*/