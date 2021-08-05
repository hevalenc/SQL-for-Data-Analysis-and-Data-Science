SELECT book_date, book_ref
FROM bookings
WHERE book_date = '13-8-2017'::DATE;

SELECT public.now();

SELECT DATE_TRUNC('day', book_date), DATE_PART('day', book_date),
EXTRACT ('day' FROM book_date) date_part_extract,
CURRENT_DATE
FROM bookings;