/*
Script de creacion de base de datos y sus correspondientes tablas 
relacionadas de una gestión de bibliotecas ficticia

Curso: Grado Superior Desarrollo Web
Autores: Adrián López y Amin Mustafa
*/

/*¿Cuál es el nombre y dirección de los usuarios?*/
SELECT nombre, direccion FROM usuario;
 
/*¿Cuántos ejemplares hay en la sala de lectura 3?*/
SELECT ejemplares FROM biblioteca WHERE localizacion = 'Sala de lectura 3';

/* ¿Cuáles son los títulos de los libros publicados por Hernán Lavín Cerda?*/
SELECT titulo FROM libro WHERE autor_ID = (SELECT autor_ID FROM autor WHERE nombre = 'Hernán Lavín Cerda');

/* ¿Cuál es el ISBN del libro publicado por Andrew Hodges?*/
SELECT ISBN FROM libro WHERE autor_ID = (SELECT autor_ID FROM autor WHERE nombre = 'Andrew Hodges');

/* ¿Cuáles son los nombres de los usuarios que tienen un préstamo?*/
SELECT nombre FROM usuario WHERE usuario_ID IN (SELECT usuario_ID FROM prestamo);

/* ¿Cuál es la cantidad de libros publicados por Nadia Ameziane Garcia?*/
SELECT COUNT(*) FROM libro WHERE autor_ID = (SELECT autor_ID FROM autor WHERE nombre = 'Nadia Ameziane Garcia');

/* ¿Cuáles son los títulos de los libros publicados por Stephan Hawking que están en la biblioteca?*/
SELECT titulo FROM libro WHERE autor_ID = (SELECT autor_ID FROM autor WHERE nombre = 'Stephe Hawking') AND libro_ID IN (SELECT libro_ID FROM biblioteca);

/* ¿Cuáles son los nombres de los usuarios con un préstamo que devuelvan un libro después del 2023-03-01?*/
SELECT nombre FROM usuario WHERE usuario_ID IN (SELECT usuario_ID FROM prestamo WHERE devolucion > '2023-03-01');

/* ¿Cuál es la cantidad de libros publicados por el autor con ID = 1?*/
SELECT COUNT(*) FROM libro WHERE autor_ID = 1;

/* ¿Cuál es el nombre de los usuarios con un préstamo pendiente?*/
SELECT nombre FROM usuario WHERE usuario_ID IN (SELECT usuario_ID FROM prestamo WHERE devolucion IS NULL);

/* ¿Cuáles son los títulos de los libros en la localización Sala de lectura 5?*/
SELECT titulo FROM libro WHERE libro_ID IN (SELECT libro_ID FROM biblioteca WHERE localizacion = 'Sala de lectura 5');

/* ¿Cuáles son los nombres de los autores con un libro en la biblioteca?*/
SELECT nombre FROM autor WHERE autor_ID IN (SELECT autor_ID FROM libro WHERE libro_ID IN (SELECT libro_ID FROM biblioteca));

/* ¿Cuál es el nombre de los autores con un libro publicado después del año 2017?*/
SELECT nombre FROM autor WHERE autor_ID IN (SELECT autor_ID FROM libro WHERE ISBN > 2017);

/* ¿Cuáles son los títulos de los libros publicados por Andrew Hodges que están en la biblioteca?*/
SELECT titulo FROM libro WHERE autor_ID = (SELECT autor_ID FROM autor WHERE nombre = 'Andrew Hodges') AND libro_ID IN (SELECT libro_ID FROM biblioteca);

/* ¿Cuál es el nombre de los usuarios con un préstamo pendiente después del 2023-06-01?*/
SELECT nombre FROM usuario WHERE usuario_ID IN (SELECT usuario_ID FROM prestamo WHERE devolucion IS NULL AND prestamo > '2023-06-01');

/* ¿Cuál es la cantidad de libros publicados por el autor con ID = 4?*/
SELECT COUNT(*) FROM libro WHERE autor_ID = 4;

/* ¿Cuáles son los nombres de los autores con un libro en la biblioteca y publicado antes del año 2000?*/
SELECT nombre FROM autor WHERE autor_ID IN (SELECT autor_ID FROM libro WHERE libro_ID IN (SELECT libro_ID FROM biblioteca) AND ISBN < 2000);

/* ¿Cuáles son los nombres de los usuarios con un préstamo pendiente antes del 2023-03-01?*/
SELECT nombre FROM usuario WHERE usuario_ID IN (SELECT usuario_ID FROM prestamo WHERE devolucion IS NULL AND prestamo < '2023-03-01');

/* ¿Cuáles son los títulos de los libros publicados por Nadia Ameziane Garcia que están en la biblioteca?*/
SELECT titulo FROM libro WHERE autor_ID = (SELECT autor_ID FROM autor WHERE nombre = 'Nadia Ameziane Garcia') AND libro_ID IN (SELECT libro_ID FROM biblioteca);

/* ¿Cuál es el nombre de los usuarios con un préstamo pendiente entre el 2023-03-01 y el 2023-06-01?*/
SELECT nombre FROM usuario WHERE usuario_ID IN (SELECT usuario_ID FROM prestamo WHERE devolucion IS NULL AND prestamo BETWEEN '2023-03-01' AND '2023-06-01');
