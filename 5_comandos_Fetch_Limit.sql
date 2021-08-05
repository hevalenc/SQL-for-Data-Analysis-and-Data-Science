SELECT * FROM boarding_passes
LIMIT 10;

SELECT * FROM boarding_passes
FETCH FIRST 10 ROW ONLY; /*similar ao limit*/

SELECT * FROM boarding_passes
OFFSET 10 ROWS /*ignorar as 10 primeiras linhas*/
FETCH FIRST 10 ROW ONLY;