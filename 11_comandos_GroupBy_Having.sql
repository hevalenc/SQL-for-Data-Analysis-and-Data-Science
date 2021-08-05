SELECT city, COUNT(*)
FROM airports
GROUP BY city;

SELECT city, COUNT(*)
FROM airports
GROUP BY city
HAVING COUNT(*) > 1;

SELECT city ->> 'en' AS city, COUNT(*)
FROM airports
GROUP BY city
HAVING COUNT(*) > 1;