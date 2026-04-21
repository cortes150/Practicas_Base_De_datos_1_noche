CREATE DATABASE ej10_db;
USE ej10_db;

CREATE TABLE e10_inicial (
  id_compra INT,
  cliente VARCHAR(50),
  telefono VARCHAR(20),
  producto VARCHAR(50),
  precio DECIMAL(10,2),
  cantidad INT,
  total DECIMAL(10,2),
  fecha DATE
);

INSERT INTO e10_inicial VALUES
(1,'Juan','777','Mouse',50.00,2,100.00,'2026-04-01'),
(1,'Juan','777','USB',40.00,1,40.00,'2026-04-01'),
(2,'María','999','Monitor',700.00,1,700.00,'2026-04-03'),
(3,'Luis','700','Teclado',80.00,1,80.00,'2026-04-05'),
(4,'Ana','611','Auriculares',120.00,1,120.00,'2026-04-06');

CREATE TABLE e10_cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  telefono VARCHAR(20) NOT NULL
);

CREATE TABLE e10_producto (
  id_producto INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE e10_compra (
  id_compra INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  fecha DATE NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES e10_cliente(id_cliente)
);

CREATE TABLE e10_detalle_compra (
  id_compra INT,
  id_producto INT,
  cantidad INT NOT NULL,
  PRIMARY KEY (id_compra, id_producto),
  FOREIGN KEY (id_compra) REFERENCES e10_compra(id_compra),
  FOREIGN KEY (id_producto) REFERENCES e10_producto(id_producto)
);

INSERT INTO e10_cliente VALUES
(1,'Juan','777'),
(2,'María','999'),
(3,'Luis','700'),
(4,'Ana','611'),
(5,'Carla','800');

INSERT INTO e10_producto VALUES
(1,'Mouse',50.00),
(2,'USB',40.00),
(3,'Monitor',700.00),
(4,'Teclado',80.00),
(5,'Auriculares',120.00);

INSERT INTO e10_compra VALUES
(1,1,'2026-04-01'),
(2,2,'2026-04-03'),
(3,3,'2026-04-05'),
(4,4,'2026-04-06'),
(5,5,'2026-04-08');

INSERT INTO e10_detalle_compra VALUES
(1,1,2),
(1,2,1),
(2,3,1),
(3,4,1),
(4,5,1),
(5,2,2);
