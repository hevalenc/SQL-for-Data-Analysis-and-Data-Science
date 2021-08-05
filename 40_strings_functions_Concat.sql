SELECT BTRIM(SPLIT_PART(passenger_name, ' ', 1)) AS first_name,
	   BTRIM(SPLIT_PART(passenger_name, ' ', 2)) AS last_name
INTO passenger_name_divided
FROM tickets;

SELECT CONCAT(first_name)||' '||(last_name)
FROM passenger_name_divided;

SELECT CONCAT(first_name)||'_'||(last_name) AS full_passenger_name
FROM passenger_name_divided;