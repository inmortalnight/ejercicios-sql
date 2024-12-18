## Ejercicio tienda de informática

## Parte A - Consultas
1.	Lista el nombre de todos los productos que hay en la tabla producto.
2.	Lista los nombres y los precios de todos los productos de la tabla producto.
3.	Lista todas las columnas de la tabla producto.
4.	Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
5.	Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
6.	Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
7.	Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
8.	Lista el nombre de todos los fabricantes en una columna, y en otra columna obtener en mayúsculas los dos primeros caracteres del nombre del fabricante.
9.	Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
10.	Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
11.	Lista los códigos de los fabricantes que tienen productos en la tabla producto.
12.	Lista el código de los fabricantes que tienen productos en la tabla producto, mostrando dichos códigos sin repetir.
13.	Lista los nombres de los fabricantes ordenados de forma ascendente.
14.	Lista los nombres de los fabricantes ordenados de forma descendente.
15.	Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
16.	Devuelve una lista con las 5 primeras filas de la tabla fabricante.
17.	Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
18.	Lista el nombre y el precio del producto más barato. (Utilizar las cláusulas ORDER BY y LIMIT)
19.	Lista el nombre y el precio del producto más caro. (Utilizar las cláusulas ORDER BY y LIMIT)
20.	Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.
21.	Lista el nombre de los productos que tienen un precio menor o igual a 120€.
22.	Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
23.	Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
24.	Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.
25.	Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.
26.	Lista todos los productos que tengan un precio mayor que 200€ y que el código de fabricante sea igual a 6.
27.	Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
28.	Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador IN.
29.	Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Crear un alias para la columna que contiene el precio que se llame céntimos.
30.	Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
31.	Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
32.	Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
33.	Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
34.	Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.
35.	Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
36.	Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordena el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).

## Parte B - Resumen

1.	Calcula el número total de productos que hay en la tabla productos.
2.	Calcula el número total de fabricantes que hay en la tabla fabricante.
3.	Calcula el número de valores distintos de código de fabricante aparecen en la tabla productos.
4.	Calcula la media del precio de todos los productos.
5.	Calcula el precio más barato de todos los productos.
6.	Calcula el precio más caro de todos los productos.
7.	Lista el nombre y el precio del producto más barato.
8.	Lista el nombre y el precio del producto más caro.
9.	Calcula la suma de los precios de todos los productos.
10.	Calcula el número de productos que tiene el fabricante Asus.
11.	Calcula la media del precio de todos los productos del fabricante Asus.
12.	Calcula el precio más barato de todos los productos del fabricante Asus.
13.	Calcula el precio más caro de todos los productos del fabricante Asus.
14.	Calcula la suma de todos los productos del fabricante Asus.
15.	Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial.
16.	Calcula el número de productos que tienen un precio mayor o igual a 180€.

## Parte C - Agrupamiento

17.	Muestra el código del fabricante, precio máximo, precio mínimo, precio medio y el número total de productos de cada fabricante.
18.	Muestra el código del fabricante, precio máximo, precio mínimo, precio medio y el número total de productos de cada fabricante que tengan un precio medio superior a 200€.
19.	Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180€.
20.	Lista el precio medio los productos de cada fabricante, mostrando el código del fabricante y su precio medio.

## Parte D - Subconsultas

### a.	Con operadores básicos de comparación
1.	Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).
2.	Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).
3.	Lista el nombre del producto más caro del fabricante Lenovo.
4.	Lista el nombre del producto más barato del fabricante Hewlett-Packard.
5.	Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.
6.	Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.
### b.	Subconsultas con ALL y ANY
7.	Devuelve el producto más caro que existe en la tabla producto sin hacer uso de MAX, ORDER BY ni LIMIT.
8.	Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni LIMIT.
9.	Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).
10.	Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando ALL o ANY).
### c.	Subconsultas con IN y NOT IN
12.	Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando IN o NOT IN).
13.	Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando IN o NOT IN).
d.	Subconsultas con EXISTS y NOT EXISTS
14.	Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).
15.	Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).
### e.	Subconsultas correlacionadas
16.	Lista el nombre de cada fabricante con el nombre y el precio de su producto más caro.
17.	Devuelve un listado de todos los productos que tienen un precio mayor o igual a la media de todos los productos de su mismo fabricante.
18.	Lista el nombre del producto más caro del fabricante Lenovo.

## Parte E - Consultas multitabla

1.	Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
2.	Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordena el resultado por el nombre del fabricante, por orden alfabético.
3.	Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.
4.	Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
5.	Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
6.	Devuelve una lista de todos los productos del fabricante Lenovo.
7.	Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
8.	Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate (sin utilizar el operador IN)
9.	Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. (utilizando el operador IN)
10.	Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
11.	Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
12.	Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordena el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)
13.	Devuelve un listado con el código y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
14.	Muestra el número total de productos que tiene cada uno de los fabricantes. El listado también debe incluir los fabricantes que no tienen ningún producto. El resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número de productos que tiene. Ordene el resultado descendentemente por el número de productos.
15.	Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes. El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.
16.	Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. Es necesario mostrar el nombre del fabricante.
17.	Lista el precio medio los productos de cada fabricante, mostrando solamente el nombre del fabricante.
18.	Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€.
19.	Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos.
26.	Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. No es necesario mostrar el nombre de los fabricantes que no tienen productos que cumplan la condición.
27.	Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. El listado debe mostrar el nombre de todos los fabricantes, es decir, si hay algún fabricante que no tiene productos con un precio superior o igual a 220€ deberá aparecer en el listado con un valor igual a 0 en el número de productos.
28.	Devuelve un listado con los nombres de los fabricantes donde la suma del precio de todos sus productos es superior a 1000 €.
29.	Devuelve un listado con el nombre del producto más caro que tiene cada fabricante. El resultado debe tener tres columnas: nombre del producto, precio y nombre del fabricante. El resultado tiene que estar ordenado alfabéticamente de menor a mayor por el nombre del fabricante.
30.	Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número de productos que el fabricante Lenovo.
31.	Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.
32.	Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.
33.	¿Pueden existir productos que no estén relacionados con un fabricante? Justificar la respuesta.