CREATE TABLE books_1 (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(10,2),
    stock_status VARCHAR(20), 
    genre VARCHAR(100)
);

INSERT INTO books_1 (id, title, author, price, stock_status, genre)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 500, 'In Stock', 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 700, 'Out of Stock', 'Science'),
(3, 'The Da Vinci Code', 'Dan Brown', 450, 'In Stock', 'Mystery'),
(4, 'Sapiens', 'Yuval Noah Harari', 650, 'In Stock', 'History'),
(5, 'To Kill a Mockingbird', 'Harper Lee', 350, 'Out of Stock', 'Fiction'),
(6, 'Educated', 'Tara Westover', 550, 'In Stock', 'Biography'),
(7, 'The Silent Patient', 'Alex Michaelides', 400, 'In Stock', 'Thriller');


SELECT DISTINCT genre FROM books_1;

SELECT * FROM books_1 WHERE stock_status = 'In Stock' AND price < 400;

SELECT * FROM books_1 WHERE stock_status = 'Out of Stock' OR price > 700;

SELECT title,price ,price * 1.10 AS price_with_tax FROM books_1;

SELECT title, price, stock_status
FROM books_1
ORDER BY price DESC;
