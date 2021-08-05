CREATE TABLE pilots(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	speciality TEXT NOT NULL,
	age TEXT
);

INSERT INTO pilots (name, speciality, age)
VALUES 	('John', 'pilot', 50),
		('Sara', 'co-pilot', 35),
		('David', 'pilot', null);

SELECT * FROM pilots;

SELECT COUNT(name) FROM pilots;
SELECT COUNT(age) FROM pilots;