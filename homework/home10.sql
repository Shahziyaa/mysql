CREATE TABLE authors (
    authorid INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    UNIQUE (email)
);

CREATE TABLE books(
    authorid INT,
    bookid INT PRIMARY KEY,
    title VARCHAR(100),
    FOREIGN KEY (authorid) REFERENCES authors(authorid),
    UNIQUE (bookid)
)

