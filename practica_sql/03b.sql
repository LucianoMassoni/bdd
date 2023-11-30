use practica;

-- Listado de empleados que muestre Nombre, Calle y código postal ordenados por código postal y nombres: con JOIN.
select empleados.nombre, domicilios.calle, domicilios.codigo_postal
from empleados
inner join domicilios on empleados.dni=domicilios.dni
order by empleados.nombre, domicilios.codigo_postal;