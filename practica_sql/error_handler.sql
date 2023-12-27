use practica;

drop procedure crearDomicilio;
delimiter //
create procedure crearDomicilio(pdni varchar(9), pcalle varchar(50), pcodigo_postal varchar(5))
begin
	declare exit handler for sqlexception
    begin
		if(not exists(select * from empleados where dni = pdni))
        then
			select 'error al ingresar el dni' as msg;
		elseif(not exists(select * from codigos_postales where codigo_postal = pcodigo_postal))
        then
			select 'error al ingresar el codigo postal' as msg;
        end if;
	end;
    
    insert into domicilios(dni, calle, codigo_postal)
    values (pdni, pcalle, pcodigo_postal);
end;
//

delimiter ;

select * from codigos_postales;
select * from domicilios;
call crearDomicilio("12345678A","juan","08050");

delete from domicilios
where calle = 'juan';


