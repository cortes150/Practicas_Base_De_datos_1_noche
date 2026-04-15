-- Consulta UPDATE para para cambiar el estado de un proyecto a "Aprobado"
update proyecto set estado = 'Aprobado' 
where id_proyecto = 2;

-- Consulta DELETE para eliminar a un estudiante y mostrar cómo 
-- se comporta la relación con sus proyectos:
DELETE FROM estudiante
WHERE id_estudiante = 1;
-- El resultado de ejecutar esta sentencia es el siguiente:
-- 01:29:05	DELETE FROM estudiante WHERE id_estudiante = 1	
-- Error Code: 1451. Cannot delete or update a parent row: 
-- a foreign key constraint fails (`uniprojects_db`.
-- `estudiante_proyecto`, CONSTRAINT `estudiante_proyecto_ibfk_1` 
-- FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`))	
-- 0.031 sec

