CREATE TABLE authors(
author_id  INT PRIMARY KEY,
author_name VARCHAR(30) NOT NULL,
email VARCHAR(30) UNIQUE);

CREATE TABLE books(
book_id INT PRIMARY KEY,
book_title VARCHAR(30) NOT NULL,
author_id INT,
FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
