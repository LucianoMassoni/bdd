use practica;

-- listado del numero total de empleados, el sueldo maximo, el minimo y el medio

select 
	count(sueldo) as numero_de_empleados, 
	max(sueldo) as sueldo_maximo, 
	min(sueldo) as sueldo_minimo, 
	avg(sueldo) as sueldo_promedio
from 
	empleados; 