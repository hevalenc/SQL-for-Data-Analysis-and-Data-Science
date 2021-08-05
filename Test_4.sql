/*
Test Your Self
1. Who traveled from Moscow (SVO) to Novosibirsk (OVB) on seat 1A yesterday, and when was the ticket booked?

2. Find the most disciplined passengers who checked in first for all their flights. Take into account only those
passengers who took at least two flights?

3. Calculate the number of passengers and number of flights departing from one airport (SVO) during each hour on the
indicated day 2017-08-02?
*/

/*1*/
/*The day before yesterday” is counted from the public.now value, not from the current date*/
SELECT t.passenger_name, b.book_date
FROM bookings b
JOIN tickets t
ON t.book_ref = b.book_ref
JOIN boarding_passes bp
ON bp.ticket_no = t.ticket_no
JOIN flights f
ON f.flight_id = bp.flight_id
WHERE f.departure_airport = 'SVO' AND f.arrival_airport = 'OVB'
AND f.scheduled_departure::date = public.now()::date - INTERVAL '2 day'
AND bp.seat_no = '1A';

/*2*/
SELECT t.passenger_name, t.ticket_no
FROM tickets t
JOIN boarding_passes bp
ON bp.ticket_no = t.ticket_no
GROUP BY t.passenger_name, t.ticket_no
HAVING MAX(bp.boarding_no) = 1 AND COUNT(*) > 1;

/*3*/
SELECT date_part ('hour', f.scheduled_departure) "hour", COUNT(ticket_no) passengers_cnt,
COUNT(DISTINCT f.flight_id) flights_cnt
FROM flights f
JOIN ticket_flights t ON f.flight_id = t.flight_id
WHERE f.departure_airport = 'SVO'
AND f.scheduled_departure >= '2017-08-02' :: DATE
AND f.scheduled_departure <'2017-08-03' :: DATE
GROUP BY date_part ('hour', f.scheduled_departure);