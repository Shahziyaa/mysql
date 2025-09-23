CREATE DATABASE MOBILE_STORE;

CREATE TABLE mobiles (
    id INT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    price INT(10),
    stock INT(10)
);

INSERT INTO mobiles (id, brand, model, price, stock)
VALUES
(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);

SELECT * FROM mobiles
WHERE price < 15000 OR stock > 15;

UPDATE mobiles
SET stock = stock + 5
WHERE model = 'Narzo 50';

DELETE FROM mobiles
WHERE id=2;

SELECT MIN(price) AS lowest_price, MAX(price) AS highest_price
FROM mobiles;

SELECT SUM(stock) AS total_stock
from mobiles;

SELECT * from mobiles
ORDER BY price DESC
LIMIT 2;