use final;
-- peticion sin repetir

select
	v.codigo as codigo_vuelo,
	concat(p.nombre, ' ', p.apellido) as nombre_piloto,
	a_origen.nombre as nombre_origen,
	a_destino.nombre as nombre_destino,
	v.fecha_hora as hora_vuelo,
	group_concat(concat(t.nombre, ' ', t.apellido, ' - ', t.rol) order by t.codigo separator ' | ') as tripulantes
from vuelo v
join piloto p on v.codigo_piloto = p.codigo
join aeropuerto a_origen on v.origen = a_origen.codigo
join aeropuerto a_destino on v.destino = a_destino.codigo
left join vuelo_tripulacion vt on v.codigo = vt.codigo_vuelo
left join tripulacion t on vt.codigo_tripulacion = t.codigo
group by v.codigo;