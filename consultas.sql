ALUMNO: REALE FACUNDO


mysql> CREATE DATABASE personas;
Query OK, 1 row affected (0.02 sec)

mysql> use personas;
Database changed
mysql> CREATE TABLE alumnos (nombre VARCHAR(50), edad INT);
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO alumnos (nombre, edad) VALUES ("Equis", 12);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT NOMBRE FROM alumnos;
+--------+
| NOMBRE |
+--------+
| Equis  |
+--------+
1 row in set (0.00 sec)

mysql> SELECT EDAD FROM alumnos;
+------+
| EDAD |
+------+
|   12 |
+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM alumnos;
+--------+------+
| nombre | edad |
+--------+------+
| Equis  |   12 |
+--------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO alumnos (nombre, edad) VALUES ("Santino", 16);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO alumnos (nombre, edad) VALUES ("Ramiro", 16);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO alumnos (nombre, edad) VALUES ("Facundo", 16);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM alumnos;
+---------+------+
| nombre  | edad |
+---------+------+
| Equis   |   12 |
| Santino |   16 |
| Ramiro  |   16 |
| Facundo |   16 |
+---------+------+
4 rows in set (0.00 sec)

mysql> DESCRIBE alumnos;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| nombre | varchar(50) | YES  |     | NULL    |       |
| edad   | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
mysql> DELETE FROM alumnos WHERE nombre = "Equis";
Query OK, 2 rows affected (0.01 sec)

mysql> SELECT * FROM alumnos;
+---------+------+
| nombre  | edad |
+---------+------+
| Facundo |   16 |
| Ramiro  |   16 |
+---------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO alumnos (nombre, edad) VALUES ("Santino", 15);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM alumnos;
+---------+------+
| nombre  | edad |
+---------+------+
| Facundo |   16 |
| Ramiro  |   16 |
| Santino |   15 |
+---------+------+
3 rows in set (0.01 sec)


