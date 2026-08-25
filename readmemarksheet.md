Marksheet Database
Overview

This project creates a simple Marksheet database table using SQL. It stores student names and their marks in three subjects: DSA, ACD, and DBMS.

Table

Marksheet – Stores student roll number, name, and subject marks.

Columns
ROLL – Unique roll number and primary key
NAME – Student name
DSA – Marks in Data Structures and Algorithms
ACD – Marks in Advanced Computer Design
DBMS – Marks in Database Management Systems
Sample Data

The table contains marks for 5 students.

How to Run
Open MySQL Workbench or any MySQL client.
Execute the CREATE TABLE statement.
Execute the INSERT statements to add the sample records.
Technologies
MySQL
SQL






prac3 Normalisation

College Management System
Overview
This project is a MySQL-based College Management System that stores departments, students, courses, enrollments, and faculty information.

Tables
department – Stores department details.
student – Stores student information and department.
course – Stores course details and department.
enrollment – Stores student course enrollment, semester, and grades.
faculty – Stores faculty information and department.
Normalization
1NF – Followed: All values are atomic and each table has a primary key.
2NF – Followed: Non-key attributes depend on the complete primary key. The composite key in enrollment is properly used.
3NF – Followed: Non-key attributes depend only on the primary key, with department information separated into the department table.
Conclusion
The database follows 1NF, 2NF, and 3NF. Foreign keys are used to maintain relationships between students, courses, departments, and faculty, making the database properly normalized.




