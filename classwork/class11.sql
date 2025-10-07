CREATE TABLE authors (
    authorid INT PRIMARY KEY auto_increment,
    name VARCHAR(100),
);

CREATE TABLE books(
    authorid INT,
    bookid INT PRIMARY KEY auto_increment,
    title VARCHAR(100),
    FOREIGN KEY (authorid) REFERENCES authors(authorid)
);

CREATE INDEX idx_author_id ON books(author_id);