use practica;

-- Listado de empleados que muestre Nombre, Calle y código postal ordenados por código postal y nombres: con SELECT.
select e.nombre, d.calle, d.codigo_postal 
from empleados as e, domicilios as d
where e.dni=d.dni
order by e.nombre, d.codigo_postal;