use practica;

select * from empleados;

drop procedure crearEmpleado;
delimiter //
create procedure crearEmpleado(nombre varchar(50), dni varchar(9), sueldo int)
begin
	declare continue handler for sqlwarning
    begin
		select 'se esta creando un empleado' as msg;
    end;
    
	insert into empleados(nombre, dni, sueldo)
	values(nombre, dni, sueldo);
end;
//

delimiter ;


call crearEmpleado("juan","87654321A",20);


drop function crearEmpleado2;
delimiter //
create function crearEmpleado2 (nombre varchar(50), dni varchar(9), sueldo int)
returns varchar(70) deterministic
begin
	declare r varchar(70) default '';
    
    insert into empleados(nombre, dni, sueldo)
	values(nombre, dni, sueldo);
    
    set r = concat('nombre: ', nombre , ' DNI: ' , dni , ' Sueldo: ', sueldo);
    return r;
end;
//
delimiter ;

select crearEmpleado2('pepe', '79812456T', 889);


use practica;
select * from empleados;
drop function eliminarPorDni;

delimiter //
create function eliminarPorDni(dni varchar(9))
returns varchar(200) deterministic
begin
	declare r varchar(200) default 'error';
	
	set r = if (exists(select 1 from empleados as e where e.dni = dni),
		'Empleado eliminado',
        'Empleado no encontrado');
	delete from empleados as e
    where e.dni = dni;
    
    return r;
end;
//
delimiter ;

select eliminarPorDni('79812456T') as message;

select distinct e.nombre, e.dni, t.telefono, d.calle, d.codigo_postal
from ((empleados as e
left join telefonos as t 
	on e.dni = t.dni)
left join domicilios as d
	on e.dni = d.dni);

drop trigger antesDeEliminarEmpleado;

delimiter //
create trigger antesDeEliminarEmpleado
before delete on empleados
for each row
begin
	delete from domicilios
    where dni = old.dni; -- el old.dni hace referencia al valor (viejo) de empleados. El otro dni es de la tabla Domicilios
    
    delete from telefonos
    where dni = old.dni;
end;
//

delimiter ;


insert into telefonos(dni, telefono)
values('79812456T','1212345');

insert into domicilios(dni, calle, codigo_postal)
values('79812456T','aca','14900');


