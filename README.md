# DDL - Library Database

# Index

+   [Instrucciones](#instructions)
+   [Use](#use)
+   [Relational Diagram](#relational-diagram)
+   [Queries](#queries)




## Instructions
----

```
General instructions for the assignments:

If possible, mention the different sources of information you have used to prepare your paper.

Take the relational diagram you created in the previous work unit. Change it, correct it or improve it if needed. Include the modified version in your report.

Create the script required to generate the database corresponding to your relational diagram. If possible, use the following keywords.
    IF NOT EXISTS
    PRIMARY KEY
    FOREIGN KEY
    NOT NULL
    CHECK
    UNIQUE KEY
    AUTO_INCREMENT

If possible, use different data types: INT, VARCHAR, DECIMAL, DATE…

The name for the DDL script will be ddl.sql

Create a script to insert some example data into your database. The name of the DML script will be dml.sql

Include some example queries on your data. The name of the queries script will be queries.sql
Include a script that deletes all the data.  It should be named delete.sql

Include a script that drops all the tables. It should be named drop.sql

You can submit your assignment as a github repository if you think it is more appropriate.

In your report, highlight the aspects that you think are more important and interesting (worth a better grade).
```

### Use


- Add the ddl.sql file to your database manager like this:

    ```
    sudo mariadb < ddl.sql
    ```
- Enter your database manager
    ```
    sudo mariadb
    ```
- To check that "booksPalma" has been added enter the following command:
    ```
    MariaDB [(none)]> show databases;
    ```
    ![databases](/doc/databases.png)
- Select booksPalma:
    ```
    MariaDB [(none)]> use booksPalma;
    ```
- Display the tables with the following command:
    ```
    MariaDB [booksPalma]> show tables;
    ```
    ![tables](/doc/tables.png)
- We check that the specifications of each column have been entered correctly and we check the values
    ```
    MariaDB [booksPalma]> describe book;
    MariaDB [booksPalma]> select * FROM book;
    ```
    ![book-table](/doc/book.png)
- Since we have not entered data, we will see that it tells us that it is empty. Therefore, in the following steps we are going to introduce the data with the file "dml.sql" and we will show them by terminal

    ```
    > sudo mariadb < dml.sql
    > sudo mariadb
    > show databases;
    > use booksPalma;
    > SELECT * FROM book;
    ```
    ![book-table-empty](/doc/booktable.png)

## Relational diagram
![diagram](/doc/Diagrama%20Relacional%20BBDD.drawio.png)
## Queries
What is the number of books published by the author with ID = 4?
```
SELECT COUNT(*) FROM book WHERE author_ID = 4;
```
![first](/doc/first.png)

/* What are the names of the authors with a book in the library? */
```
SELECT author_name FROM author WHERE author_ID IN (SELECT author_ID FROM book WHERE book_ID IN (SELECT book_ID FROM library));
```
![two](/doc/two.png)