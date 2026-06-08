
•	Purpose: List all Student (Description)


SELECT * FROM Student;


•	Purpose: List all courses with instructor names 


SELECT c.CourseName, i.InstructorName, i.InstructorLastName
FROM Course c
JOIN Instructor i 
ON c.InstructorID = i.InstructorID;

•	Purpose: Update student email


UPDATE Student
SET StudentEmail = 'walker@student.umb'
WHERE StudentID = 1;


•	Purpose : Delete a student
DELETE FROM Student
WHERE StudentID = 2;


•	Purpose: Students in a Department 


SELECT s.StudentName, s.StudentLastName, d.DepartmentName

FROM Student s

JOIN Department d 
ON s.DepartmentID = d.DepartmentID

WHERE d.DepartmentName = 'Data Science';


•	Purpose: Courses Taught by Instructor



SELECT c.CourseName, i.InstructorName, i.InstructorLastName

FROM Course c

JOIN Instructor i ON c.InstructorID = i.InstructorID

WHERE i.InstructorName = 'Martin';



•	Purpose: Average Grades per Course 



SELECT c.CourseName, AVG(e.Marks) AS AverageMarks

FROM Enrollment e

JOIN Course c ON e.CourseID = c.CourseID

GROUP BY c.CourseName;


•	Purpose: Students Enrolled in Multiple Semesters 



SELECT s.StudentName, s.StudentLastName, COUNT(DISTINCT e.SemesterID) AS Semesters

FROM Student s

JOIN Enrollment e 
ON s.StudentID = e.StudentID

GROUP BY s.StudentID

HAVING COUNT(DISTINCT e.SemesterID) = 1;





NOTE: All Queries have been tested and images of the output have been attached in the report. 







