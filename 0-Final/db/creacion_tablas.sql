create database final;
use final;

create table aeropuerto(
	codigo int auto_increment,
    nombre varchar(50) not null,
    primary key(codigo)
);

create table avion(
	codigo int auto_increment not null,
    modelo varchar(50),
	primary key(codigo)
);

create table mantenimiento(
	codigo int auto_increment,
    codigo_avion int not null,
    codigo_aeropuerto int not null,
    primary key(codigo),
    foreign key(codigo_avion) references avion(codigo),
    foreign key(codigo_aeropuerto) references aeropuerto(codigo)
);

create table piloto(
	codigo int auto_increment,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    hs_vuelo int not null,
    codigo_aeropuerto int,
    primary key(codigo),
    foreign key(codigo_aeropuerto) references aeropuerto(codigo)
);

create table tripulacion(
	codigo int auto_increment,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    rol varchar(50),
    codigo_aeropuerto int,
    primary key(codigo),
    foreign key(codigo_aeropuerto) references aeropuerto(codigo)
);

create table vuelo(
	codigo int auto_increment,
    codigo_avion int,
    codigo_piloto int,
    origen int,
    destino int,
    fecha_hora datetime not null,
    primary key(codigo),
    foreign key(codigo_avion) references avion(codigo),
    foreign key(codigo_piloto) references piloto(codigo),
    foreign key(origen) references aeropuerto(codigo),
    foreign key(destino) references aeropuerto(codigo)
);

create table vuelo_tripulacion(
	codigo int auto_increment,
    codigo_vuelo int not null,
    codigo_tripulacion int not null,
    primary key(codigo),
    foreign key(codigo_vuelo) references vuelo(codigo),
    foreign key(codigo_tripulacion) references tripulacion(codigo)
);