# University-Record-System
A Relational Database System designed specifically for Universities, ensuring safe data storage, quick retrieval of academic and student data and efficent management. This database maintains the data integrity through relations built that offer seamless information of Departments, Students, Enrollments, Semesters, instructors and courses. This database is built as a part of the B103 Databases & Big data Module Project 


# Overview

The Database contains the following tables

-Student
-Department
-Instructor
-Courses
-Enrollments
-Semesters


# Relationships 

- Department–Student
One to Many: A department has many students 
•	Department-Instructor
One to many: A departments consists of several instructors 
•	Department-Course
One to many: A Department has several courses
•	Insturctor-Course 
One to Many: One department can offer multiple courses that could be taught
•	Student-Enrollment
One to Many: One Student could have multiple enrollments
•	Course-Enrollments
One to Many: A course could consist of multiple students
•	Student-Enrollment 
One to many: A semester consists of multiple enrollments in it.
•	Student-Course
Many to Many: This is done through the enrollment table

# Files

Schema.Sql - Contains the complete schema
sample_data.sql - Contains query for sample data insertion
ERD diagram - Represents the relationships 


# How to Run
Download Xampp and start it 
Access http://localhost/phpmyadmin/index.php?route=/ 
Click on import file 
Add SQLSchema.sql
The Database should be created after this. 

# Sample Quiries 

Access http://localhost/phpmyadmin/index.php?route=/ 
Click on import file 
Add SQLSchema.sql
Click on SQL 
Sample queries can be accessed from file for operational check



