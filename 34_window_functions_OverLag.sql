/*LAG() function provides access to a row that comes before the current row at a specified physical offset. In other
words, from the current row the LAG() function can access data of the previous row, or the row before the previous row,
and so on, this function will be very useful for comparing the values of the current and the previous row.*/

WITH CTE AS (SELECT DATE_PART('month', book_date) AS month, SUM(total_amount) AS total_sales
			FROM bookings
			GROUP BY month
			ORDER BY month)
SELECT month, total_sales,
LAG(total_sales, 1) OVER(ORDER BY month) previous_month_total_sales
FROM CTE

WITH CTE AS (SELECT DATE_PART('month', book_date) AS month, SUM(total_amount) AS total_sales
			FROM bookings
			GROUP BY month
			ORDER BY month
), CTE2 AS(SELECT month, total_sales,
			LAG(total_sales, 1) OVER(ORDER BY month) previous_month_total_sales
			FROM CTE)
SELECT month, total_sales, previous_month_total_sales,
(total_sales - previous_month_total_sales) AS gross
FROM CTE2
