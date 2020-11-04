#Claudia Bernal Leal
#claudia.actuaria@gmail.com
USE tienda;
SHOW TABLES;

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

#RETO 2
DESCRIBE articulo;
DESCRIBE empleado;
DESCRIBE puesto;
DESCRIBE venta;

#RETO 3
#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*) AS num_puestos FROM puesto GROUP BY nombre;
#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) AS total_pagado FROM puesto GROUP BY nombre;
#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(clave) AS ventas FROM venta GROUP BY id_empleado;
#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*) as ventas_art FROM venta GROUP BY id_articulo;
