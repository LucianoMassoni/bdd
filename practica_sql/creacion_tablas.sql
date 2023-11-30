use practica;

create table empleados(
	id_empleado int not null auto_increment,
    nombre varchar(50),
    dni int,
    sueldo double,
    primary key (id_empleado)
);
-- el dni tiene que ser varchar

alter table empleados
modify column dni varchar(9);

create table domicilios(
	id_domicilio int not null auto_increment,
    dni varchar(9),
    calle varchar(50),
    codigo_postal varchar(5),
    primary key (id_domicilio)
);

create table telefonos(
	id_telefono int not null auto_increment,
    dni varchar(9),
    telefono varchar(9),
    primary key(id_telefono)
);

create table codigos_postales(
	id_codigoPostal int not null auto_increment,
    codigo_postal varchar(5),
    poblacion varchar(50),
    provincia varchar(50),
    primary key(id_codigoPostal)
);
