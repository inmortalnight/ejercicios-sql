/*CAMBIAR DATOS*/

UPDATE delegaciones SET direccion = 'Langostino, 12' WHERE nombre = 'D.HUELVA';

UPDATE departamentos SET director = 'EMP10' WHERE nombre = 'DEP SEVILLA 01';

UPDATE departamentos SET presupuesto = presupuesto - (presupuesto/10) WHERE presupuesto > 180000;

UPDATE departamentos SET presupuesto = presupuesto - 5000 WHERE presupuesto <= 180000;

UPDATE empleados SET salario =  salario + (salario*5/100)  WHERE fec_nac < '1980-01-01';

UPDATE empleados SET salario =  salario + 1000  WHERE fec_nac >= '1980-01-01';

DELETE FROM departamentos WHERE nombre = 'DEP JAEN 01';

DELETE FROM empleados WHERE nombre = 'alfonso';

DELETE FROM delegaciones WHERE nombre = 'D.HUELVA';