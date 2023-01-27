/*
Script to create a database and its related tables of a fictitious library management 
related to a fictitious library management

Course: GS Web Development
Authors: Adrianlm17 & Aminmboankod
*/

DROP DATABASE IF EXISTS booksPalma;
CREATE DATABASE booksPalma;
USE booksPalma;

CREATE TABLE user (
    user_ID INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(64),
    telephone VARCHAR(9),
    user_address VARCHAR(128)
);

CREATE TABLE author (
    author_ID INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(64)
);

CREATE TABLE book (
    book_ID INT PRIMARY KEY AUTO_INCREMENT,
    author_ID INT,
    title VARCHAR(64) NOT NULL,
    ISBN VARCHAR(13) UNIQUE NOT NULL,
    editorial VARCHAR(64),
    FOREIGN KEY (author_ID) REFERENCES author(author_ID)

);

CREATE TABLE library (
	library_ID INT PRIMARY KEY AUTO_INCREMENT,
	book_ID INT,
	library_location VARCHAR(128),
    FOREIGN KEY (book_ID) REFERENCES book(book_ID)
);

CREATE TABLE lending (
    lending_ID INT PRIMARY KEY AUTO_INCREMENT,
    user_ID INT,
    book_ID INT,
    dateLending DATE,
    dateReturn DATE,
    FOREIGN KEY (user_ID) REFERENCES user(user_ID),
    FOREIGN KEY (book_ID) REFERENCES book(book_ID)
);

