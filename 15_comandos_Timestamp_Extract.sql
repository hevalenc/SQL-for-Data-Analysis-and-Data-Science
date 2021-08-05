SELECT book_date, SUM(total_amount) AS sales
FROM bookings
GROUP BY 1 /*coluna 1 - book_date*/
ORDER BY 2; /*coluna 2 - total_amount*/

SELECT EXTRACT('day' FROM book_date) AS day, SUM(total_amount) AS sales /*extraindo o dia do timestamp*/
FROM bookings
GROUP BY 1
ORDER BY 1;

SELECT EXTRACT('day' FROM book_date) AS day, EXTRACT('month' FROM book_date) AS month, SUM(total_amount) AS sales
FROM bookings
GROUP BY 1, 2 /*colunas 1 (dia) e 2 (mês) - book_date*/
ORDER BY 2, 1;