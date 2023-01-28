/*
Verification script, which performs 20 different tests to verify that our database is working correctly.

Course: GS Web Development
Authors: Adrianlm17 & Aminmboankod
*/

/*What is the name and address of the users? */
SELECT user_name, user_address FROM user;
 
/*How many copies are in aisle A-2? */
SELECT library_location FROM library WHERE library_location = 'aisle A-2';

/* What are the titles of the books published by Hernán Lavín Cerda? */
SELECT title FROM book WHERE author_ID = (SELECT author_ID FROM author WHERE author_name = 'Hernán Lavín Cerda');

/* What is the ISBN of the book published by Andrew Hodges? */
SELECT ISBN FROM book WHERE author_ID = (SELECT author_ID FROM author WHERE author_name = 'Andrew Hodges');

/* What are the names of the users who have a loan? */
SELECT user_name FROM user WHERE user_ID IN (SELECT user_ID FROM lending);

/* How many books has Nadia Ameziane Garcia published? */
SELECT COUNT(*) FROM book WHERE author_ID = (SELECT author_ID FROM author WHERE author_name = 'Nadia Ameziane Garcia');

/* What are the titles of the books published by Stephan Hawking that are in the library? */
SELECT title FROM book WHERE author_ID = (SELECT author_ID FROM author WHERE author_name = 'Stephe Hawking') AND book_ID IN (SELECT book_ID FROM library);

/* What are the names of users with a loan who return a book after 2023-03-01? */
SELECT user_name FROM user WHERE user_ID IN (SELECT user_ID FROM lending WHERE dateReturn > '2023-03-01');

/* What is the number of books published by the author with ID = 1? */
SELECT COUNT(*) FROM book WHERE author_ID = 1;

/* What are the titles of the books in aisle D-5? */
SELECT title FROM book WHERE book_ID IN (SELECT book_ID FROM library WHERE library_location = 'aisle D-5');

/* What are the names of the authors with a book in the library? */
SELECT author_name FROM author WHERE author_ID IN (SELECT author_ID FROM book WHERE book_ID IN (SELECT book_ID FROM library));


/* What are the titles of the books published by Andrew Hodges that are in the library? */
SELECT title FROM book WHERE author_ID = (SELECT author_ID FROM author WHERE author_name = 'Andrew Hodges') AND book_ID IN (SELECT book_ID FROM library);

/* What is the number of books published by the author with ID = 4? */
SELECT COUNT(*) FROM book WHERE author_ID = 4;
