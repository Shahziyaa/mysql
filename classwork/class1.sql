CREATE TABLE students (
    id INT PRIMARY KEY,
    name varchar (50) not null,
    age INT,
    department varchar (50) not null,grade INT)


INSERT INTO students (id,name, age,department,grade) 
VALUES ('1','Alfred','21','computer science','67'),
('2','Kiran','12','maths','98'),
('3','Chong','23','physics','90'),
('4','Suresh','32','computer science','93');

SELECT * FROM students WHERE age > 20;