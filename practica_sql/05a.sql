use practica;

-- Listado de los empleados que muestre Nombre, DNI, Calle, Población, Provincia y código postal ordenados por nombre
select e.nombre, e.dni, d.calle, c.poblacion, c.provincia, c.codigo_postal
from ((domicilios as d
inner join empleados as e
	on d.dni = e.dni)
inner join codigos_postales as c
	on d.codigo_postal = c.codigo_postal)
order by e.nombre;
