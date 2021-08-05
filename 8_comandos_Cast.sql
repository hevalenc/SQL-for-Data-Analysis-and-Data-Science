SELECT '50'; /*tipo: texto*/
SELECT '50' ::INTEGER; /*conversão para inteiro*/
SELECT CAST ('50' AS INTEGER);

SELECT '01-01-2020' ::DATE; /*conversão para data*/
SELECT CAST ('01-01-2020' AS DATE);

SELECT CAST ('true' AS BOOLEAN);
SELECT CAST ('false' AS BOOLEAN);
SELECT CAST ('t' AS BOOLEAN);
SELECT CAST ('f' AS BOOLEAN);

SELECT '30 minute' ::INTERVAL; /*00:30:00*/
SELECT '5 hour' ::INTERVAL; /*05:00:00*/
SELECT '2 day' ::INTERVAL; /*2 days*/
SELECT '4 week' ::INTERVAL; /*28 days*/
SELECT '11 month' ::INTERVAL; /*11 mons*/
SELECT '12 month' ::INTERVAL; /*1 year*/
SELECT '13 month' ::INTERVAL; /*1 year 1 on*/

SELECT CAST ('30 minute' AS INTERVAL);
SELECT CAST ('5 hour' AS INTERVAL);
SELECT CAST ('2 day' AS INTERVAL);
SELECT CAST ('4 week' AS INTERVAL);
SELECT CAST ('11 month' AS INTERVAL);
SELECT CAST ('12 month' AS INTERVAL);
SELECT CAST ('13 month' AS INTERVAL);