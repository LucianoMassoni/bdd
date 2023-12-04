use practica;

create table empleados(
	id_empleado int not null auto_increment,
    nombre varchar(50),
    dni varchar(9),
    sueldo int,
    primary key (id_empleado),
    index idx_dni (dni)
);

create table codigos_postales(
	id_codigoPostal int not null auto_increment,
    codigo_postal varchar(5),
    poblacion varchar(50),
    provincia varchar(50),
    primary key(id_codigoPostal),
    index idx_codigo_postal (codigo_postal)
);

create table domicilios(
	id_domicilio int not null auto_increment,
    dni varchar(9),
    calle varchar(50),
    codigo_postal varchar(5),
    primary key (id_domicilio),
    foreign key (dni) references empleados(dni),
	foreign key (codigo_postal) references codigos_postales(codigo_postal)
);

create table telefonos(
	id_telefono int not null auto_increment,
    dni varchar(9),
    telefono varchar(9),
    primary key(id_telefono),
    foreign key (dni) references empleados(dni)
);
