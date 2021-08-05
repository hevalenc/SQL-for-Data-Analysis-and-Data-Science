SELECT UPPER(first_name), LOWER(last_name)
FROM passenger_name_divided;

/*INITCAP - initial capital, a primeira letra será maiúscula e as demais minúsculas*/
SELECT INITCAP(CONCAT(first_name)||' '||(last_name))
FROM passenger_name_divided;

SELECT INITCAP(first_name), INITCAP(last_name)
FROM passenger_name_divided;

SELECT INITCAP(CONCAT(first_name)||' '||(last_name)) AS full_name,
	   INITCAP(first_name) first_name, INITCAP(last_name) last_name
FROM passenger_name_divided;