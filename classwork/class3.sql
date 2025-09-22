CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title TEXT(255),
    author TEXT(255),
    price INT(10,2),
    stock INT(20),  
);

INSERT INTO books (book_id, title, author, price, stock)
VALUES(1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

UPDATE books 
SET price = price+50, stock = 12
WHERE title = 'Learn SQL';

UPDATE books
SET Stock = stock-2 WHERE price > 500;

DELETE FROM books WHERE book_id =3;