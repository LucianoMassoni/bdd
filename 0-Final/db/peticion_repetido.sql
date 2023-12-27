use final;
-- peticion repetido

select distinct
	v.codigo as codigo_vuelo,
	concat(p.apellido, ', ', p.nombre) as nombre_piloto,
	a_origen.nombre as nombre_origen,
	a_destino.nombre as nombre_destino,
	v.fecha_hora as hora_vuelo,
	concat(t.apellido ,', ',t.nombre) as nombre_tripulante,
	t.rol as rol_tripulante
from vuelo v
join piloto p on v.codigo_piloto = p.codigo
join aeropuerto a_origen on v.origen = a_origen.codigo
join aeropuerto a_destino on v.destino = a_destino.codigo
left join vuelo_tripulacion vt on v.codigo = vt.codigo_vuelo
left join tripulacion t on vt.codigo_tripulacion = t.codigo;