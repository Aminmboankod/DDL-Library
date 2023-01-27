/*
Script insertion of data into the "booksPalma" database with all the necessary contents for subsequent 
tests with the ones you want

Course: GS Web Development
Authors: Adrianlm17 & Aminmboankod
*/

USE booksPalma;

INSERT INTO user (user_name, telephone, user_address)  VALUES
    ('Pedro', 971901677, 'C/ de Verdi'),
    ('Maria', 644567781, 'Calle Or'),
    ('Sebas', 678618470, 'Carrer de Badia'),
    ('Tofol', 669920841, 'Carrer dels Bohemis'),
    ('Miquel', 971905544, 'Caller de Mateu');


INSERT INTO author (author_name) VALUES
    ('Stephe Hawking'),
    ('Andrew Hodges'),
    ('Nadia Ameziane Garcia'),
    ('Hernán Lavín Cerda');


INSERT INTO book (title, author_ID, ISBN, editorial) VALUES
    ('Breve historia del tiempo', 1, 9789684063163, 'Editorial Planeta Mexicana'),
    ('My Brief History', 1, 9780593072523, 'Bantam Press'),
    ('La clau secreta de univers', 1, 9789684063563, 'Editorial Planeta Mexicana'),
    ('Quest for a Theory of Everything', 1, 9780553405071, 'Bantam Press'),
    ('The Great Philosophers', 2, 9780753801925, 'Orion'),
    ('One to nine', 2, 9781904977759, 'Short Books Ltd'),
    ('Daisy and Friends', 2, 9781520629254, 'Independently published'),
    ('Java For Kids', 3, 9781981597314, 'CreateSpace Independent Publishing Platform'),
    ('El que a hierro mata', 4, 9788432213519, 'Seix Barral.'),
    ('El pálido pie de lulú', 4, 9789684340688, 'Premia Editorial de Libros');
    

INSERT INTO library (book_ID, library_location) VALUES
    (4, 'aisle A-3'),
    (5, 'aisle D-5'),
    (9, 'aisle C-1'),
    (7, 'aisle A-2'),


INSERT INTO lending (user_ID, book_ID, dateReturn, dateLending) VALUES 
    (1, 1, '2023-02-01', '2023-03-01'),
    (2, 3, '2023-01-26', '2023-02-12'),
    (2, 10, '2023-01-26', NULL),
    (3, 6, '2023-03-03', '2023-05-21'),
    (4, 2, '2023-01-27', NULL),
    (5, 8, '2023-09-06', NULL);
