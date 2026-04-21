CREATE DATABASE ej3_db;
USE ej3_db;

CREATE TABLE e3_inicial (
  id_evento INT,
  nombre_evento VARCHAR(100),
  id_dj INT,
  nombre_dj VARCHAR(50)
);

INSERT INTO e3_inicial VALUES
(1,'Fiesta Primavera',10,'DJ Alpha'),
(2,'Noche Electro',11,'DJ Beta'),
(3,'Sunset Party',10,'DJ Alpha'),
(4,'Retro Hits',12,'DJ Gamma'),
(5,'Festival Urbano',13,'DJ Delta');

CREATE TABLE e3_dj (
  id_dj INT PRIMARY KEY,
  nombre_dj VARCHAR(50) NOT NULL
);

CREATE TABLE e3_evento (
  id_evento INT PRIMARY KEY,
  nombre_evento VARCHAR(100) NOT NULL,
  id_dj INT NOT NULL,
  FOREIGN KEY (id_dj) REFERENCES e3_dj(id_dj)
);

INSERT INTO e3_dj VALUES
(10,'DJ Alpha'),
(11,'DJ Beta'),
(12,'DJ Gamma'),
(13,'DJ Delta'),
(14,'DJ Epsilon');

INSERT INTO e3_evento VALUES
(1,'Fiesta Primavera',10),
(2,'Noche Electro',11),
(3,'Sunset Party',10),
(4,'Retro Hits',12),
(5,'Festival Urbano',13);
