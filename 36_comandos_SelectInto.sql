SELECT tf.ticket_no, tf.fare_conditions, tf.amount, s.seat_no, s.aircraft_code, a.model ->> 'en' AS model
INTO flights_info
FROM ticket_flights tf
JOIN seats s
ON tf.fare_conditions = s.fare_conditions
JOIN aircrafts a
ON s.aircraft_code = a.aircraft_code
LIMIT 50;

SELECT t.ticket_no, t.passenger_name, t.contact_data, b.total_amount, b.book_date
INTO tickets_info
FROM tickets t
JOIN bookings b
ON t.book_ref = b.book_ref
