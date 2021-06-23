CREATE DATABASE libreria_reale; -- 1
use libreria_reale;
CREATE TABLE libros (id_libro int auto_increment, titulo VARCHAR(50), autor VARCHAR(50), editorial VARCHAR(50), precio int, stock int, fecha_lanzamiento DATE); -- 2
CREATE TABLE ventas (fecha_venta DATE, id_libro int auto_increment, unidades int); -- 2
INSERT INTO libros (titulo, autor, editorial, precio, stock, fecha_lanzamiento) VALUES ("Matematica", "Pablo Effeberger", "Kapeluz", 1500, 10, 2020-02-02), ("Mis cinco sentidos", "Carolina Micha", "Sudamericana", 1400, 7, 2019-05-02), ("El mono relojero", "Constantino Vigil", "Atlantida", 800, 12, 2021-05-05), ("Redes informaticas", "Miguel Dederkremer", "Raduses", 1000, 5, 2019-01-11), ("Fredy Mercury", "Lesly Ann Jones", "Alianza", 2200, 5, 2018-05-06); -- 2
INSERT INTO ventas (fecha_venta, id_libro, unidades) VALUES (2021-03-05, 4, 5), (2020-06-12, 5, 3), (2021-03-05, 3, 10), (2019-24-11, 2, 4), (2018-03-05, 1, 6); -- 2
SELECT * FROM libros WHERE stock > 8; -- 3
SELECT * FROM libros WHERE stock < 6; -- 4
SELECT * FROM libros WHERE unidades BETWEEN 1000 AND 2000; -- 5
SELECT editorial FROM libros WHERE editorial LIKE '%a%'; -- 6
SELECT editorial FROM libros WHERE editorial LIKE 's%'; -- 7
SELECT titulo FROM libros ORDER BY fecha_lanzamiento; -- 8
SELECT id_libro FROM ventas ORDER BY fecha_venta; -- 9
SELECT SUM(stock) FROM libros; -- 10
SELECT MAX(precio) FROM libros; -- 11
SELECT MIN(precio) FROM libros; -- 12
SELECT AVG(precio) libros; -- 13
SELECT * FROM libros WHERE(SELECT id_libro FROM ventas WHERE fecha_venta = 2021-03-05); -- 15
SELECT * FROM ventas WHERE fecha_lanzamiento BETWEEN '2018-03-05' AND '2019-31-12' ORDER BY DESC; -- 16
UPDATE ventas SET unidades = 10 WHERE id_libro = 4; -- 14
UPDATE ventas SET unidades = 6 WHERE id_libro = 5; -- 14
UPDATE ventas SET unidades = 20 WHERE id_libro = 3; -- 14
UPDATE ventas SET unidades = 8 WHERE id_libro = 2; -- 14
UPDATE ventas SET unidades = 12 WHERE id_libro = 1; -- 14
SELECT * FROM libros WHERE stock BETWEEN 4 AND 14 LIMIT 3; -- 17
INSERT INTO libros (titulo, autor, editorial, precio, stock, fecha_lanzamiento) VALUES ("Reale", "Facundo", "IPM", NULL, 10, 2021-23-06); -- 18
UPDATE libros SET precio = 1200 WHERE precio = NULL; -- 19
SELECT SUM(stock) FROM libros WHERE precio >(SELECT AVG(precio) FROM libros); -- 20
ALTER TABLE libros ADD ISBN int; -- 21
SELECT editorial, titulo, precio FROM libros WHERE 	id_libro = 3; -- 22
SELECT stock FROM libros WHERE id_libro = 3; -- 23




