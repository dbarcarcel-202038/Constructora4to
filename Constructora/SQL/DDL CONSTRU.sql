create database db_constru;
use db_constru;
drop database db_constru;

create table if not exists tbl_tipo_usuarios(
id_tipo_usuarios int not null AUTO_INCREMENT,
primary key (id_tipo_usuarios),
unique(id_tipo_usuarios),
roll varchar(30)
);

create table if not EXISTS tbl_proveedor(
id_proveedor int not null AUTO_INCREMENT,
proveedor varchar(30),
telefono int,
direccion VARCHAR(30),
email varchar(30),
primary key(id_proveedor)
);

create table if not exists tbl_usuarios(
	id_usuarios int not null auto_increment,
    primary key(id_usuarios),
    unique(id_usuarios),
    nombre_cliente varchar(30),
    direccion varchar(40),
    telefono int,
    usuario varchar(45),
    password varchar(45),
    estado_activo boolean,
    id_tipo_usuarios int not null,
    FOREIGN KEY(id_tipo_usuarios)REFERENCES tbl_tipo_usuarios (id_tipo_usuarios)
);

create table if not EXISTS tbl_producto(
id_producto int not null AUTO_INCREMENT,
producto varchar(30),
color VARCHAR(30),
trabajadores int,
precio VARCHAR(30),
estado_activo BOOLEAN,
id_proveedor int not null,
primary key(id_producto),
FOREIGN KEY(id_proveedor)REFERENCES tbl_proveedor (id_proveedor)
);

create table if not exists tbl_compra(
id_compra int not null auto_increment,
fecha date,
id_usuarios int,
id_producto int,
estado_activo BOOLEAN,
primary key(id_compra),
FOREIGN KEY(id_usuarios)REFERENCES tbl_usuarios (id_usuarios)
);

create table if not exists tbl_detalle_compra(
id_detalle_compra int not null auto_increment,
id_compra int,
id_producto int,
cantidad int,
primary key(id_detalle_compra),
FOREIGN KEY(id_compra)REFERENCES tbl_compra (id_compra),
FOREIGN KEY(id_producto)REFERENCES tbl_producto (id_producto)
);