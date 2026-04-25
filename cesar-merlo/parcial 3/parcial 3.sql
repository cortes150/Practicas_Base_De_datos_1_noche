use unifest_db;

select * from asistencia;
select * from compra;
select * from entrada;
select * from evento;
select * from pago;
select * from usuario;

select e.nombre as nombre_evento, count(en.id_entrada) as entradas_vendidas
from evento e
join entrada en on e.id_evento = en.id_evento
where en.estado = 'vendida'
group by e.id_evento, e.nombre;

select distinct u.nombre 
from usuario u
join  compra c on u.id_usuario = c.id_usuario
join pago p on c.id_compra = p.id_compra
where p.metodo = 'tarjeta';

select p.metodo as metodo_pago, sum(p.monto) as total_recaudado
from pago p
group by p.metodo;

select e.nombre as nombre_evento, count(en.id_entrada) as entradas_canceladas
from evento e
join entrada en on e.id_evento = en.id_evento
where en.estado = 'cancelada'
group by e.id_evento, e.nombre
having count(en.id_entrada) >= 1;

select u.nombre as nombre_usuario, count(c.id_entrada) as cantidad_entradas
from usuario u
join compra c on u.id_usuario = c.id_usuario
group by u.id_usuario, u.nombre
having count(c.id_entrada) > 1;

select e.nombre as nombre_evento, en.precio as precio_entrada
from evento e
join entrada en on e.id_evento = en.id_evento
where en.precio = (select max(precio) 
				  from entrada);

select distinct u.nombre as nombre_usuario
from usuario u
join asistencia a on u.id_usuario = a.id_usuario
where a.asistio >= 1;

select  e.nombre as nombre_evento,
avg(en.precio) as promedio_precio_entradas
from evento e
join entrada en on e.id_evento = en.id_evento
group by e.id_evento, e.nombre;

select u.nombre as nombre_usuario
from usuario u
where u.id_usuario 
not in 	  (select distinct a.id_usuario 
           from asistencia a 
		   where a.asistio = 1);

select u.nombre as nombre_usuario, sum(p.monto) as total_pagado
from usuario u
join compra c on u.id_usuario = c.id_usuario
join pago p on c.id_compra = p.id_compra
group by u.id_usuario, u.nombre
order by total_pagado desc;

