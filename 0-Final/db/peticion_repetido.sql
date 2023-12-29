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

-- uso del procedure y el trigger

select t.nombre, t.apellido, t.rol, a.nombre, a.codigo
from tripulacion as t, aeropuerto as a
where t.codigo_aeropuerto = a.codigo;

call crear_tripulante('juan', 'perez', 'copiloto', 4); -- el 4 es el codigo de ezeiza
call crear_tripulante('pedro', 'gonzales', 'comisario de abordo', 1); -- el 1 es aeroparque
call crear_tripulante('tomas', 'ramirez', 'tripulante de cabina', null); -- con el null entra en la funcion 
call crear_tripulante('tomas', 'ramirez', 'tripulante de cabina', 2); -- si no es 1, 4 o null no se crea y tira un error