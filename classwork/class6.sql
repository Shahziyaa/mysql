CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    course  VARCHAR (50),
    score VARCHAR(2),
    email VARCHAR(50),
    phone VARCHAR(50),
    city VARCHAR(50),
    bonus_points number(10, 2));

    INSERT INTO students (id,name,course,score,email,phone,city,bonus_points)
    VALUES
    (1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);


SELECT course, count(*)AS total_students FROM students group by course;

SELECT course, AVG(score) AS average_score FROM students GROUP BY course having AVG(score) > 80;

select name,score from students WHERE city in ('Chennai','Mumbai') ;

select * FROM students WHERE bonus_points IS NULL;

SELECT name FROM students 




