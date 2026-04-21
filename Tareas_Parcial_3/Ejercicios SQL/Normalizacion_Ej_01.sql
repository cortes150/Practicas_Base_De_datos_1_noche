CREATE DATABASE ej1_db;
USE ej1_db;

CREATE TABLE e1_inicial (
  id_cliente INT,
  nombre VARCHAR(50),
  telefonos VARCHAR(200)
);

INSERT INTO e1_inicial VALUES
(1,'Juan','777,888'),
(2,'María','999,990'),
(3,'Luis','700,701'),
(4,'Ana','611,612'),
(5,'Carla','800,900');

CREATE TABLE e1_cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE e1_telefono_cliente (
  id_telefono INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES e1_cliente(id_cliente)
);

INSERT INTO e1_cliente VALUES
(1,'Juan'),(2,'María'),(3,'Luis'),(4,'Ana'),(5,'Carla');

INSERT INTO e1_telefono_cliente (id_cliente, telefono) VALUES
(1,'777'),(1,'888'),
(2,'999'),(2,'990'),
(3,'700'),(3,'701'),
(4,'611'),(4,'612'),
(5,'800'),(5,'900');
