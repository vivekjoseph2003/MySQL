CREATE TABLE books (book_id INT PRIMARY KEY,
title VARCHAR(25));

INSERT INTO books VALUES(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich'),
(4, 'Clean Code');

CREATE TABLE borrowers (borrower_id INT PRIMARY KEY,
    name VARCHAR(30),
    book_id INT,
        FOREIGN KEY (book_id)
        REFERENCES books(book_id));

INSERT INTO borrowers VALUES(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);

SELECT books.title,borrowers.name FROM books 
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id;

SELECT books.title,borrowers.name FROM books 
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id;

SELECT borrowers.name, books.title FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;

SELECT books.title FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

SELECT borrowers.name, books.title FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;
