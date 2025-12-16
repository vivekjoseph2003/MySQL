CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(20),
    price INT(10));
    
ALTER TABLE products ADD category VARCHAR(20);
DELETE FROM products;
DROP DATABASE groceryshop;
