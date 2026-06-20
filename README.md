# University-Record-System
A Relational Database System designed specifically for Universities, ensuring safe data storage, quick retrieval of academic and student data and efficent management. This database maintains the data integrity through relations built that offer seamless information of Departments, Students, Enrollments, Semesters, instructors and courses. This database is built as a part of the B103 Databases & Big data Module Project 


# Overview

The Database System contains the following tables

- Student
- Department
- Instructor
- Courses
- Enrollments
- Semesters


# Relationships 

- Department–Student
One to Many: A department has many students 
-	Department-Instructor
One to many: A departments consists of several instructors 
-	Department-Course
One to many: A Department has several courses
-	Insturctor-Course 
One to Many: One department can offer multiple courses that could be taught
-	Student-Enrollment
One to Many: One Student could have multiple enrollments
-	Course-Enrollments
One to Many: A course could consist of multiple students
-	Enrollment-Semester 
Many to one: Multiple enrollments in a Semester
-	Student-Course
Many to Many: This is done through the enrollment table

# Files

- Schema.Sql - Complete schema
- SampleData.sql - Query for sample data insertion
- Queries.sql - Different queries for data retrieval 


# How to Run
1. Download Xampp and Port SQL
2. Access http://localhost/phpmyadmin/index.php?route=/ 
3. Click on import file 
4. Add SQLSchema.sql

The Database should be created after this. 

# Sample Quiries 
1. Port SQL through XAMPP
2. Access http://localhost/phpmyadmin/index.php?route=/
6. Access Queries.SQL
7. Test each query for outputs 



