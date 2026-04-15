create database uniprojects_db;
use uniprojects_db;

create table tema(
id_tema int auto_increment primary key,
titulo varchar(50),
id_proyecto int,
foreign key (id_proyecto)
references proyecto(id_proyecto)
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
puntaje double,
id_calificacion int,
foreign key (id_calificacion)
references calificacion(id_calificacion));

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