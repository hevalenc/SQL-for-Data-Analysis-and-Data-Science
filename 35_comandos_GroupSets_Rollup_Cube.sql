SELECT s.seat_no, s.fare_conditions, a.model ->> 'en' AS model, range
INTO aircraft_details /*criando uma nova tabela com as colunas de outras tabelas*/
FROM seats s
JOIN aircrafts a
USING(aircraft_code)
LIMIT 5; /*limitando o número de registros na tabela criada*/

/*A grouping set is a set of columns by which you group by using the GROUP BY clause. The GROUPING SETS clause which
is the subclause of the GROUP BY clause.*/

SELECT seat_no, fare_conditions, model, AVG(range)
FROM aircraft_details
GROUP BY GROUPING SETS(1, 2, 3);

/*ROLLUP is a subclause of the GROUP BY clause that offers a shorthand for defining multiple grouping sets. A grouping
set is a set of columns by which you group. The ROLLUP assumes a hierarchy among the input columns and generates all
grouping sets that make sense considering the hierarchy.*/

SELECT seat_no, fare_conditions, model, AVG(range)
FROM aircraft_details
GROUP BY ROLLUP(1, 2, 3);

/*PostgreSQL CUBE is a subclause of the GROUP BY clause. The CUBE allows you to generate multiple grouping sets.
A grouping set is a set of columns to which you want to group.*/

SELECT seat_no, fare_conditions, model, AVG(range)
FROM aircraft_details
GROUP BY CUBE(1, 2, 3);

