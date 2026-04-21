CREATE DATABASE ej6_db;
USE ej6_db;

CREATE TABLE e6_inicial (
  id_estudiante INT,
  nombre VARCHAR(50),
  carrera VARCHAR(50),
  materias VARCHAR(200)
);

INSERT INTO e6_inicial VALUES
(1,'Juan','Sistemas','BD, Programación'),
(2,'María','Economía','Estadística, Matemáticas'),
(3,'Luis','Sistemas','Redes, BD'),
(4,'Ana','Derecho','Civil, Penal'),
(5,'Carla','Sistemas','Programación, Redes');

CREATE TABLE e6_estudiante (
  id_estudiante INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  carrera VARCHAR(50) NOT NULL
);

CREATE TABLE e6_materia (
  id_materia INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE e6_estudiante_materia (
  id_estudiante INT,
  id_materia INT,
  PRIMARY KEY (id_estudiante, id_materia),
  FOREIGN KEY (id_estudiante) REFERENCES e6_estudiante(id_estudiante),
  FOREIGN KEY (id_materia) REFERENCES e6_materia(id_materia)
);

INSERT INTO e6_estudiante VALUES
(1,'Juan','Sistemas'),
(2,'María','Economía'),
(3,'Luis','Sistemas'),
(4,'Ana','Derecho'),
(5,'Carla','Sistemas');

INSERT INTO e6_materia VALUES
(1,'BD'),
(2,'Programación'),
(3,'Redes'),
(4,'Estadística'),
(5,'Matemáticas'),
(6,'Civil'),
(7,'Penal');

INSERT INTO e6_estudiante_materia VALUES
(1,1),(1,2),
(2,4),(2,5),
(3,3),(3,1),
(4,6),(4,7),
(5,2),(5,3);
