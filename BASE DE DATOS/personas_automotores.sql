mysql> CREATE DATABASE clientes;
Query OK, 1 row affected (0.01 sec)

mysql> CREATE DTABASE automotores;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DTABASE automotores' at line 1
mysql> DROP DATABASE automotores;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE DATABASE automotores;
Query OK, 1 row affected (0.01 sec)

mysql> use clientes;
Database changed
mysql> CREATE TABLE clientes(DNI int, nombre VARCHAR(100), direccion VARCHAR(100), telefono int);
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO clientes(DNI, nombre, direccion, telefono) VALUES (46123569, "Facundo", "Nuñez", 26220409);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM clientes;
+----------+---------+-----------+----------+
| DNI      | nombre  | direccion | telefono |
+----------+---------+-----------+----------+
| 46123569 | Facundo | Nuñez     | 26220409 |
+----------+---------+-----------+----------+
1 row in set (0.00 sec)

mysql> INSERT INTO clientes(DNI, nombre, direccion, telefono) VALUES (46215458, "Ramiro", "Nuñez", 31336649);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO clientes(DNI, nombre, direccion, telefono) VALUES (47542433, "Salvatori", "Larralde", 42447750);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO clientes(DNI, nombre, direccion, telefono) VALUES (46131576, "Diego", "Tronado", 53558861);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO clientes(DNI, nombre, direccion, telefono) VALUES (47432689, "Sandra", "Capdevila", 64669971);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM clientes;
+----------+-----------+-----------+----------+
| DNI      | nombre    | direccion | telefono |
+----------+-----------+-----------+----------+
| 46123569 | Facundo   | Nuñez     | 26220409 |
| 46215458 | Ramiro    | Nuñez     | 31336649 |
| 47542433 | Salvatori | Larralde  | 42447750 |
| 46131576 | Diego     | Tronado   | 53558861 |
| 47432689 | Sandra    | Capdevila | 64669971 |
+----------+-----------+-----------+----------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE empeados(DNI int, apellido VARCHAR(100), nombre VARCHAR(100), direccion VARCHAR(100), telefono int, mail VARCHAR(100), cargo VARCHAR(100), edad int);
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO empeados(DNI, apellido, nombre, direccion, telefono, mail, cargo, edad) VALUES (07453712, "Scott", "Michell", "Altolaguirre", 75550081, "michellescott@gmail.com", "Gerente regional", 45);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM empeados;
+---------+----------+---------+--------------+----------+-------------------------+------------------+------+
| DNI     | apellido | nombre  | direccion    | telefono | mail                    | cargo            | edad |
+---------+----------+---------+--------------+----------+-------------------------+------------------+------+
| 7453712 | Scott    | Michell | Altolaguirre | 75550081 | michellescott@gmail.com | Gerente regional |   45 |
+---------+----------+---------+--------------+----------+-------------------------+------------------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO empeados(DNI, apellido, nombre, direccion, telefono, mail, cargo, edad) VALUES (10234546, "Beesly", "Pam", "Bethoven", 86661191, "pambeesly@gmail.com", "asistente", 30);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO empeados(DNI, apellido, nombre, direccion, telefono, mail, cargo, edad) VALUES (11463788, "Srchrute", "Dwight", "Ibera", 97772202, "dwightschrute@gmail.com", "asistente regional", 45);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO empeados(DNI, apellido, nombre, direccion, telefono, mail, cargo, edad) VALUES (10456398, "Halpert", "Jim", "Donado", 08843353, "jimhalpert@gmail.com", "vendendor", 31);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO empeados(DNI, apellido, nombre, direccion, telefono, mail, cargo, edad) VALUES (10643789, "Martin", "Angela", "Galvan", 19954464, "angelamartin@gmail.com", "contadora", 31);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM empeados;
+----------+----------+---------+--------------+----------+-------------------------+--------------------+------+
| DNI      | apellido | nombre  | direccion    | telefono | mail                    | cargo              | edad |
+----------+----------+---------+--------------+----------+-------------------------+--------------------+------+
|  7453712 | Scott    | Michell | Altolaguirre | 75550081 | michellescott@gmail.com | Gerente regional   |   45 |
| 10234546 | Beesly   | Pam     | Bethoven     | 86661191 | pambeesly@gmail.com     | asistente          |   30 |
| 11463788 | Srchrute | Dwight  | Ibera        | 97772202 | dwightschrute@gmail.com | asistente regional |   45 |
| 10456398 | Halpert  | Jim     | Donado       |  8843353 | jimhalpert@gmail.com    | vendendor          |   31 |
| 10643789 | Martin   | Angela  | Galvan       | 19954464 | angelamartin@gmail.com  | contadora          |   31 |
+----------+----------+---------+--------------+----------+-------------------------+--------------------+------+
5 rows in set (0.00 sec)

mysql> use automotores;
Database changed
mysql> CREATE TABLE ambulancias(patente int, nombredechofer VARCHAR(100));
Query OK, 0 rows affected (0.05 sec)

mysql> DROP TABLE ambulancias;
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE ambulancias(patente VARCHAR(100), nombredechofer VARCHAR(100));
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO ambulancias(patente, nombredechofer) VALUES ("AA 000 AA", "Raul");
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM ambulancias;
+-----------+----------------+
| patente   | nombredechofer |
+-----------+----------------+
| AA 000 AA | Raul           |
+-----------+----------------+
1 row in set (0.00 sec)

mysql> INSERT INTO ambulancias(patente, nombredechofer) VALUES ("AA 000 AB", "Alfonso");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ambulancias(patente, nombredechofer) VALUES ("AA 000 AC", "Pedro");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ambulancias(patente, nombredechofer) VALUES ("AA 000 AD", "Pepe");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ambulancias(patente, nombredechofer) VALUES ("AA 000 AE", "Antonio");
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM ambulancias;
+-----------+----------------+
| patente   | nombredechofer |
+-----------+----------------+
| AA 000 AA | Raul           |
| AA 000 AB | Alfonso        |
| AA 000 AC | Pedro          |
| AA 000 AD | Pepe           |
| AA 000 AE | Antonio        |
+-----------+----------------+
5 rows in set (0.00 sec)

mysql> UPDATE ambulancias SET nombredechofer = "Rodolfo" WHERE patente = "AA 000 AD" ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM ambulancias;
+-----------+----------------+
| patente   | nombredechofer |
+-----------+----------------+
| AA 000 AA | Raul           |
| AA 000 AB | Alfonso        |
| AA 000 AC | Pedro          |
| AA 000 AD | Rodolfo        |
| AA 000 AE | Antonio        |
+-----------+----------------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE ambulancias ADD numerodeunidad int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM ambulancias;
+-----------+----------------+----------------+
| patente   | nombredechofer | numerodeunidad |
+-----------+----------------+----------------+
| AA 000 AA | Raul           |           NULL |
| AA 000 AB | Alfonso        |           NULL |
| AA 000 AC | Pedro          |           NULL |
| AA 000 AD | Rodolfo        |           NULL |
| AA 000 AE | Antonio        |           NULL |
+-----------+----------------+----------------+
5 rows in set (0.00 sec)


mysql> use clientes;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> ALTER TABLE clientes ADD numerodesocio int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE clientes SET "Calle Falsa 123" WHERE direccion = "Larralde";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"Calle Falsa 123" WHERE direccion = "Larralde"' at line 1
mysql> UPDATE clientes SET direccion "Calle Falsa 123" WHERE direccion = "Larralde";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"Calle Falsa 123" WHERE direccion = "Larralde"' at line 1
mysql> UPDATE clientes SET direccion = "Calle Falsa 123" WHERE nombre = "Salvatori";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE clientes SET direccion = "Calle Falsa 123" WHERE nombre = "Ramiro";
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM clientes WHERE telefono < 40000000;
Query OK, 2 rows affected (0.01 sec)

mysql> SELECT * FROM clientes;
+----------+-----------+-----------------+----------+---------------+
| DNI      | nombre    | direccion       | telefono | numerodesocio |
+----------+-----------+-----------------+----------+---------------+
| 47542433 | Salvatori | Calle Falsa 123 | 42447750 |          NULL |
| 46131576 | Diego     | Tronado         | 53558861 |          NULL |
| 47432689 | Sandra    | Capdevila       | 64669971 |          NULL |
+----------+-----------+-----------------+----------+---------------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE empeados ADD numlegajo int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE empeados SET mail = "hola@gmail.com" WHERE nombre = "Pam";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM empeados;
+----------+----------+---------+--------------+----------+-------------------------+--------------------+------+-----------+
| DNI      | apellido | nombre  | direccion    | telefono | mail                    | cargo              | edad | numlegajo |
+----------+----------+---------+--------------+----------+-------------------------+--------------------+------+-----------+
|  7453712 | Scott    | Michell | Altolaguirre | 75550081 | michellescott@gmail.com | Gerente regional   |   45 |      NULL |
| 10234546 | Beesly   | Pam     | Bethoven     | 86661191 | hola@gmail.com          | asistente          |   30 |      NULL |
| 11463788 | Srchrute | Dwight  | Ibera        | 97772202 | dwightschrute@gmail.com | asistente regional |   45 |      NULL |
| 10456398 | Halpert  | Jim     | Donado       |  8843353 | jimhalpert@gmail.com    | vendendor          |   31 |      NULL |
| 10643789 | Martin   | Angela  | Galvan       | 19954464 | angelamartin@gmail.com  | contadora          |   31 |      NULL |
+----------+----------+---------+--------------+----------+-------------------------+--------------------+------+-----------+
5 rows in set (0.00 sec)

