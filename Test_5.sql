/*
Test Your Self
1. How many people can be included into a single booking according to the available data?

2. Which combinations of first and last names occur most often? What is the ratio of the passengers with such names
to the total number of passengers? 
*/

/*1*/
SELECT tt.bookings_no, COUNT(*)passengers_no
FROM (SELECT t.book_ref, COUNT(*) bookings_no FROM tickets t GROUP BY t.book_ref) tt
GROUP BY tt.bookings_no
ORDER BY tt.bookings_no;

/*2*/
SELECT passenger_name, round( 100.0 * cnt / SUM(cnt) OVER (), 2) AS percent
FROM (SELECT passenger_name, COUNT(*) cnt  FROM tickets GROUP BY passenger_name) sub
ORDER BY percent DESC;
