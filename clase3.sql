-- 1 
DROP TABLE IF EXISTS libros, editoriales;

-- 2 JOIN ERMITE TRABAJAR CON DOS O MAS TABLAS

-- 3 
CREATE TABLE libros(
codigo INT UNSIGNED AUTO_INCREMENT,
titulo VARCHAR(40) NOT NULL,
autor VARCHAR(30) NOT NULL DEFAULT 'Desconocido',
codigoEditorial tinyint UNSIGNED NOT NULL,
precio DECIMAL (5, 2) UNSIGNED,
cantidad SMALLINT UNSIGNED DEFAULT 0,
PRIMARY KEY (codigo)
);
DESCRIBE libros;

CREATE TABLE editoriales(
codigo TINYINT unsigned AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
direccion VARCHAR(30) NOT NULL,
PRIMARY KEY(codigo)
);

describe editoriales;

INSERT INTO libros
(titulo, autor, codigoEditorial, precio, cantidad) VALUES
('El Aleph', 'Borges', '3', '43.5', '200'),
('Alicia en el pais de las maravillas', 'Lewis Carroll' ,'2', '33.5', '100'),
('Aprenda PHP', 'Mario Perez', '1', '55.8', '50'),
('Java en 10 minutos', 'Juan Lopez', 1, 88, 150),
('Alicia a traves del espejo', 'Lewis Carroll', 1, 155, 80),
('Cervantes y el quijote', 'Borges-Bioy Casares', 3, 25.5, 300);
SELECT *FROM libros;

INSERT INTO editoriales
(nombre, direccion)VALUES
('Paidos', 'Colon 190'),
('Emece', 'Rivadavia 765'),
('Planeta', 'General Paz 245'),
('Sudamericana', '9 de julio 1008');

SELECT * FROM editoriales;

SELECT *FROM libros
JOIN editoriales ON libros.codigoEditorial=editoriales.codigo;

SELECT * FROM libros JrOIN editoriales;
 frr
SELECT *  FROM libros JOIN editoriales  ON codigoEditorial= codigo;

SELECT * FROM libros as l 
JOIN editoriales as e 
on l.codigoEditorial=e.codigo;