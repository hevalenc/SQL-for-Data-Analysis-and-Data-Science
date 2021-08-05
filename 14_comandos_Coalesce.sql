SELECT status, actual_departure, actual_arrival FROM flights;

/*The SQL Coalesce and IsNull functions are used to handle NULL values*/
SELECT status, COALESCE(actual_departure, current_timestamp), COALESCE(actual_arrival, current_timestamp)
FROM flights;

SELECT status, COALESCE(actual_departure, current_timestamp), COALESCE(actual_arrival, current_timestamp)
FROM flights
WHERE actual_departure = null OR actual_arrival = null;
