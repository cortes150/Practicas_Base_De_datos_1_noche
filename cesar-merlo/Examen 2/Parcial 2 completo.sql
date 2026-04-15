create database uniprojects_db;
use uniprojects_db;

create table tema(
id_tema int auto_increment primary key,
titulo varchar(50)
);

create table estudiante(
id_estudiante int auto_increment primary key,
nombre varchar(100),
carrera varchar(50));

create table proyecto(
id_proyecto int auto_increment primary key,
materia varchar(50));

create table jurado(
id_jurado int auto_increment primary key,
nombre varchar(100),
especialidad varchar(50));

create table jurado_proyecto( 
 id_jurado_proyecto int auto_increment primary key,
id_proyecto int,
foreign key (id_proyecto)
references proyecto(id_proyecto),
id_jurado int,
foreign key (id_jurado)
references jurado(id_jurado));

create table evaluacion(
id_evaluacion int auto_increment primary key,
criterio varchar(100),
puntaje double);

create table calificacion(
id_calificacion int auto_increment primary key,
puntaje_final int);

create table proyecto_estudiante(
id_proyecto_estudiante int auto_increment primary key,
id_proyecto int,
foreign key (id_proyecto)
references proyecto(id_proyecto),
id_estudiante int,
foreign key (id_estudiante)
references estudiante(id_estudiante));

alter table proyecto add observaciones varchar(200);
alter table proyecto modify materia varchar(30);

alter table tema
add id_proyecto int,
add constraint fk_tema_proyecto
foreign key (id_proyecto)
references proyecto(id_proyecto);

alter table calificacion
add id_evaluacion int,
add constraint fk_calificacion_evaluacion
foreign key (id_evaluacion)
references evaluacion(id_evaluacion);

alter table evaluacion
add id_jurado int,
add constraint fk_evaluacion_jurado
foreign key (id_jurado)
references jurado(id_jurado);

insert into tema (titulo) values
('Inteligencia Artificial'),
('Sistemas Distribuidos');

insert into estudiante (nombre, carrera) values
('Ana Fernández', 'Ingeniería de Sistemas'),
('Luis Vargas', 'Ingeniería Informática');

insert into proyecto (materia, observaciones) values
('Base de Datos', 'Proyecto sobre modelado relacional'),
('Programación Web', 'Sitio web con backend en PHP');

insert into jurado (nombre, especialidad) values
('Dr. Mario Rojas', 'Ingeniería de Software'),
('Ing. Carla Méndez', 'Arquitectura de Sistemas');

insert into evaluacion (criterio, puntaje, id_jurado) values
('Claridad del proyecto', 8.5, 1),
('Dominio del tema', 9.0, 2);

insert into calificacion (puntaje_final, id_evaluacion) values
(85, 1),
(92, 2);


insert into jurado_proyecto (id_proyecto, id_jurado) values
(1, 1),
(2, 2);

insert into proyecto_estudiante (id_proyecto, id_estudiante) values
(1, 1),
(2, 2);


update tema set id_proyecto = 1 where id_tema = 1;
update tema set id_proyecto = 2 where id_tema = 2;
