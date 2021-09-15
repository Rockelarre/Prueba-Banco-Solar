CREATE TABLE usuarios (
	id SERIAL PRIMARY KEY, 
	nombre VARCHAR(50),
	balance FLOAT CHECK (balance >= 0));
	
SELECT * FROM usuarios;
DELETE FROM usuarios;

SELECT id FROM usuarios WHERE nombre = 'Kakaroto'

CREATE TABLE transferencias (
	id SERIAL PRIMARY KEY, 
	emisor INT, 
	receptor INT, 
	monto FLOAT, 
	fecha TIMESTAMP, 
	FOREIGN KEY (emisor) REFERENCES usuarios(id), 
	FOREIGN KEY (receptor) REFERENCES usuarios(id)
);

INSERT INTO transferencias (emisor,receptor,monto,fecha)
VALUES (5,4,9999,now());

SELECT * FROM transferencias;

DROP TABLE transferencias;
DELETE FROM transferencias;