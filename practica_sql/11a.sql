use practica;

-- Listado de suledo medio y numero de empleados por poblacion ordenado por poblacion

select 
	count(sueldo) as numero_de_empleados, 
	avg(sueldo) as sueldo_promedio,
	codigos_postales.poblacion
from 
	empleados, 
    codigos_postales, 
    domicilios
where 
	empleados.dni = domicilios.dni 
and 
	domicilios.codigo_postal = codigos_postales.codigo_postal
group by 
	codigos_postales.poblacion;