SELECT LEFT('Heitor', 1); /*retorna uma letra da esquerda para a direita*/
SELECT LEFT('Heitor', 2); /*retorna duas letras da esquerda para a direita*/
SELECT LEFT('Heitor', -1); /*retorna todas as letras exceto a última*/
SELECT LEFT('Heitor', -2); /*retorna todas as letras exceto as duas últimas*/

SELECT LEFT(passenger_name, 2) FROM tickets;
SELECT LEFT(passenger_name, -1) FROM tickets;

SELECT RIGHT('Heitor', 1); /*retorna uma letra da direita para a esquerda*/
SELECT RIGHT('Heitor', 2); /*retorna duas letras da direita para a esquerda*/
SELECT RIGHT('Heitor', -1); /*retorna todas as letras exceto a primeira*/
SELECT RIGHT('Heitor', -2); /*retorna todas as letras exceto as duas primeiras*/

SELECT RIGHT(passenger_name, 2) FROM tickets;
SELECT RIGHT(passenger_name, -2) FROM tickets;

/*btrim function is used to remove the longest string specified in the argument from the start and end of the given
string. If no string for removing default space will be removed from leading and trailing side from the string.*/

SELECT passenger_name, LEFT(passenger_name, 1), BTRIM(SPLIT_PART(passenger_name, ' ', 1)) first_name,
												BTRIM(SPLIT_PART(passenger_name, ' ', 2)) last_name
FROM tickets;
