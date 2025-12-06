INSERT INTO products1 VALUES(1, 'Wireless Mouse', 'Electronics', 1200, 'Yes'),
(2, 'Water Bottle', 'Kitchen', 350, 'Yes'),
(3, 'Notebook', 'Stationery', 150, 'No'),
(4, 'Headphones', 'Electronics', 2500, 'Yes'),
(5, 'Coffee Mug', 'Kitchen', 450, 'No');

SELECT DISTINCT category FROM products1;
SELECT * FROM products1 WHERE in_stock='Yes'AND price<500;
SELECT * FROM products1 WHERE in_stock='No' OR price > 1000;
SELECT name, price FROM products1 ORDER BY price DESC;
SELECT name,price,price+(price*18/100) AS price_with_tax FROM products1;
