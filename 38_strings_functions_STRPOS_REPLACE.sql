/*P o s t g r e S Q L
  1 2 3 4 5 6 7 8 9 10*/

SELECT POSITION('SQL' IN 'PostgreSQL');

SELECT POSITION('s' IN 'PostgreSQL Class'); /*mostra a primeira combinação*/

SELECT STRPOS('PostgreSQL', 'SQL') AS substring_position; /*STRPOS - string position (string, substring), case sensitive*/

SELECT STRPOS('PostgreSQL', 'sQL') AS substring_position; /*se a substring não existir na string retorna 0*/

SELECT passenger_name, STRPOS(passenger_name, ' ') FROM tickets;

SELECT passenger_name, REPLACE(passenger_name, ' ', '-') FROM tickets;

SELECT passenger_name, REPLACE(passenger_name, 'A', 'a') FROM tickets; /*substitui todos*/
