CREATE TABLE bookss (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(10,2),
    genre VARCHAR(100)
);


INSERT INTO bookss (id, title, author, price, genre)
VALUES 
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 500, 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 700, 'Science'),
(3, 'The Da Vinci Code', 'Dan Brown', 450, 'Mystery'),
(4, 'Sapiens', 'Yuval Noah Harari', 650, 'History'),
(5, 'To Kill a Mockingbird', 'Harper Lee', 350, 'Fiction');

SELECT * FROM bookss WHERE price > 400 ;


SELECT * FROM bookss
WHERE genre IN ('History', 'Science', 'Fiction');

SELECT * 
FROM books
WHERE title = 'The Great Gatsby';

SELECT * 
FROM books WHERE author <> 'Dan Brown';




