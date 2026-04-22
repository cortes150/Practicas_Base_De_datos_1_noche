
-- 1. Insertar un nuevo jugador
INSERT INTO jugador (id_jugador, nombre, nickname, email, pais)
VALUES (100, 'Lucas Fernández', 'LuchoF', 'lucho@gmail.com', 'Argentina');

-- 2. Insertar otro jugador
INSERT INTO jugador (id_jugador, nombre, nickname, email, pais)
VALUES (101, 'Matías Rojas', 'Rojitas', 'rojas@gmail.com', 'Chile');

-- 3. Insertar un equipo
INSERT INTO equipo (id_equipo, nombre, fecha_creacion)
VALUES (50, 'Dragones del Sur', '2024-03-15');

-- 4. Insertar un juego
INSERT INTO juego (id_juego, nombre, genero)
VALUES (30, 'CyberStrike', 'FPS');

-- 5. Insertar un torneo asociado a un juego existente
INSERT INTO torneo (id_torneo, nombre, fecha_inicio, fecha_fin, id_juego)
VALUES (40, 'Copa Abril FPS', '2026-04-10', '2026-04-20', 30);

-- 6. Insertar una partida
INSERT INTO partida (id_partida, id_torneo, fecha, hora, estado)
VALUES (60, 40, '2026-04-12', '18:30:00', 'programada');

-- 7. Registrar inscripción de un equipo
INSERT INTO inscripcion (id_inscripcion, id_equipo, id_torneo, fecha_inscripcion)
VALUES (70, 50, 40, '2026-04-05');

-- 8. Insertar un premio
INSERT INTO premio (id_premio, id_torneo, posicion, monto)
VALUES (80, 40, 1, 6000.00);

-- 9. Insertar estadísticas de un jugador
INSERT INTO estadistica (id_estadistica, id_jugador, id_partida, kills, muertes, asistencias)
VALUES (90, 100, 60, 18, 12, 6);

-- 10. Registrar participación de un equipo
INSERT INTO participacion (id_partida, id_equipo, resultado)
VALUES (60, 50, 'ganó');

-- 11. Actualizar país de un jugador
UPDATE jugador
SET pais = 'Perú'
WHERE id_jugador = 100;

-- 12. Cambiar nickname de un jugador
UPDATE jugador
SET nickname = 'RojasCL'
WHERE id_jugador = 101;

-- 13. Modificar nombre de un equipo
UPDATE equipo
SET nombre = 'Dragones del Sur Pro'
WHERE id_equipo = 50;

-- 14. Cambiar género de un juego
UPDATE juego
SET genero = 'FPS táctico'
WHERE id_juego = 30;

-- 15. Actualizar fecha de inicio de un torneo
UPDATE torneo
SET fecha_inicio = '2026-04-11'
WHERE id_torneo = 40;

-- 16. Cambiar estado de una partida
UPDATE partida
SET estado = 'finalizada'
WHERE id_partida = 60;

-- 17. Modificar monto de un premio
UPDATE premio
SET monto = 7000.00
WHERE id_premio = 80;

-- 18. Actualizar kills de una estadística
UPDATE estadistica
SET kills = 22
WHERE id_estadistica = 90;

-- 19. Cambiar resultado de una participación
UPDATE participacion
SET resultado = 'empate'
WHERE id_partida = 60
  AND id_equipo = 50;
  
-- 20. Modificar fecha de inscripción
UPDATE inscripcion
SET fecha_inscripcion = '2026-04-06'
WHERE id_inscripcion = 70;

-- 21. Mostrar jugadores de un país específico
SELECT *
FROM jugador
WHERE pais = 'Chile';

-- 22. Jugadores que no pertenecen a un país
SELECT *
FROM jugador
WHERE pais <> 'Chile';

-- 23. Equipos creados después de cierta fecha
SELECT *
FROM equipo
WHERE fecha_creacion > '2023-01-01';

-- 24. Juegos de un género determinado
SELECT *
FROM juego
WHERE genero = 'FPS';

-- 25. Torneos en un rango de fechas
SELECT *
FROM torneo
WHERE fecha_inicio BETWEEN '2026-04-01' AND '2026-04-30';

-- 26. Partidas con un estado específico
SELECT *
FROM partida
WHERE estado = 'finalizada';

-- 27. Premios con monto mayor a un valor
SELECT *
FROM premio
WHERE monto > 5000;

-- 28. Estadísticas con kills mayores a un valor
SELECT *
FROM estadistica
WHERE kills > 20;

-- 29. Participaciones con un resultado específico
SELECT *
FROM participacion
WHERE resultado = 'ganó';

-- 30. Inscripciones en un rango de fechas
SELECT *
FROM inscripcion
WHERE fecha_inscripcion BETWEEN '2026-04-01' AND '2026-04-30';
