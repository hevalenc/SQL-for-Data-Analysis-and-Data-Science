SELECT DATE_PART('month', book_date) AS month, SUM(total_amount) AS total_sales
FROM bookings
GROUP BY month
ORDER BY month;

/*LEAD() function provide access to a row that follows the current row at a specified physical offset.
It means that from the current row, the LEAD() function can access data of the next row, the row after the next row,
and so on, is very useful for comparing the value of the current row with the value of the row that following the
current row.*/

WITH CTE AS (SELECT DATE_PART('month', book_date) AS month, SUM(total_amount) AS total_sales
			FROM bookings
			GROUP BY month
			ORDER BY month)
SELECT month, total_sales,
LEAD(total_sales, 1) OVER(ORDER BY month) next_month_total_sales
FROM CTE

WITH CTE AS (SELECT DATE_PART('month', book_date) AS month, SUM(total_amount) AS total_sales
			FROM bookings
			GROUP BY month
			ORDER BY month
), CTE2 AS (SELECT month, total_sales,
			LEAD(total_sales, 1) OVER(ORDER BY month) next_month_total_sales
			FROM CTE)
SELECT month, total_sales, next_month_total_sales,
(next_month_total_sales - total_sales) AS variance
FROM CTE2
