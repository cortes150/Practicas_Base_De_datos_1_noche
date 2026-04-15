
-- Inserta Estudiantes
INSERT INTO Estudiante (nombre, paterno, materno, codigo) VALUES 
('Juan', 'Chavez', 'Perez', 'EST-001'),
('Maria', 'Gomez', 'Arratia', 'EST-002');

-- Inserta Jurados
INSERT INTO Jurado (nombre_jurado, calificacion) VALUES 
('Armando Machaca', 90),
('Jose Gomez', 85);

-- Inserta Categorias
INSERT INTO categoria (nombre_categoria) VALUES 
('Investigacion'),
('Desarrollo Tecnologico');

-- Inserta Materias
INSERT INTO materia (nombre_materia) VALUES 
('Base de Datos I'),
('Estructura de Datos');

-- Inserta Temas
INSERT INTO tema (nombre_tema) VALUES 
('Calentamiento Global'),
('Inteligencia Artificial');

-- Inserta Proyectos
INSERT INTO proyecto (fecha_proyecto, estado, id_tema, id_categoria, id_materia) VALUES 
('2026-04-14', 'Aprobado', 1, 1, 1),
('2026-04-15', 'Reprobado', 2, 2, 2);

INSERT INTO estudiante_proyecto (id_estudiante, id_proyecto) VALUES 
(1, 1);

INSERT INTO proyecto_jurado (id_proyecto, id_jurado) VALUES 
(1, 2);
