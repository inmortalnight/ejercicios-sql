/*CREAR BASE DE DATOS*/
CREATE DATABASE empleados;
USE empleados;

/*CREAR TABLAS*/
CREATE TABLE IF NOT EXISTS provincias(
    cod_prov CHAR(2),
    nomprov VARCHAR(20) NOT NULL UNIQUE,
    PRIMARY KEY(cod_prov)
);
CREATE TABLE IF NOT EXISTS delegaciones(
    cod_del CHAR(5),
    nombre VARCHAR(40) NOT NULL,
    direccion VARCHAR(50),
    PRIMARY KEY(cod_del)
);
CREATE TABLE IF NOT EXISTS localidades(
    cod_loc CHAR(3),
    nombre VARCHAR(40) NOT NULL,
    cod_postal CHAR(5),
    cod_prov CHAR(2),
    PRIMARY KEY(cod_loc),
    CONSTRAINT fk_prov FOREIGN KEY(cod_prov) REFERENCES provincias(cod_prov) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS departamentos(
    cod_dep VARCHAR(5),
    nombre VARCHAR(40),
    cod_del CHAR(5),
    director VARCHAR(15),
    presupuesto DECIMAL(15,2),
    dep_sup VARCHAR(5),
    PRIMARY KEY(cod_dep),
    CONSTRAINT fk_del FOREIGN KEY(cod_del) REFERENCES delegaciones(cod_del) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_dpsup FOREIGN KEY(dep_sup) REFERENCES departamentos(cod_dep) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS empleados(
    cod_emp VARCHAR(15),
    nombre VARCHAR(40) NOT NULL,
    direccion VARCHAR(100),
    localidad CHAR(3),
    tfno VARCHAR(15),
    fec_nac DATE,
    fec_alta DATE,
    salario DECIMAL(10,2),
    hijos INT(2),
    deptno VARCHAR(5),
    PRIMARY KEY(cod_emp),
    CONSTRAINT fk_loc FOREIGN KEY(localidad) REFERENCES localidades(cod_loc) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_dpto FOREIGN KEY(deptno) REFERENCES departamentos(cod_dep) ON DELETE CASCADE ON UPDATE CASCADE
);