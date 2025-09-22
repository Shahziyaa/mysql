CREATE DATABASE student_enrollment;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course TEXT(50),
    fees_paid INT(50),
    status VARCHAR(20)
);

INSERT INTO students (id, name, course, fees_paid, status)
VALUES (1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

SELECT * FROM students
WHERE fees_paid > 5000;

UPDATE students 
SET status = 'Active'
WHERE course = 'Web Development';

UPDATE students
SET fees_paid = fees_paid + 1000
WHERE course = 'Data Science';

UPDATE students
SET status = 'Inactive',fees_paid = fees_paid -500
WHERE id =3;

DELETE FROM students WHERE id =2;

DELETE from students WHERE status = 'Inactive';
