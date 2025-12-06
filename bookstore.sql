INSERT INTO bookstore VALUES ('1','The Great Gatsby','F. Scott Fitzgerald','500','In Stock','Modernist novel'),
('2','To Kill a Mockingbird','Harper Lee','350','In Stock','Southern Gothic'),
('3','1984','George Orwell','420','Out of Stock','Dystopian'),
('4','Pride and Prejudice','Jane Austen','280','In Stock','Romance'),
('5','The Hobbit','J.R.R. Tolkien','750','In Stock','Fantasy');

SELECT DISTINCT genre FROM bookstore;
SELECT * FROM bookstore WHERE stock_status='In Stock' AND price<400;
SELECT * FROM bookstore WHERE stock_status='Out of Stock' OR price>700;
SELECT title,price,(price*10/100)+price AS gstprice FROM bookstore; 
SELECT title,price,stock_status FROM bookstore ORDER BY price DESC;
