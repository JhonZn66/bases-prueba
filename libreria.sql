DROP DATABASE IF EXISTS libreria;
CREATE DATABASE libreria;
USE libreria;

CREATE TABLE Autor(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50);
	dni VARCHAR(10) UNIQUE KEY
);

INSERT INTO autor VALUES (1, 'Anjeli','J123456789');

CREATE TABLE Tienda (
        cif VARCHAR(9) PRIMARY KEY,
        ubicacion VARCHAR(250),
        web VARCHAR (250)
);

INSERT INTO tienda VALUES ('B12345678','Madrid','www.happy.com'); 

CREATE TABLE Libro (
	isbn VARCHAR(13) PRIMARY KEY,
	id_autor INT,
	cif_tienda VARCHAR(9),
	titulo VARCHAR(25),
	genero VARCHAR(10) DEFAULT 'fantasia',
	precio INT CHECK (precio < 50),
	fecha_de_publicacion DATE CHECK (Fecha_de_publicacion > '2014-01-01'),
	FOREIGN KEY (id_autor) REFERENCES autor(id),
	FOREIGN KEY (cif_tienda; REFERENCES tienda(cif)
);

INSERT INTO libro VALUES ('9783161484100',1,'V1234567' 'Luna','terror',46,'2016-05-09');


