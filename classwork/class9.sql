CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
);

CREATE table borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(100),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO books (book_id,title) VALUES
(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich')
(4, 'Clean Code');

INSERT INTO borrowers (borrower_id, name, book_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);

SELECT books.title, borrowers.name
FROM books
INNER JOIN borrowers ON books.book_id = borrowers.book_id;

SELECT books.title,borrowers.name, borrowers.borrower_id
FROM borrowers
LEFT JOIN books ON borrowers.book_id = books.book_id;  

SELECT books.title,borrowers.name, borrowers.borrower_id
FROM borrowers
LEFT JOIN books ON borrowers.book_id = books.book_id;  
WHERE borrowers.book_id IS NULL;

SELECT borrowers.name, borrowers.borrower_id,books.title
FROM borrowers LEFT JOIN books ON borrowers.book_id = books.book_id;

