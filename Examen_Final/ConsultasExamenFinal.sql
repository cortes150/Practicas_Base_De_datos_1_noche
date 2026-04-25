-- Pregunta 1. Lista todos los eventos y la cantidad de entradas vendidas para cada uno.
select evento.nombre as 'Nombre evento', count(entrada.id_entrada) as 'Entradas Vendidas' 
from evento 
left join entrada on evento.id_evento = entrada.id_evento
where entrada.estado = 'vendida'
group by evento.nombre;

-- 2. Muestra los nombres de los usuarios que realizaron pagos con tarjeta.
select distinct usuario.nombre
from usuario
join compra on usuario.id_usuario = compra.id_usuario
join pago on compra.id_compra = pago.id_compra
where pago.metodo = 'tarjeta';

-- 3. Muestra el total recaudado por cada método de pago.
select metodo as 'Método de Pago', sum(monto) as 'Total recaudado'
from pago
group by metodo;

-- 4. Muestra los eventos que tienen al menos una entrada cancelada y cuántas fueron.
select ev.nombre, count(en.id_entrada) as total_canceladas
from evento ev
join entrada en on ev.id_evento = en.id_evento
where en.estado = 'cancelada'
group by e.nombre;

-- 5. Muestra los usuarios que compraron más de una entrada.
select u.nombre as 'Usuario', count(c.id_entrada) as 'Cantidad entradas'
from usuario u
join compra c on u.id_usuario = c.id_usuario
group by u.nombre
having count(c.id_entrada) > 1;

-- 6. Encuentra el evento con la entrada más cara del sistema
select ev.nombre as 'Nombre evento', en.precio as 'Precio más alto'
from evento ev
join entrada en on ev.id_evento = en.id_evento
order by en.precio desc
limit 1;

-- 7. Muestra los usuarios que asistieron al menos a un evento.
select distinct u.nombre as 'Usuario'
from usuario u
join asistencia a on u.id_usuario = a.id_usuario
where a.asistio = 1;

-- 8. Muestra el promedio de precios de las entradas por cada evento.
select ev.nombre as 'Evento', avg(en.precio) as 'Precio promedio'
from evento ev
join entrada en on ev.id_evento = en.id_evento
group by ev.nombre;

-- 9. Muestra los usuarios que no asistieron a ningún evento.
select nombre as 'Usuario'
from usuario
where id_usuario not in (select id_usuario from asistencia where asistio = 1);

-- select id_usuario 
-- from asistencia 
-- where asistio = 1

-- 10. Muestra cuánto dinero ha pagado en total cada usuario, ordenado de mayor a menor.
select u.nombre as 'Usuario', sum(p.monto) as 'Total pagado'
from usuario u
join compra c on u.id_usuario = c.id_usuario
join pago p on c.id_compra = p.id_compra
group by u.nombre
order by 'Total pagado' desc;
