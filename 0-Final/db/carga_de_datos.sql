use final;

-- CARGA DE DATOS

-- aeropuerto
insert into aeropuerto(nombre)
values 
	('AEP'), 
	('BHI'),
    ('COR'),
	('EZE'),
	('FDO');


-- avion
insert into avion(modelo)
values 
	('Airbus A320'),
	('Airbus A330'),
	('Airbus A300'),
	('Boeing 747'),
	('Boeing 737'),
	('Boeing 777');


-- mantenimineto
insert into mantenimiento(codigo_avion, codigo_aeropuerto)
values(1, 1),
	(2, 3),
	(3, 4),
	(4, 4),
	(5, 5),
	(6, 1);

-- piloto
insert into piloto(nombre, apellido, hs_vuelo, codigo_aeropuerto)
values 
	('Juan', 'Perez', 120, 1),
	('Ramon', 'Gonzales', 330, 5),
	('Juana', 'Perez', 150, 3),
	('Alex', 'Turner', 330, 2),
	('Daemon', 'Albarn', 120, 4),
	('Kavinsy', 'Gonzales', 1330, 4);


-- tripulacion
insert into tripulacion(nombre, apellido, rol, codigo_aeropuerto)
values
	('Franz', 'Ferdinand', 'Comisario de abordo', 1),
	('Julian', 'Casablancas', 'Tipulante de cabina', 2),
	('Elayna', 'Boyton', 'copiloto', 3),
	('Anthony', 'Hamilton', 'Tipulante de cabina', 4),
	('Johny', 'Maar', 'Comisario de abordo', 5),
	('Robert', 'Smith', 'copiloto', 1);


-- vuelo
insert into vuelo (codigo_avion, codigo_piloto, origen, destino, fecha_hora)
values
  (1, 5, 1, 4, '2023-07-10 10:30:00'),
  (2, 3, 2, 5, '2023-08-12 15:45:00'),
  (2, 6, 3, 1, '2023-09-17 08:00:00'),
  (4, 1, 5, 2, '2023-10-21 12:20:00'),
  (5, 4, 1, 3, '2023-11-25 18:10:00'),
  (2, 6, 1, 4, '2023-12-30 09:30:00'),
  (1, 2, 5, 3, '2024-01-04 11:45:00'),
  (2, 3, 3, 4, '2024-02-09 14:00:00'),
  (3, 2, 4, 5, '2024-02-14 16:30:00'),
  (4, 1, 5, 1, '2024-03-19 20:15:00');

-- vuelo_tripulacion
insert into vuelo_tripulacion(codigo_vuelo, codigo_tripulacion)
values
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(3, 6),
	(4, 1),
	(4, 2),
	(5, 3),
	(5, 4),
	(6, 5),
	(6, 6),
	(7, 1),
	(7, 2),
	(8, 3),
	(8, 4),
	(9, 5),
	(9, 6),
	(10, 1),
	(10, 2);
	
