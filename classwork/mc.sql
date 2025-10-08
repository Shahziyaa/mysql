CREATE TABLE employee 
(id int AUTO_INCREMENT PRIMARY KEY,name varchar(50) NOT NULL,department varchar(50) NOT NULL,leave int);


INSERT INTO Employee (id, name, department, leave) VALUES
(1, 'Raju', 'Sales', 1),
(2, 'Sangeetha', 'Sales', 3),
(3, 'Vinay', 'Operations', 8),
(4, 'Abey', 'Packing', 2),
(5, 'Thomas', 'Packing', 1),
(6, 'Muneer', 'Operations', 7),
(7, 'Aparna', 'Sales', 3),
(8, 'Abid', 'Operations', 9),
(9, 'Fathima', 'Sales', 11),
(10, 'Varghese', 'Operations', 14);

CREATE TABLE exam
 (id int AUTO_INCREMENT PRIMARY KEY,
 employee_id int NOT NULL,
 exam_status varchar(50) NOT NULL,
 FOREIGN KEY(employee_id) REFERENCES employee(id));

INSERT INTO exam (id, employee_id, exam_status) VALUES
(1, 2, 'Pass'),
(2, 5, 'Fail'),
(3, 1, 'Fail'),
(4, 8, 'Pass'),
(5, 3, 'Pass'),
(6, 1, 'Pass'),
(7, 7, 'Fail'),
(8, 9, 'Pass'),
(9, 10, 'Pass');


select name FROM employee 
WHERE leave > 5 and department = 'Sales';

select COUNT(*) AS NUMBER_OF FROM employee 
WHERE department = 'Operations';

select department,COUNT(*) AS TOTAL FROM employee 
GROUP BY department;

select department FROM employee
GROUP BY department
HAVING sum(leave) > 10;

select employee.name FROM employee
inner join exam
ON employee.id = exam.employee_id WHERE 
exam.exam_status = 'Pass';

select name FROM employee
WHERE id NOT IN (SELECT employee_id FROM exam);
