CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    price DECIMAL(10, 2),
    copies_sold INT (1000)
);

INSERT INTO books (id, title, author, genre, price, copies_sold)
VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800),

CREATE TABLE bestsellers (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    price DECIMAL(10, 2),
    copies_sold INT (1000)
);

SELECT title, author FROM books
union
SELECT title, author FROM booksellers;
INSERT INTO bestsellers (id, title, author, genre, price, copies_sold)
VALUES
(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);



SELECT * FROM books
WHERE price < 400;

SELECT AVG(price) AS avg_price FROM books;

SELECT COUNT(*) AS total_books FROM books;

SELECT   title AS  Book Title and author AS Written By FROM books;

