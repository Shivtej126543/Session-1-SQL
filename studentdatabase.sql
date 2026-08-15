CREATE DATABASE college_demo; USE college_demo;

CREATE TABLE department ( dept_id INT PRIMARY KEY, dept_name VARCHAR(50) UNIQUE NOT NULL );
CREATE TABLE student (
roll_no INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE,
aadhar_no VARCHAR(12) UNIQUE,
dept_id INT,
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
FOREIGN KEY (roll_no) REFERENCES student (roll_no),
FOREIGN KEY (course_id) REFERENCES course (course_id)
);

insert into department values (1, 'computer science'), (2, 'Electronics');
insert into student values (101, 'surmayee', 'surmayee@gmail.com', '1234567891', 1);
nsert into student values (102, 'shivtej', 'shivtej@gmail.com', 513248534, 2);
insert into course values (501, 'DBMS', 1), (502, 'circuits', 2);
insert into enrollment values (101, 501, 3, 'A');

insert into enrollment values (101, 502, 3, 'B');
