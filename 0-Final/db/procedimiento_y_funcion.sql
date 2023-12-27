use final;

delimiter //

create procedure crear_tripulante(nombre varchar(50), apellido varchar(50), rol varchar(50), codigo_aeropuerto int)
begin
	insert into tripulacion(nombre, apellido, rol, codigo_aeropuerto)
    values(nombre, apellido, rol, codigo_aeropuerto);
end; 
//

delimiter ;

delimiter //

create function aeropuerto_random()
returns int
deterministic
begin
	if (floor(rand() * 10) % 2 = 0) then 
		return 1;
    else 
		return 4;
	end if;
end //

delimiter ;