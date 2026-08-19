CREATE DATABASE college_demo;
USE college_demo;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    aadhar_no VARCHAR(12) UNIQUE,
    dept_id INT,
    cgpa DECIMAL(3,2),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE enrollment (
    roll_no INT,
    course_id INT,
    semester INT CHECK (semester BETWEEN 1 AND 8),
    grade CHAR(2),
    PRIMARY KEY (roll_no, course_id, semester),
    FOREIGN KEY (roll_no) REFERENCES student(roll_no),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


INSERT INTO department VALUES 
    (1, 'computer science'), 
    (2, 'Electronics');

INSERT INTO student VALUES (101, 'surmayee', 'surmayee@gmail.com', '123456789012', 1, NULL);
INSERT INTO student VALUES (102, 'shivtej', 'shivtej@gmail.com', '513248534123', 2, NULL);


INSERT INTO course VALUES 
    (501, 'DBMS', 1), 
    (502, 'circuits', 2);


INSERT INTO enrollment VALUES (101, 501, 3, 'A');
INSERT INTO enrollment VALUES (101, 502, 3, 'B');


INSERT INTO faculty VALUES (1234, 'Shiv', 'shiv@gmail.com', 1), (12345, 'Surmayee', 'surmayee12345@gmail.com', 2);
