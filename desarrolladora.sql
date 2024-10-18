DROP DATABASE IF EXISTS desarrollador;
CREATE DATABASE desarrollador;
USE desarrollador;

CREATE TABLE desarrollador (
	nombre VARCHAR (50) PRIMARY KEY
);

CREATE TABLE juego (
	id INT PRIMARY KEY,
	nombre VARCHAR (50),
	fk_desarrollador VARCHAR(50),
	FOREIGN KEY (fk_desarrollador) REFERENCES desarrollador(nombre)
	on delete cascade
);

CREATE TABLE personaje (
	nombre VARCHAR(50) PRIMARY KEY,
	vida FLOAT,
	fk_juego INT,
	FOREIGN KEY (fk_juego) REFERENCES juego (id)
);

INSERT INTO desarrollador VALUES  ('Buggy Soft');
INSERT INTO juego  VALUES
 (1,'las aventuras del capitan salami' , 'Buggy Soft'),
 (2,'las aventuras del capitan salami - vengan 	edition', 'Buggy Soft');

INSERT INTO personaje VALUES
 ('capitan salami', 1.5,1),
 ('señor cuchiller',1. ,1),
 ('capitan seltan',1.5,2),
 ('señor cucharilla',1.5,2);

DELETE FROM  juego WHERE id=1;

SELECT * FROM personaje;
SELECT * FROM juego;
SELECT * FROM desarrollador;

