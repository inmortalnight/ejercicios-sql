CREATE DATABASE IF NOT EXISTS pedidos;

USE pedidos;

CREATE TABLE IF NOT EXISTS pedido (
	refped CHAR(5),
	fecped DATE,
	PRIMARY KEY(refped)
);

INSERT INTO pedido VALUES ('P0001', '2014-02-16');
INSERT INTO pedido VALUES ('P0002', '2014-02-18');
INSERT INTO pedido VALUES ('P0003', '2014-02-23');
INSERT INTO pedido VALUES ('P0004', '2014-02-25');

CREATE TABLE IF NOT EXISTS articulo (
	codart CHAR(5),
	desart VARCHAR(30),
	pvpart DECIMAL(3,2),
	PRIMARY KEY(codart)
);

INSERT INTO articulo VALUES ('A0043', 'Boligrafo azul fino', 0.78);
INSERT INTO articulo VALUES ('A0078', 'Boligrafo rojo normal', 1.05);
INSERT INTO articulo VALUES ('A0075', 'Lapiz 2B', 0.55);
INSERT INTO articulo VALUES ('A0012', 'Goma de borrar', 0.15);
INSERT INTO articulo VALUES ('A0089', 'Sacapuntas', 0.25);

CREATE TABLE IF NOT EXISTS lineapedido (
	refped CHAR(5),
	codart CHAR(5),
	cantart INT(2),
	PRIMARY KEY(refped, codart),
	CONSTRAINT fkrefped FOREIGN KEY(refped) REFERENCES pedido(refped) ON DELETE CASCADE,
	CONSTRAINT fkcodart FOREIGN KEY(codart) REFERENCES articulo(codart) ON DELETE CASCADE
);

INSERT INTO lineapedido VALUES ('P0001', 'A0043', 10);
INSERT INTO lineapedido VALUES ('P0001', 'A0078', 12);
INSERT INTO lineapedido VALUES ('P0002', 'A0043', 5);
INSERT INTO lineapedido VALUES ('P0003', 'A0075', 20);
INSERT INTO lineapedido VALUES ('P0004', 'A0012', 15);
INSERT INTO lineapedido VALUES ('P0004', 'A0043', 5);
INSERT INTO lineapedido VALUES ('P0004', 'A0089', 50);

----------------------------------------
UPDATE articulo 
SET pvpart = pvpart + 0.2 
WHERE pvpart < 1;

UPDATE pedido SET fecped = '2024-02-29' WHERE refped = 'P0001';

DELETE FROM articulo WHERE pvpart > 1;

ALTER TABLE lineapedido CHANGE cantart cantart DECIMAL(4,2); 

UPDATE lineapedido SET cantart = cantart + 5 WHERE refped = 'P0004';

ALTER TABLE articulo CHANGE pvpart pvpart DECIMAL(3,2) CHECK(pvpart > 0);