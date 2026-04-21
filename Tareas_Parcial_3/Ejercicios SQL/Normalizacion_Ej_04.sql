CREATE DATABASE ej4_db;
USE ej4_db;

CREATE TABLE e4_inicial (
  id_cliente INT,
  nombre VARCHAR(50),
  ciudad VARCHAR(50),
  codigo_postal VARCHAR(10)
);

INSERT INTO e4_inicial VALUES
(1,'Juan','La Paz','0201'),
(2,'María','Cochabamba','0301'),
(3,'Luis','La Paz','0201'),
(4,'Ana','Santa Cruz','0401'),
(5,'Carla','Oruro','0501');

CREATE TABLE e4_ciudad (
  id_ciudad INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  codigo_postal VARCHAR(10) NOT NULL
);

CREATE TABLE e4_cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  id_ciudad INT NOT NULL,
  FOREIGN KEY (id_ciudad) REFERENCES e4_ciudad(id_ciudad)
);

INSERT INTO e4_ciudad VALUES
(1,'La Paz','0201'),
(2,'Cochabamba','0301'),
(3,'Santa Cruz','0401'),
(4,'Oruro','0501'),
(5,'Tarija','0601');

INSERT INTO e4_cliente VALUES
(1,'Juan',1),
(2,'María',2),
(3,'Luis',1),
(4,'Ana',3),
(5,'Carla',4);
