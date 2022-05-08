-- Botiga 
SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio, precio*1.05 FROM producto;
SELECT nombre AS 'nom de producto', precio AS 'euros', precio*1.05 AS 'dolars' FROM producto;
SELECT UPPER(nombre), precio FROM producto;
SELECT LOWER(nombre), precio FROM producto;
SELECT nombre, UPPER(SUBSTRING(nombre,1,2)) FROM fabricante;
SELECT nombre, ROUND(precio) FROM producto;
SELECT nombre, TRUNC(precio,0) FROM producto;
SELECT fabricante.codigo FROM fabricante INNER JOIN producto ON fabricante.codigo=producto.codigo_fabricante;
SELECT DISTINCT fabricante.codigo FROM fabricante INNER JOIN producto ON fabricante.codigo=producto.codigo_fabricante;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 2 OFFSET 3;
SELECT nombre, precio FROM producto ORDER BY precio ASC;
SELECT nombre, precio FROM producto ORDER BY precio DESC;
SELECT  nombre FROM producto WHERE codigo_fabricante=2; 
SELECT producto.nombre, precio, fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;
SELECT producto.nombre, precio, fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo ORDER BY fabricante.nombre;
SELECT producto.codigo, producto.nombre, producto.codigo_fabricante, fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;
SELECT producto.nombre, MIN(precio), fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;
SELECT producto.nombre, MAX(precio), fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE fabricante.nombre='Lenovo';
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE fabricante.nombre='Crucial' AND producto.precio>200;
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE fabricante.nombre='Asus' AND fabricante.nombre='Hewlett-Packard' AND fabricante.nombre='Seagate';
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE fabricante.nombre IN('Asus', 'Hewlett-Packard', 'Seagate');
SELECT producto.nombre, precio FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE fabricante.nombre LIKE '%e';
SELECT producto.nombre, precio FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE fabricante.nombre LIKE '%w%';
SELECT producto.nombre, precio, fabricante.nombe FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE precio>=180 ORDER BY precio DESC, producto.nombre ASC;
SELECT fabricante.codigo, fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;
SELECT fabricante.nombre, producto.nombre FROM producto RIGHT JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo; 
SELECT fabricante.nombre FROM fabricante LEFT JOIN producto ON producto.codigo_fabricante=fabricante.codigo WHERE producto.codigo_fabricante IS NULL;
SELECT producto.nombre FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre="Lenovo";
SELECT * FROM producto, fabricante WHERE precio = (SELECT MAX(precio) FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre="Lenovo");
SELECT producto.nombre FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre="Lenovo" AND precio = (SELECT MAX(precio) FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo);
SELECT producto.nombre FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre="Hewlett Packard" AND precio = (SELECT MIN(precio) FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo);
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE precio>=(SELECT MAX(precio) FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre="Lenovo");
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo WHERE precio>(SELECT AVG(precio) FROM producto, fabricante WHERE producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre="Asus") AND fabricante.nombre="Asus";
-- Universitat

 SELECT apellido1, apellido2, nombre FROM persona WHERE tipo="alumno" ORDER BY apellido1, apellido2, nombre;
 SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo="alumno" AND telefono IS NULL;
 SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo="alumno" AND (fecha_nacimiento BETWEEN "1999-01-01" AND "1999-12-31");
 SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo="profesor" AND (telefono IS NULL) AND (nif LIKE "%k");
 SELECT nombre FROM asignatura WHERE cuatrimestre=1 AND curso=3 AND id_grado=7;
 SELECT apellido1, apellido2, persona.nombre, departamento.nombre FROM persona, profesor, departamento WHERE tipo="profesor" AND persona.id=id_profesor AND departamento.id=id_departamento ORDER BY apellido1, apellido2, persona.nombre;
 SELECT asignatura.nombre, anyo_inicio, anyo_fin FROM asignatura, curso_escolar, persona, alumno_se_matricula_asignatura WHERE persona.id=alumno_se_matricula_asignatura.id_alumno AND alumno_se_matricula_asignatura.id_asignatura=asignatura.id AND alumno_se_matricula_asignatura.id_curso_escolar=curso_escolar.id AND persona.nif="26902806M";
 SELECT departamento.nombre FROM departamento, profesor, grado, asignatura WHERE profesor.id_departamento=departamento.id AND profesor.id_profesor=asignatura.id_profesor AND asignatura.id_grado=grado.id AND grado.nombre="Grado en Ingeniería Informática (Plan 2015)";
 SELECT persona.nombre, apellido1, apellido2 FROM persona, alumno_se_matricula_asignatura, curso_escolar WHERE persona.id=alumno_se_matricula_asignatura.id_alumno AND alumno_se_matricula_asignatura.id_curso_escolar=curso_escolar.id AND curso_escolar.anyo_inicio=2018 AND curso_escolar.anyo_fin=2019;
 
 -- Resolgui les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.
 
 SELECT departamento.nombre, apellido1, apellido2, persona.nombre FROM persona LEFT JOIN profesor ON persona.id=profesor.id_profesor LEFT JOIN departamento ON departamento.id=profesor.id_departamento WHERE persona.tipo="profesor" ORDER BY departament.nombre, apellido1, apellido2, persona.nombre;
 SELECT persona.nombre, apellido1, apellido2 FROM persona LEFT JOIN profesor ON persona.id=profesor.id_profesor LEFT JOIN departamento ON profesor.id_departamento=departamento.id WHERE persona.tipo="profesor" AND departamento.id IS NULL;
 SELECT departamento.nombre FROM departamento LEFT JOIN profesor ON profesor.id_departamento=departamento.id WHERE profesor.id_departamento IS NULL;
 SELECT persona.nombre, apellido1, apellido2 FROM persona INNER JOIN profesor ON persona.id=profesor.id_profesor LEFT JOIN asignatura ON profesor.id_profesor=asignatura.id_profesor WHERE asignatura.id_profesor IS NULL;
 SELECT asignatura.nombre FROM persona INNER JOIN profesor ON persona.id=profesor.id_profesor RIGHT JOIN asignatura ON profesor.id_profesor=asignatura.id_profesor WHERE asignatura.id_profesor IS NULL;
 SELECT departamento.nombre FROM departamento LEFT JOIN profesor ON departamento.id=profesor.id_departamento LEFT JOIN asignatura ON profesor.id_profesor=asignatura.id_profesor LEFT JOIN alumno_se_matricula_asignatura ON asignatura.id=alumno_se_matricula_asignatura.id_asignatura GROUP BY departamento.nombre HAVING id_curso_escolar=0;
 
 -- Consultes resum
 
 SELECT COUNT(id) FROM persona WHERE persona.tipo="alumno";
 SELECT COUNT(id) FROM persona WHERE persona.tipo="alumno" AND fecha_nacimiento BETWEEN "1999-01-01" AND "1999-12-31";
 SELECT departamento.nombre, COUNT(profesor.id_departamento) FROM profesor INNER JOIN departamento ON departamento.id=profesor.id_departamento GROUP BY profesor.id_departamento ORDER BY COUNT(profesor.id_departamento) DESC;
 SELECT departamento.nombre, COUNT(profesor.id_departamento) FROM profesor RIGHT JOIN departamento ON departamento.id=profesor.id_departamento GROUP BY departamento.id ORDER BY COUNT(profesor.id_departamento) DESC;
 SELECT grado.nombre, COUNT(asignatura.id_grado) FROM grado LEFT JOIN asignatura ON grado.id=asignatura.id_grado GROUP BY grado.id ORDER BY COUNT(asignatura.id_grado) DESC;
 SELECT grado.nombre, COUNT(asignatura.id_grado) FROM grado INNER JOIN asignatura ON grado.id=asignatura.id_grado GROUP BY grado.id HAVING COUNT(asignatura.id_grado)>40 ORDER BY COUNT(asignatura.id_grado) DESC;
 SELECT grado.nombre, asignatura.tipo, SUM(asignatura.creditos) FROM grado INNER JOIN asignatura ON grado.id=asignatura.id_grado GROUP BY grado.nombre, asignatura.tipo;
 SELECT curso_escolar.anyo_inicio, COUNT(alumno_se_matricula_asignatura.id_curso_escolar) FROM alumno_se_matricula_asignatura LEFT JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar=curso_escolar.id GROUP BY id_curso_escolar;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 














































