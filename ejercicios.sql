DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

-- INSERTAR:;
-- 1 valores en a, b y c
-- 2 valores en orden b, c, a 
-- 3 valores en c y b 
-- 4 valor en b
-- '2024-10-08'

CREATE TABLE ej1 (
	a INT,
	b DATE,
	C VARCHAR(5)
);

	INSERT INTO ej1 VALUES (1, '2020-10-08','Jhon');
	INSERT INTO ej1 (b,c,a) VALUES ('2021-10-08', 'Jhian', 2);
	INSERT INTO ej1 (c,b) VALUES ('bye', '2022-10-08');
	INSERT INTO ej1 (b) VALUES ('2023-10-08');

	SELECT * FROM ej1;
-- EJ2
-- VALORES EN A,B Y D
-- VALORES EN A,B Y C
-- VALORES EN C,A Y DEFAULT EN B, Y D EN NULL
-- VALOR EN A CON DEFAULT EN B Y D
-- VALOR EN A CON NULL EN D

CREATE TABLE  ej2 (
	a INT NOT NULL,
	b INT  NOT NULL DEFAULT 0,
	c VARCHAR(5),
	d VARCHAR(5) DEFAULT 'hola'
);

	INSERT INTO ej2 (a, b, d) VALUES (2, 4, 'XD');
	INSERT INTO ej2 (a, b, c) VALUES (3, 5, 'HL');
	INSERT INTO ej2 (c, a, d) VALUES ('rama' ,8, null);
	INSERT INTO ej2 (a) VALUES (6);
	INSERT INTO ej2 (a, d) VALUES (9, NULL);

	SELECT * FROM ej2;

-- EJ3

CREATE TABLE ej3 (
	a INT AUTO_INCREMENT PRIMARY KEY,
	b VARCHAR(5) UNIQUE KEY,
	c VARCHAR(5) DEFAULT 'hola'
);

	INSERT INTO ej3 (b,c) VALUES
		('papap','prueb'),
		('batma','cosa');
	INSERT INTO ej3 VALUES
		(5,'bla','pepe');
	INSERT INTO ej3 (b,c) VALUES
		('otra','mas');

	SELECT * FROM  ej3;
