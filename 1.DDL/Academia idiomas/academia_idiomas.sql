/*Crear base de datos*/
CREATE DATABASE academia_idiomas;

/*Crear tablas, atributos y claves*/
CREATE TABLE profesores (

dni CHAR(10),
nombre VARCHAR(30),
apellidos VARCHAR(30),
direccion VARCHAR(50),
titulo ENUM('LDO','DDO','CFGS'),
precio_hora DECIMAL(5,2),

PRIMARY KEY(dni)
);


CREATE TABLE cursos (

codigo CHAR(20), 
nombre VARCHAR(30),
dni CHAR(10),
num_alumnos INT(3), 
fecha_inicio DATE,
fecha_final DATE,
total_horas INT(4),

PRIMARY KEY(codigo),
FOREIGN KEY(dni) references profesores(dni)
);

CREATE TABLE alumnos (

dni CHAR(10),
nombre VARCHAR(30), 
apellidos VARCHAR(30), 
fech_nacimiento DATE, 
direccion VARCHAR(50), 
sexo ENUM('H','M'),
codigo CHAR(20),

PRIMARY KEY(dni),
FOREIGN KEY(codigo) cursos
);


/*Añadir restricciones*/
ALTER TABLE cursos CHANGE num_alumnos num_alumnos INT CHECK(num_alumnos > 10);

ALTER TABLE cursos CHANGE total_horas total_horas(total_horas > 79);

ALTER TABLE cursos CHANGE fecha_final fecha_final DATE CHECK(fecha_final > fecha_inicio);