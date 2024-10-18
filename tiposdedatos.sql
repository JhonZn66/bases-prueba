DROP DATABASE IF EXISTS tiposdedatos;
create database tiposdedatos;
use tiposdedatos;

CREATE TABLE tiposdedatos (
        flotante FLOAT(5,2),
        decimales DECIMAL (7,3),
        codigo CHAR (4) DEFAULT 'ABC' ,
        texto TEXT NULL DEFAULT 'HOLA' ,
        dia DATE NULL DEFAULT '2024-01-01' ,
        momento DATETIME NULL DEFAULT  '2024-01-01 00:00:00' ,
        hora TIME NULL DEFAULT '00:00:00' ,
        color ENUM ('Rojo','Verde','Azul') DEFAULT 'Rojo'
);

INSERT INTO tiposdedatos VALUES 
(23.1,77.12,'ABCD',
'Texto largooooooooooo',
'2006-09-04','2006-09-04 11.59.11',
'11:59:11','rojo'),
(7.15, 8.13) 
;
