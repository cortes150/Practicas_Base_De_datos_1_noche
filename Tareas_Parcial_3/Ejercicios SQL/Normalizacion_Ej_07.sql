CREATE DATABASE ej7_db;
USE ej7_db;

CREATE TABLE e7_inicial (
  id_reserva INT,
  cliente VARCHAR(50),
  telefono VARCHAR(20),
  evento VARCHAR(100),
  lugar VARCHAR(100),
  fecha DATE
);

INSERT INTO e7_inicial VALUES
(1,'Juan','777','Concierto A','Teatro 1','2026-05-01'),
(2,'María','999','Concierto A','Teatro 1','2026-05-01'),
(3,'Luis','700','Feria Tech','Centro X','2026-06-10'),
(4,'Ana','611','Expo Arte','Galería Z','2026-07-20'),
(5,'Carla','800','Feria Tech','Centro X','2026-06-10');

CREATE TABLE e7_cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  telefono VARCHAR(20) NOT NULL
);

CREATE TABLE e7_evento (
  id_evento INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  lugar VARCHAR(100) NOT NULL,
  fecha DATE NOT NULL
);

CREATE TABLE e7_reserva (
  id_reserva INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  id_evento INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES e7_cliente(id_cliente),
  FOREIGN KEY (id_evento) REFERENCES e7_evento(id_evento)
);

INSERT INTO e7_cliente VALUES
(1,'Juan','777'),
(2,'María','999'),
(3,'Luis','700'),
(4,'Ana','611'),
(5,'Carla','800');

INSERT INTO e7_evento VALUES
(1,'Concierto A','Teatro 1','2026-05-01'),
(2,'Feria Tech','Centro X','2026-06-10'),
(3,'Expo Arte','Galería Z','2026-07-20'),
(4,'Concierto B','Teatro 2','2026-05-15'),
(5,'Charla IA','Auditorio','2026-08-05');

INSERT INTO e7_reserva VALUES
(1,1,1),
(2,2,1),
(3,3,2),
(4,4,3),
(5,5,2);
