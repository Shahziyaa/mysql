CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    UNIQUE (id, email)
);



CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    UNIQUE (course_id)
    
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    enrollment_id INT PRIMARY KEY,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

