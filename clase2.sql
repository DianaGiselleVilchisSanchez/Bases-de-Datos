-- 1
DROP TABLE if EXISTS usuarios;

-- 2
CREATE TABLE usuarios(
nombre VARCHAR(20),
clave VARCHAR(20)
);

-- 3
DESCRIBE usuarios;

-- 4 Insertar usuarios
INSERT INTO usuarios
(nombre, clave) values
('Leonardo', 'Leo'),
('Mario Perez', 'Marito'),
('Marcelo', 'bocajunior'),
('Gustavo', 'bocajunior');

-- 5
SELECT nombre, clave FROM usuarios;

-- 6 
SELECT nombre, clave FROM usuarios WHERE nombre='Leonardo';

-- 7 CLAVE PRIMARIA
CREATE TABLE usuarios(
nombre VARCHAR(30),
clave VARCHAR(10),
PRIMARY KEY(nombre)
);

-- 8
INSERT INTO usuarios
(nombre, clave) values
('Leonardo', 'Leo'),
('Mario Perez', 'Mar1'),
('Marcelo', 'Mar2'),
('Gustavo', 'Gus');

-- 9 
INSERT INTO usuarios 
(nombre, clave) values ('Gustavo', 'Gus');

-- 10 Borrar la tabla libros si existe
DROP TABLE IF EXISTS libros;

-- 11 Crear tabla libros
CREATE TABLE libros(
codigo INT UNSIGNED AUTO_INCREMENT,
titulo VARCHAR(40) not null,
autor VARCHAR(30),
editorial VARCHAR(15),
precio DECIMAL(5, 2) UNSIGNED,
cantidad SMALLINT UNSIGNED,
PRIMARY KEY(codigo)
);

DESCRIBE libros;

-- 12
INSERT INTO libros
(titulo, autor, editorial, precio, cantidad) VALUES
('El aleph', 'Borges', 'Planeta', 15, 100),
('Martin Fierro', 'Jose Hernandez', 'Emece', 22.20, 200),
('Antologia Poética', 'Borges', 'Planeta', 40, 150),
('Aprenda PHP', 'Marzo Molina', 'Emece', 18.20, 200),
('Cervantes y el Quijote', 'Borges', 'Paidos', 36.40, 100),
('Manual de PHP', 'J. C Paez', 'Paidos', 30.80, 100),
('Harry Potter y la piedra filosofal', 'J.K Rowling', 'Paidos', 45.00, 500),
('Harry Potter y la camara secreta', 'J.K Rowling', 'Paidos', 46.00, 300),
('Alicia en el pais de las maravillas', 'Lewis Carroll', 'Paidos', null, 50);

-- 13 Mostrar todos los datos
SELECT * FROM libros;

-- 14 HACER MULTIPLICACIÓN DE PRECIO Y CANTIDAD
SELECT titulo, precio, cantidad, precio*cantidad FROM libros;

-- 15
SELECT titulo, precio, precio*0.1, precio-(precio*0.1) FROM libros;

-- 16 CONTAR EL NUMEMRO DE FILAS
SELECT COUNT(*) FROM libros;

-- 17
SELECT COUNT(*) FROM libros WHERE editorial= 'Planeta';

-- 18
SELECT COUNT(*) FROM libros WHERE AUTOR LIKE '%Bor%';
SELECT editorial ='%Emece%' FROM libros; 
-- 19
SELECT COUNT(precio) FROM libros;

-- 20
SELECT SUM(cantidad) FROM libros;

-- 21
SELECT MAX(precio) FROM libros;

-- 22
SELECT MIN(precio) FROM  libros WHERE autor like '%Rowling%';

-- 23
SELECT AVG(precio) FROM libros;

-- 24 PROMEDIO
SELECT AVG(precio) FROM libros WHERE titulo like '%PHP%';

