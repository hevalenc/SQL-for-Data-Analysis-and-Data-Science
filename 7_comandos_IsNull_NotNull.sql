SELECT * FROM flights
WHERE actual_departure ISNULL AND actual_arrival ISNULL;

SELECT * FROM flights
WHERE actual_departure IS NOT NULL AND actual_arrival IS NOT NULL;