CREATE DATABASE ej9_db;
USE ej9_db;

CREATE TABLE e9_inicial (
  id_curso INT,
  nombre_curso VARCHAR(100),
  id_docente INT,
  nombre_docente VARCHAR(50),
  aula VARCHAR(20)
);

INSERT INTO e9_inicial VALUES
(1,'BD I',10,'Carlos','A101'),
(2,'Prog I',11,'María G.','B202'),
(3,'Redes',12,'Lucía','C303'),
(4,'BD II',10,'Carlos','A102'),
(5,'Web',13,'Pedro','D404');

CREATE TABLE e9_docente (
  id_docente INT PRIMARY KEY,
  nombre_docente VARCHAR(50) NOT NULL
);

CREATE TABLE e9_curso (
  id_curso INT PRIMARY KEY,
  nombre_curso VARCHAR(100) NOT NULL,
  id_docente INT NOT NULL,
  aula VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_docente) REFERENCES e9_docente(id_docente)
);

INSERT INTO e9_docente VALUES
(10,'Carlos'),
(11,'María G.'),
(12,'Lucía'),
(13,'Pedro'),
(14,'Sofía');

INSERT INTO e9_curso VALUES
(1,'BD I',10,'A101'),
(2,'Prog I',11,'B202'),
(3,'Redes',12,'C303'),
(4,'BD II',10,'A102'),
(5,'Web',13,'D404');
