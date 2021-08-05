SELECT COUNT(*) FROM flights;

/*The NULLIF() function returns NULL if two expressions are equal, otherwise it returns the first expression.*/
SELECT COUNT(NULLIF(actual_departure, null)), COUNT(NULLIF(actual_arrival, null))
FROM flights;

SELECT COUNT(NULLIF(actual_departure, null)) cnt1, COUNT(NULLIF(actual_arrival, null)) cnt2
FROM flights;

SELECT COUNT(*) - COUNT(NULLIF(actual_departure, null)) non_cnt_1,
COUNT(*) - COUNT(NULLIF(actual_arrival, null)) AS non_count_2
FROM flights;