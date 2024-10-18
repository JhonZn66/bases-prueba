DROP DATABASE IF EXISTS fut;
CREATE DATABASE fut;
USE fut;

CREATE TABLE equipo (
	id_equipo INT PRIMARY KEY,
	nombre VARCHAR (100),
	cuidad VARCHAR (100)
);

CREATE TABLE jugador(
	dni VARCHAR(100) PRIMARY KEY,
	nombre VARCHAR(100),
	nacionalidad  VARCHAR(100),
	dorsal INT (100),
	id_jugador INT,
	 FOREIGN KEY (id_jugador) REFERENCES equipo(id_equipo)
);

INSERT INTO equipo VALUES (1, 'REALM','MADRID' );
INSERT INTO equipo VALUES (2, 'FCB','BARCELONA' );
 
INSERT INTO jugador VALUES
('12345678A', 'luka','croata',10, 1),
('12345678B', 'mohamed','egipcia',11 ,2);
