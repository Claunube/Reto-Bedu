#Claudia Bernal Leal
#claudia.actuaria@gmail.com
USE tienda;
SHOW TABLES;
SELECT * FROM empleado;
#Nombres empiezan con M
SELECT * FROM empleado WHERE nombre LIKE 'M%';
#Nombres terminan con a
SELECT * FROM empleado WHERE nombre LIKE '%a';
#Nombres que empiezan con M y terminan con a
SELECT * FROM empleado WHERE nombre LIKE 'M%a';
# El guion bajo puede ser sustituido por cualquier letra
SELECT * FROM empleado WHERE nombre LIKE 'M_losa';

#RETO 1
USE tienda;
#¿Qué artículos incluyen la palabra `Pasta` en su nombre?
SELECT * FROM articulo WHERE nombre LIKE '%Pasta%';
#¿Qué artículos incluyen la palabra `Cannelloni` en su nombre?
SELECT * FROM articulo WHERE nombre LIKE '%Cannelloni%';
#¿Qué nombres están separados por un guión (`-`) por ejemplo `Puree - Kiwi`?
SELECT * FROM articulo WHERE nombre LIKE '%-%';
#¿Qué puestos incluyen la palabra `Designer`?
SELECT * FROM puesto WHERE nombre like '%Designer%';
#¿Qué puestos incluyen la palabra `Developer`?
SELECT * FROM puesto WHERE nombre like '%Developer%';

###Agrupaciones
SELECT (1+7)*(10/(6-4));
SELECT avg(precio) FROM articulo;
SELECT count(*) FROM articulo;
SELECT max(precio) FROM articulo;
SELECT min(precio) FROM articulo;
SELECT sum(precio) AS precio_suma FROM articulo;

#RETO 2
DESCRIBE articulo;
DESCRIBE empleado;
DESCRIBE puesto;
DESCRIBE venta;

#¿Cuál es el promedio de salario de los puestos?
SELECT avg(salario) from puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT count(*) from articulo WHERE nombre LIKE '%pasta%';
#¿Cuál es el salario mínimo y máximo?
SELECT min(salario), max(salario) FROM puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) FROM puesto WHERE id_puesto > (SELECT MAX(id_puesto) - 5 FROM puesto);

#Ejemplo 3
SELECT nombre, sum(precio) AS precio_total FROM articulo GROUP BY nombre;
SELECT nombre, count(*) AS cantidad FROM articulo GROUP BY nombre ORDER BY cantidad DESC;
SELECT nombre, min(salario) AS salario_minimo, max(salario) AS salario_maximo FROM puesto GROUP BY nombre;

#RETO 3
#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*) AS num_puestos FROM puesto GROUP BY nombre;
#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) AS total_pagado FROM puesto GROUP BY nombre;
#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(clave) AS ventas FROM venta GROUP BY id_empleado;
#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*) as ventas_art FROM venta GROUP BY id_articulo;