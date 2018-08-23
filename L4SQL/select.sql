SELECT * FROM flights;
SELECT origin, destination FROM flights;
SELECT origin, destination FROM flights WHERE id = 3;
SELECT * FROM flights WHERE origin = 'New York';
SELECT * FROM flights WHERE destination = 'MIT';
SELECT * FROM flights WHERE duration > 200;
SELECT * FROM flights WHERE destination = 'MIT' AND duration > 100;
SELECT * FROM flights WHERE destination = 'MIT' OR duration > 100;
SELECT AVG(duration) FROM flights;
SELECT AVG(duration) FROM flights WHERE origin = 'Stanford';
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) FROM flights WHERE origin = 'MIT';
SELECT COUNT(*) FROM flights WHERE origin = 'UCB';
SELECT MIN(duration) FROM flights;
SELECT * FROM flights WHERE duration = 30;
SELECT * FROM flights WHERE origin IN ('New York', 'MIT');
SELECT * FROM flights WHERE origin LIKE '%I%';

SELECT * FROM flights LIMIT 2;
SELECT * FROM flights ORDER BY duration ASC;
SELECT * FROM flights ORDER BY duration DESC;
SELECT origin, COUNT(*) FROM flights GROUP BY origin;
SELECT origin, COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1;

SELECT * FROM passengers WHERE name = 'Tom';
SELECT * FROM flights WHERE id = 3;
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id WHERE name = 'Tom';
SELECT origin, destination, name FROM flights LEFT JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights RIGHT JOIN passengers ON passengers.flight_id = flights.id;

SELECT * FROM flights WHERE id IN (SELECT flight_id FROM passengers GROUP BY flight_id HAVING COUNT(*) > 1);
