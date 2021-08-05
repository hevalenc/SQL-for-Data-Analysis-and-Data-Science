SELECT book_date, COUNT(*)
FROM bookings
GROUP BY book_date;

SELECT DATE_TRUNC('day', book_date) AS day, COUNT(total_amount) AS total_bookings /*retorna os dias com o timestamp*/
FROM bookings
GROUP BY DATE_TRUNC('day', book_date); 

SELECT DATE_TRUNC('day', book_date) AS day, DATE_TRUNC('month', book_date) AS month,
COUNT(total_amount) AS total_bookings
FROM bookings
GROUP BY day, month;

SELECT DATE_PART('day', book_date) AS day, DATE_PART('month', book_date) AS month, /*retorna os dias sem o timestamp*/
COUNT(total_amount) AS total_bookings
FROM bookings
GROUP BY day, month;

SELECT DATE_PART('day', book_date) AS day, DATE_PART('month', book_date) AS month,
SUM(total_amount) AS total_bookings
FROM bookings
GROUP BY day, month;

SELECT DATE_PART('day', book_date) AS day, DATE_PART('month', book_date) AS month,
SUM(total_amount) AS total_bookings
FROM bookings
GROUP BY day, month
HAVING DATE_PART('month', book_date) = 6 AND DATE_PART('day', book_date) = 25;

SELECT DATE_PART('dow', book_date) AS day, DATE_PART('month', book_date) AS month, /*dow - days of week*/
SUM(total_amount) AS total_bookings
FROM bookings
GROUP BY day, month
HAVING DATE_PART('month', book_date) = 6;
/*dow (days of week) results = 0 - Sunday, 1 - Monday, 2 - Tuesday, 3 - Wednesday, 4 - Thursday, 5 - Friday, 6 - Saturday*/

SELECT DATE_PART('month', book_date) AS month,
SUM(total_amount) AS total_bookings
FROM bookings
GROUP BY month;
