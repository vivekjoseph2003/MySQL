INSERT INTO books3 VALUES(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);

INSERT INTO bestsellers VALUES(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

SELECT title,author FROM books3 UNION SELECT title,author FROM bestsellers;
SELECT * FROM books3 WHERE price>400;
SELECT AVG(price) AS averageprice FROM books3;
SELECT COUNT(*) AS numberofbooks FROM books3;
SELECT title AS BookTitle,author AS WrittenBy FROM books3 UNION ALL SELECT title,author FROM bestsellers;
