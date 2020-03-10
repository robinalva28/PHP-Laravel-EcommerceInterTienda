

drop database ecomerce;

create database ecomerce;

/*ÉSTA SENTENCIA ME SOLUCIONÓ UN ERROR AL INTENTAR ACCEDER DESDE EL LARAVEL LA BD*/
/*CREATE USER 'root'@'localhost' IDENTIFIED BY 'rob';
GRANT ALL PRIVILEGES ON ecomerce. * TO 'root'@'localhost';
FLUSH PRIVILEGES;*/

use ecomerce;

/*CREAMOS LA TABLA CATEGORIAS*/
create table categorias(
	catId 			int auto_increment primary key,
	catNombre 		varchar(40)

);

/*CREACION DE LA TABLA MARCAS*/
create table marcas(
	marId			int auto_increment primary key,
    marNombre		varchar(40)
);


/*CREACION DE LA TABLA CARRITOS*/
create table carritos(
	carId			int primary key not null unique,
    carIdProducto	int not null
);

/*CREACION DE LA TABLA EMPRESAS*/
create table empresas(
	empId			int auto_increment primary key,
    empCuil			int not null,
    empNombre		varchar(40)
);

/*CREACION DE TABLA USUARIOS*/
create table usuarios(
	created_at DATE,
	updated_at date,
	usrId				int auto_increment primary key,
    nombre			varchar(40),
    apellido			varchar(40),
    email varchar(40),
    celular			varchar(40),
    fechaNacimiento	date,
    usrIdEmpresa		int,
    password			varchar(100),
    avatar			varchar(100),
    validado boolean,/*por agregar*/
    foreign key (usrIdEmpresa) references empresas(empId)
);

/*CREACION DE LA TABLA PRODUCTOS*/
create table productos(
	prdId			int auto_increment primary key,
    prdNombre		varchar(40),
    prdDescripcion	varchar(200),
    prdPrecio		float,
    prdIdCategoria	int,
    prdIdMarca		int,
    prdIdUsuario	int,
    prdImagen		varchar(100),
    prdStock        int,
    foreign key (prdIdCategoria) references categorias(catId),
    foreign key (prdIdMarca) references marcas(marId),
    foreign key (prdIdUsuario) references usuarios(usrId)

);

drop table carritos;

create table carritos(
	carId				int primary key not null unique,
    carIdProducto		int not null,
    carUsuarios_usrId	int not null,
    foreign key (carUsuarios_usrId) references usuarios(usrId)
);
/*CREACIOS DE TABLA INTERMEDIA VENTAS PRODUCTOS-USUARIOS*/
create table ventas(
	venId			int auto_increment primary key,
    venIdProducto	int,
    venIdUsuario	int,
    foreign key (venIdProducto) references productos(prdId),
    foreign key (venIdUsuario) references usuarios(usrId)
);
