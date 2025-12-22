CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    author_id INT NOT NULL,
        FOREIGN KEY (author_id)
        REFERENCES authors(author_id)
);

CREATE INDEX index_books_author_id ON books(author_id);
