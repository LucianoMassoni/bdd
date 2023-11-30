use practica;

-- Empleados
insert into empleados(nombre, dni, sueldo)
values("Antonio Arjona", "12345678A",5000);

insert into empleados(nombre, dni, sueldo)
values("Carlota Cerezo", "12345678c",1000);

insert into empleados(nombre, dni, sueldo)
values("Laura López", "12345678L",1500);

insert into empleados(nombre, dni, sueldo)
values("Pedro Pérez", "12345678P",2000);

-- Domicilios
insert into domicilios(dni, calle, codigo_postal)
values("12345678A", "Avda. Complutense", "28040");

insert into domicilios(dni, calle, codigo_postal)
values("12345678A", "Cántaro", "28004");

insert into domicilios(dni, calle, codigo_postal)
values("12345678P", "Diamante", "15200");

insert into domicilios(dni, calle, codigo_postal)
values("12345678P", "Carbón", "14900");

insert into domicilios(dni, calle, codigo_postal)
values("12345678L", "Diamante", "14200");

-- telefonos
insert into telefonos(dni, telefono)
values ("12345678C", "611111111");

insert into telefonos(dni, telefono)
values ("12345678C", "931111111");

insert into telefonos(dni, telefono)
values ("12345678L", "913333333");

insert into telefonos(dni, telefono)
values ("12345678P", "913333333");

insert into telefonos(dni, telefono)
values ("12345678P", "644444444");

-- codigos postales
insert into codigos_postales(codigo_postal, poblacion, provincia)
values("08050","Parets","Barcelona");

insert into codigos_postales(codigo_postal, poblacion, provincia)
values("14200","Peñarroya","Córdoba");

insert into codigos_postales(codigo_postal, poblacion, provincia)
values("14900","Lucena","Córdoba");

insert into codigos_postales(codigo_postal, poblacion, provincia)
values("28040","Madrid","Madrid");

insert into codigos_postales(codigo_postal, poblacion, provincia)
values("50008","Zaragoza","Zaragoza");

insert into codigos_postales(codigo_postal, poblacion, provincia)
values("28004","Arganda","Madrid");

insert into codigos_postales(codigo_postal, poblacion, provincia)
values("28000","Madrid","Madrid");


