CREATE DATABASE ej8_db;
USE ej8_db;

CREATE TABLE e8_inicial (
  id_venta INT,
  cliente VARCHAR(50),
  producto VARCHAR(50),
  categoria VARCHAR(50),
  precio DECIMAL(10,2),
  proveedor VARCHAR(50)
);

INSERT INTO e8_inicial VALUES
(1,'Juan','Mouse','Periféricos',50.00,'TechSRL'),
(2,'María','Teclado','Periféricos',80.00,'TechSRL'),
(3,'Luis','Monitor','Pantallas',700.00,'ScreenSA'),
(4,'Ana','USB','Accesorios',40.00,'TechSRL'),
(5,'Carla','Auriculares','Periféricos',120.00,'AudioPro');

CREATE TABLE e8_cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE e8_categoria (
  id_categoria INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE e8_proveedor (
  id_proveedor INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE e8_producto (
  id_producto INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  id_categoria INT NOT NULL,
  id_proveedor INT NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES e8_categoria(id_categoria),
  FOREIGN KEY (id_proveedor) REFERENCES e8_proveedor(id_proveedor)
);

CREATE TABLE e8_venta (
  id_venta INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  id_producto INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES e8_cliente(id_cliente),
  FOREIGN KEY (id_producto) REFERENCES e8_producto(id_producto)
);

INSERT INTO e8_cliente VALUES
(1,'Juan'),(2,'María'),(3,'Luis'),(4,'Ana'),(5,'Carla');

INSERT INTO e8_categoria VALUES
(1,'Periféricos'),
(2,'Pantallas'),
(3,'Accesorios'),
(4,'Redes'),
(5,'Almacenamiento');

INSERT INTO e8_proveedor VALUES
(1,'TechSRL'),
(2,'ScreenSA'),
(3,'AudioPro'),
(4,'RedPlus'),
(5,'StoreMax');

INSERT INTO e8_producto VALUES
(1,'Mouse',1,1,50.00),
(2,'Teclado',1,1,80.00),
(3,'Monitor',2,2,700.00),
(4,'USB',3,1,40.00),
(5,'Auriculares',1,3,120.00);

INSERT INTO e8_venta VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5);
