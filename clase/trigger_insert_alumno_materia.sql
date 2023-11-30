use clase;	
delimiter 
	create trigger after_insert_alumno_materia
	after insert on alumno_materia
	for each row
	begin
		declare carrera_id int;
		select Codigo_Carrera into carrera_id
		from carrera_materias
		where Codigo_Materia = new.CodigoMateria;
		
		insert into alumno_carrera (Legajo, CodigoCarrera)
		values (new.Legajo, carrera_id);
	end;

delimiter;