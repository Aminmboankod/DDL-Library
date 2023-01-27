/*
Script de creacion de base de datos y sus correspondientes tablas 
relacionadas de una gestión de bibliotecas ficticia

Curso: Grado Superior Desarrollo Web
Autores: Adrián López y Amin Mustafa
*/

DROP DATABASE IF EXISTS llibresPalma;
CREATE DATABASE llibresPalma;
USE llibresPalma;
CREATE TABLE usuario (
    usuario_ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(64),
    apellidos VARCHAR(128),
    telefono VARCHAR(9),
    direccion VARCHAR(128)
);
CREATE TABLE autor (
    autor_ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(64)
);

CREATE TABLE libro (
    libro_ID INT PRIMARY KEY AUTO_INCREMENT,
    autor_ID INT,
    titulo VARCHAR(64) NOT NULL,
    ISBN VARCHAR(13) UNIQUE NOT NULL,
    editorial VARCHAR(64),
    FOREIGN KEY (autor_ID) REFERENCES autor(autor_ID)

);

CREATE TABLE biblioteca (
	biblioteca_ID INT PRIMARY KEY AUTO_INCREMENT,
	libro_ID INT,
    ejemplares INT,
	localizacion VARCHAR(128),
    FOREIGN KEY (libro_ID) REFERENCES libro(libro_ID)
);

CREATE TABLE prestamo (
    prestamo_ID INT PRIMARY KEY AUTO_INCREMENT,
    usuario_ID INT,
    ejemplar_ID INT,
    devolucion DATE,
    prestamo DATE,
    FOREIGN KEY (usuario_ID) REFERENCES usuario(usuario_ID)
);

