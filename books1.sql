INSERT INTO books1 VALUES(1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

UPDATE books1 SET price=price+50,stock=12 WHERE title='Learn SQL';
UPDATE books1 SET stock=stock-2 WHERE price>500;
DELETE FROM books1 WHERE book_id=3;
