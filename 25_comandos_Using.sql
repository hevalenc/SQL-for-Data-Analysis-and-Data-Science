SELECT t.ticket_no, t.passenger_name, t.contact_data, b.total_amount, b.book_date
FROM tickets t
JOIN bookings b
ON t.book_ref = b.book_ref;

SELECT t.ticket_no, t.passenger_name, t.contact_data, b.total_amount, b.book_date
FROM tickets t
JOIN bookings b
USING(book_ref);