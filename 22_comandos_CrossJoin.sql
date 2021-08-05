/*The CROSS JOIN is returning every record in Table A combined with every record in Table B*/

SELECT*
FROM aircrafts /*serão replicados os registros para se adequar a outra tabela*/
CROSS JOIN airports;

SELECT*
FROM aircrafts
CROSS JOIN seats;

SELECT*
FROM airports
CROSS JOIN seats;