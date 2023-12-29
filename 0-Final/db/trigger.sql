use final;

delimiter //

create trigger control_tripulacion 
before insert on tripulacion
for each row
begin
	if new.codigo_aeropuerto is null then 
		set new.codigo_aeropuerto = aeropuerto_random();
	else 
		if new.codigo_aeropuerto not in(1, 4) then
			signal sqlstate '45000'
            set message_text = 'Error, el tripulante debe ser de Ezeiza o Aeroparque';
        end if;
	end if;
end;
//

delimiter ;

