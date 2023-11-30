use practica;

-- Listado de los empleados ordenados por nombre que muestre Nombre, dni, calle, códgigo postal y teléfono
-- Solo los empleados que tenga teléfono
select e.nombre, d.dni, d.calle, d.codigo_postal, t.telefono 
from ((empleados as e
left join domicilios as d
on e.dni = d.dni)
left join  telefonos as t
on e.dni = t.dni);