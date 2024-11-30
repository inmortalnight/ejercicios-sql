CREATE DATABASE IF NOT EXISTS gestion_pub;

USE gestion_pub;

CREATE TABLE IF NOT EXISTS localidad (
	cod_localidad INT(5) ZEROFILL NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	PRIMARY KEY(cod_localidad)
);

CREATE TABLE IF NOT EXISTS empleado (
	dni_empleado CHAR(9) NOT NULL,
	nombre VARCHAR(30) NOT NULL, 
	domicilio VARCHAR(50),
	PRIMARY KEY(dni_empleado)
);

CREATE TABLE IF NOT EXISTS pub (
	cod_pub CHAR(10) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	licencia_fiscal CHAR(10) NOT NULL,
	domicilio VARCHAR(50),
	fecha_apertura DATE NOT NULL,
	horario ENUM('HOR1', 'HOR2', 'HOR3') NOT NULL,
	cod_localidad INT(5) ZEROFILL NOT NULL,
	PRIMARY KEY(cod_pub),
	CONSTRAINT fklocalidad FOREIGN KEY(cod_localidad) REFERENCES localidad(cod_localidad)
);

CREATE TABLE IF NOT EXISTS titular (
	dni_titular CHAR(9) NOT NULL,
	nombre VARCHAR(30) NOT NULL, 
	domicilio VARCHAR(50),
	cod_pub CHAR(10) NOT NULL, 
	PRIMARY KEY(dni_titular), 
	CONSTRAINT fkpub_tit FOREIGN KEY(cod_pub) REFERENCES pub(cod_pub)
);

CREATE TABLE IF NOT EXISTS existencias (
	cod_articulo CHAR(10) NOT NULL,
	nombre VARCHAR(30) NOT NULL, 
	cantidad DECIMAL(3,2) NOT NULL,
	precio DECIMAL(3,2) CHECK(precio>0),
	cod_pub CHAR(10) NOT NULL,
	PRIMARY KEY(cod_articulo), 
	CONSTRAINT fkpub_exist FOREIGN KEY(cod_pub) REFERENCES pub(cod_pub)
);

CREATE TABLE IF NOT EXISTS pub_empleado (
	cod_pub CHAR(10) NOT NULL,
	dni_empleado CHAR(9) NOT NULL,
	funcion ENUM('camarero', 'seguridad', 'limpieza'),
	PRIMARY KEY(cod_pub, dni_empleado, funcion),
	CONSTRAINT fkpub_empl FOREIGN KEY(cod_pub) REFERENCES pub(cod_pub),
	CONSTRAINT fkempleado FOREIGN KEY(dni_empleado) REFERENCES empleado(dni_empleado)
);