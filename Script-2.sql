create database clientesBD;
use clientesBD;

create table clientes(
id int primary key auto_increment,
nombre varchar(100),
apellido varchar(100),
direccion varchar(100),
ciudad varchar(100),
estado varchar(100),
codigopostal int,
correoelectronico varchar(100),
telefono varchar(100)
);

insert into clientes (nombre, apellido, direccion, ciudad, estado, codigopostal, correoelectronico, telefono) values ("Sofia", "Leonardelli", "calle 123", 1122, "sl@gmail.com", "123654");

create index idx_clientes_correoelectronico on clientes (correoelectronico);
create index idx_clientes_estado on clientes (estado);

create index idx_clientes_ciudad on clientes (ciudad);
select * from clientes c where estado = 'California' ;
explain select * from clientes c where estado = "California";

select c.nombre, c.correoelectronico from clientes c where c.codigopostal between 90000 and 95000 and c.ciudad = "Los Angeles";


