/*Consultas a) */

select nombre from producto;

select nombre, precio from producto;

select * from producto;

select nombre, precio, precio*1.08 from producto;

select nombre as 'nombre de producto', precio as euros, precio*1.08 as dolares from producto;

select upper(nombre), precio from producto;

select lower(nombre), precio from producto;

select nombre, upper(left(nombre,2)) from fabricante;

select nombre, round(precio) from producto;

select nombre, truncate(precio,0) from producto;

select codigo_fabricante from producto;

select distinct codigo_fabricante from producto;

select nombre from fabricante order by nombre asc;

select nombre from fabricante order by nombre desc;

 select * from producto order by nombre asc, precio desc;

select * from fabricante limit 5;

select * from fabricante limit 3,2;

select nombre, precio from producto order by precio asc limit 1;

select nombre, precio from producto order by precio desc limit 1;

select nombre from producto where codigo_fabricante=2;

select nombre from producto where precio <= 120;

select nombre from producto where precio >= 400;

select nombre from producto where precio < 400;

select * from producto where precio > 80 and precio < 300;

select * from producto where precio between 60 and 200;

select * from producto where precio > 200 and codigo_fabricante = 6;

select * from producto where codigo_fabricante = 1 or codigo_fabricante = 3 or codigo_fabricante = 5;

select * from producto where codigo_fabricante in (1,3,5);

select nombre, precio*100 as centimos from producto;

select nombre from fabricante where nombre like 's%';

select nombre from fabricante where nombre like '%e';

select nombre from fabricante where nombre like '%w%';

select nombre from fabricante where nombre like '____';

select nombre from producto where nombre like '%portátil%';

select nombre from producto where nombre like '%monitor%' and precio <215;

select nombre, precio from producto where precio >= 180 order by precio desc, nombre asc;