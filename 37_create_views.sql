CREATE VIEW aircrafts_eng AS
SELECT aircraft_code, model ->> 'en' AS model, range
FROM aircrafts;

SELECT * FROM aircrafts_eng;

CREATE VIEW airports_eng AS
SELECT airport_code, airport_name ->> 'en' AS airport_name, city ->> 'en' AS city, coordinates, timezone
FROM airports;

SELECT * FROM airports_eng;