CREATE DATABASE ej5_db;
USE ej5_db;

CREATE TABLE e5_inicial (
  id_factura INT,
  cliente VARCHAR(50),
  producto VARCHAR(50),
  precio DECIMAL(10,2),
  cantidad INT,
  total DECIMAL(10,2)
);

INSERT INTO e5_inicial VALUES
(1,'Juan','Mouse',50.00,2,100.00),
(1,'Juan','Teclado',80.00,1,80.00),
(2,'María','Monitor',700.00,1,700.00),
(3,'Luis','USB',40.00,3,120.00),
(4,'Ana','Auriculares',120.00,1,120.00);

CREATE TABLE e5_cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE e5_producto (
  id_producto INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE e5_factura (
  id_factura INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES e5_cliente(id_cliente)
);

CREATE TABLE e5_detalle_factura (
  id_factura INT,
  id_producto INT,
  cantidad INT NOT NULL,
  PRIMARY KEY (id_factura, id_producto),
  FOREIGN KEY (id_factura) REFERENCES e5_factura(id_factura),
  FOREIGN KEY (id_producto) REFERENCES e5_producto(id_producto)
);

INSERT INTO e5_cliente VALUES
(1,'Juan'),(2,'María'),(3,'Luis'),(4,'Ana'),(5,'Carla');

INSERT INTO e5_producto VALUES
(1,'Mouse',50.00),
(2,'Teclado',80.00),
(3,'Monitor',700.00),
(4,'USB',40.00),
(5,'Auriculares',120.00);

INSERT INTO e5_factura VALUES
(1,1),(2,2),(3,3),(4,4),(5,5);

INSERT INTO e5_detalle_factura VALUES
(1,1,2),
(1,2,1),
(2,3,1),
(3,4,3),
(4,5,1),
(5,4,2);
