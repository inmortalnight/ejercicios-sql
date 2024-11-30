# Ejercicio compras

Dado la imagen y la base de datos con los datos, realiza las siguientes consultas. 
Nota: Aquí vienen con las respuestas.

1. Obtener los nombres de los artículos relacionados con las facturas de un cliente llamado 'cliente nueve'.  
```sql
SELECT a.nombre
FROM articulos a INNER JOIN facturas f
ON a.coda = f.coda
WHERE f.codc = (SELECT codc FROM clientes WHERE nombre = 'cliente nueve');
```

2. Obtener el nombre de los artículos y sus respectivos proveedores, donde el precio de venta del artículo sea mayor a 50, ordenados por el nombre del artículo.  
```sql
SELECT a.nombre AS Nombre_Articulo, p.nombre AS Nombre_Proovedor
FROM articulos a INNER JOIN suministros s 
ON a.coda = s.coda INNER JOIN proveedores p ON p.codp = s.codp
WHERE a.pvp > 50
ORDER BY a.nombre;
```

3. Obtener los suministros cuyo precio unitario (puc) sea mayor que el de cualquier suministro relacionado con el proveedor 'p11'.  
```sql
SELECT * FROM suministros 
WHERE puc > ANY (SELECT puc FROM suministros WHERE codp = 'p11');
```

4. Obtener el nombre de los clientes y el total facturado por cada uno, calculado como la suma de la cantidad multiplicada por el precio de cada factura.  
```sql
SELECT c.nombre, sum(f.ctd*f.precio) AS total_cliente 
FROM clientes c INNER JOIN facturas f 
ON f.codc = c.codc
GROUP BY f.codc;
```

5. Obtener el nombre de los artículos y la suma de las cantidades vendidas de cada uno, agrupado por código de artículo.  
```sql
SELECT a.nombre, sum(f.ctd)
FROM articulos a INNER JOIN facturas f 
ON a.coda = f.coda 
GROUP BY f.coda;
```

6. Obtener una lista de códigos de artículo únicos de la tabla facturas, y luego los nombres de los artículos que no aparecen en esa lista.  
```sql
SELECT DISTINCT coda FROM facturas;

SELECT coda, nombre FROM articulos 
WHERE coda
NOT IN (SELECT DISTINCT coda FROM facturas);
```

7. Obtener los nombres de los artículos suministrados por el proveedor 'p3' que han sido comprados por los clientes.  
```sql
SELECT c.nombre, a.nombre
FROM clientes c INNER JOIN facturas f 
ON c.codc = f.codc INNER JOIN articulos a ON a.coda = f.coda 
WHERE a.coda IN (SELECT coda FROM suministros 
WHERE codp = 'p3');
```

8. Obtener los nombres de los proveedores y los nombres de los artículos que suministran el proveedor 'p3'.  
```sql
SELECT p.nombre, a.nombre
FROM proveedores p INNER JOIN suministros s ON p.codp = s.codp INNER JOIN articulos a ON s.coda = a.coda 
WHERE s.codp = 'p3';
```