SELECT * FROM clubs; -- PRIMARY KEY is idClub

-- If we try to use a value for idClub that already exists, an error is thrown.
INSERT INTO clubs VALUES (1, 1, "Sporting", "SCP", 'Estádio José Alvalade', '1906-07-01');
-- Error Code: 1062. Duplicate entry '1' for key 'PRIMARY'

-- What happens in Cassandra?

-- NULL values
SELECT * FROM seasons;
INSERT INTO seasons VALUES(21, NULL);
SELECT * FROM seasons;

-- What happens in Cassandra under the hood?