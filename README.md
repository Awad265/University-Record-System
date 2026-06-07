# University-Record-System
A Relational Database System designed specifically for Universities, ensuring safe data storage, quick retrieval of academic and student data and efficent management. This database maintains the data integrity through relations built that offer seamless information of Departments, Students, Enrollments, Semesters, instructors and courses. This database is built as a part of the B103 Databases & Big data Module Project 


# Overview

The Database contains the following tables

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
-	Student-Enrollment 
One to many: A semester consists of multiple enrollments in it.
-	Student-Course
Many to Many: This is done through the enrollment table

# Files

- Schema.Sql - Contains the complete schema
- sample_data.sql - Contains query for sample data insertion
- ERD diagram - Represents the relationships 


# How to Run
1. Download Xampp and start it 
2. Access http://localhost/phpmyadmin/index.php?route=/ 
3. Click on import file 
4.Add SQLSchema.sql
The Database should be created after this. 

# Sample Quiries 

1. Access http://localhost/phpmyadmin/index.php?route=/ 
2. Click on import file 
3. Add SQLSchema.sql
4. Click on SQL 
5. Sample queries can be accessed and run for operational check



