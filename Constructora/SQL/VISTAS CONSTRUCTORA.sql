-- VISTAS
use db_constructora;
create view vista_usuarios as
select id_usuarios as ID, nombre_cliente as nombre,
direccion as direc, telefono as cel, usuario as nickname,
estado_activo as estado, id_tipo_usuarios as tipo 
 from tbl_usuarios;
select * from vista_usuarios;

create view vista_producto as select id_producto as id,
producto as product, color as colorr, precio as preciooo, 
estado_activo as estado, id_proveedor as idp 
from tbl_producto as p
;

create view vista_cliente_compras as
select c.nombre_cli as Nombre, c.apellido_cli as Apellido, c.telefono as Telefono, o.precio as Precio,o.nit as NIT, o.fecha_entrega as Entrega, o.fecha_pedido as Pedido,
p.producto as Produco, p.modelo as Modelo, m.marca as Marca from tbl_compra as o
inner join tbl_cliente as c 
on c.id_cliente = o.id_cliente
inner join tbl_detalle_compra as d
on d.id_compra = o.id_compra
inner join tbl_producto as p
on p.id_producto = d.id_producto;