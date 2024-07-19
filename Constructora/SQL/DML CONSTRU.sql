use db_constru; 
insert into tbl_tipo_usuarios(id_tipo_usuarios,roll)
values (1,'admin'),(2,'cliente');

-- ingresar datos (cliente)
select * from tbl_usuarios;
insert into tbl_usuarios (id_usuarios, nombre_cliente, direccion,telefono, usuario, password, estado_activo, id_tipo_usuarios)
values(1,'Paco Pedro','Zona 4 Calle 1','54897415','Pac','123',true,1);
insert into tbl_usuarios (nombre_cliente, direccion,telefono, usuario, password, estado_activo, id_tipo_usuarios)
values('Derick Arjona','Zona 16','25471456','Arjo','159',true,1);

-- ingresar datos (proveedor)
select * from tbl_proveedor;
insert into tbl_proveedor (id_proveedor,proveedor,telefono,direccion,email )
values(1,'TacoMechanics','54189744','9na. av. Zona 6','tacomech@gmail.com');

insert into tbl_proveedor (proveedor,telefono,direccion,email )
values('MechMech','30254796','5ta.av zona 1','Mechmechi@yahoo.com');
insert into tbl_proveedor (proveedor,telefono,direccion,email )
values('Fanal','69874115','10ma av Zona 15','Fanal@hotmail.com');


-- ingresar datos (producto)
select * from tbl_producto;
insert into tbl_producto (id_producto,producto,color,trabajadores,precio,estado_activo,id_proveedor)
values(1,'Hierro','Negro','2','2,500',true,1),(2,'Vidrio','gris','5',',500',true,1);

-- ingresar datos (compra)
select * from tbl_compra;
insert into tbl_compra (id_compra,fecha,id_usuarios,id_producto,estado_activo)
values(1,'2022-10-11',1,2,true);

-- ingresar datos (detalle_compra)
select * from tbl_detalle_compra;
insert into tbl_detalle_compra (id_detalle_compra,id_compra,id_producto,cantidad)
values(1,1,1,2); 