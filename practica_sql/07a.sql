use practica;

-- incrementar un 10% el sueldo de todos los empleados, de forma que el sueldo aumnetado no supere en ningún caso 1.900p.
-- antes
-- 1 5000
-- 2 1000
-- 3 1500
-- 4 2000

select * from empleados;

update empleados
set sueldo = sueldo * 1.1
where sueldo * 1.1 < 1900;