CREATE DATABASE ej2_db;
USE ej2_db;

CREATE TABLE e2_inicial (
  id_pedido INT,
  cliente VARCHAR(50),
  productos VARCHAR(200)
);

INSERT INTO e2_inicial VALUES
(1,'Juan','Pizza, Refresco'),
(2,'María','Hamburguesa, Refresco'),
(3,'Luis','Pizza, Helado'),
(4,'Ana','Ensalada, Agua'),
(5,'Carla','Hamburguesa, Agua');

CREATE TABLE e2_cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE e2_pedido (
  id_pedido INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES e2_cliente(id_cliente)
);

CREATE TABLE e2_producto (
  id_producto INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE e2_pedido_producto (
  id_pedido INT,
  id_producto INT,
  PRIMARY KEY (id_pedido, id_producto),
  FOREIGN KEY (id_pedido) REFERENCES e2_pedido(id_pedido),
  FOREIGN KEY (id_producto) REFERENCES e2_producto(id_producto)
);

INSERT INTO e2_cliente VALUES
(1,'Juan'),(2,'María'),(3,'Luis'),(4,'Ana'),(5,'Carla');

INSERT INTO e2_pedido VALUES
(1,1),(2,2),(3,3),(4,4),(5,5);

INSERT INTO e2_producto VALUES
(1,'Pizza'),(2,'Refresco'),(3,'Hamburguesa'),
(4,'Helado'),(5,'Ensalada'),(6,'Agua');

INSERT INTO e2_pedido_producto VALUES
(1,1),(1,2),
(2,3),(2,2),
(3,1),(3,4),
(4,5),(4,6),
(5,3),(5,6);
