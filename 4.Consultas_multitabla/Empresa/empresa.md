# Ejercicio empresa

Dada la imagen y la base de datos configurada con los datos, realiza las siguientes consultas (vienen con las respuestas):

1. Devuelve el nombre del departamento donde trabaja el empleado con el NIF 38382980M.  
```sql
select d.nombre as NombreDepartamento
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo
where e.nif = "38382980M";
```

2. Devuelve el nombre del departamento donde trabaja el empleado JOSE RUIZ SANTANA.  
```sql
select d.nombre as NombreDepartamento
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo
where e.nombre = "jose" and e.apellido1 = "ruiz" and e.apellido2 = "santana";
```

3. Devuelve un listado con el nombre de los empleados y el nombre del departamento donde trabaja cada uno.  
```sql
select e.nombre as NombreEmpleado, d.nombre as NombreDepartamento
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo;
```

4. Devuelve un listado con el nombre de los empleados y el nombre del departamento donde trabaja cada uno, ordenado primero por el nombre del departamento y luego por los apellidos y nombre del empleado.  
```sql
select e.nombre as NombreEmpleado, d.nombre as NombreDepartamento
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo
order by d.nombre, e.apellido1;
```

5. Devuelve un listado con el código y el nombre del departamento, de aquellos departamentos que tienen empleados.  
```sql
select distinct d.nombre as NombreDepartamento, d.codigo as CodigoDepartamento
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo;
```

6. Devuelve un listado con el código, el nombre del departamento y el valor del presupuesto actual de aquellos departamentos que tienen empleados, calculando el presupuesto actual restando los gastos al presupuesto inicial.  
```sql
select distinct d.codigo as CodigoDepartamento, d.nombre as NombreDepartamento, (d.presupuesto - d.gastos) as PresupuestoActual
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo;
```

7. Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D, ordenado alfabéticamente por apellidos y nombre.  
```sql
select e.nombre as NombreEmpleado, e.apellido1 as Apellido1Empleado, e.apellido2 as Apellido2Empleado
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo
where d.nombre = 'I+D'
order by e.apellido1, e.apellido2, e.nombre;
```

8. Devuelve un listado con los datos de los empleados que trabajan en los departamentos de Sistemas, Contabilidad o I+D, ordenado alfabéticamente.  
```sql
select e.nombre as NombreEmpleado, e.apellido1 as Apellido1Empleado, e.apellido2 as Apellido2Empleado
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo
where d.nombre = 'Sistemas' or d.nombre = 'Contabilidad' or d.nombre = 'I+D'
order by e.apellido1, e.apellido2, e.nombre;
```

9. Devuelve una lista con el nombre de los empleados que trabajan en departamentos con un presupuesto entre 100000 y 200000 euros.  
```sql
select e.nombre as NombreEmpleado
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo
where d.presupuesto between 100000 and 200000;
```

10. Devuelve un listado con los nombres de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL, sin mostrar departamentos repetidos.  
```sql
select distinct d.nombre as NombreDepartamento
from empleado e 
inner join departamento d on e.codigo_departamento = d.codigo
where e.apellido2 is NULL;
```