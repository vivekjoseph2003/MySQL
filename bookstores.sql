CREATE TABLE authors (
    author_id INT(10) PRIMARY KEY,
    name VARCHAR(25),
    country VARCHAR(25)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(25),
    price INT(10),
    author_id INT(10),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

ALTER TABLE books ADD published_year int(25);
DELETE FROM books;
DROP DATABASE bookstoredb;
