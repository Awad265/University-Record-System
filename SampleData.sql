INSERT INTO Department (DepartmentName, BuildingID)
VALUES
('Data Science', 'A'),
('Math', 'B'),
('Physics', 'A'),
('Engineering', 'C');

INSERT INTO Semester
(SemesterName, EducationalYear, SemesterStart, SemesterEnd)
VALUES
('Spring', '2026', '2026-01-15', '2026-05-15'),
('Summer', '2026', '2026-06-01', '2026-08-31'),
('Fall', '2026', '2026-09-01', '2026-12-20');


INSERT INTO Instructor
(InstructorName, InstructorLastName, InstructorEmail, DepartmentID)
VALUES
('Ali Reza', 'Mahmoud', 'Alireza@university.umb', 1),
('Martin', 'NULL', 'Martin@university.umb', 2);


INSERT INTO Student
(StudentName, StudentLastName, StudentEmail, BirthDate, DepartmentID)
VALUES
('Ahmad', 'Ali', 'ahmadali@student.umb', '2002-03-14', 1),
('bilal', NULL, 'bilal@student.umb', '2000-05-11', 1);


INSERT INTO Course
(CourseName, Credits, DepartmentID, InstructorID)
VALUES
('Programming', 10, 1, 1),
('Statistics', 10, 2, 2),
('Energy Theory', 5, 2, 2);


INSERT INTO Enrollment
(StudentID, CourseID, SemesterID, EnrollmentDate, Marks)
VALUES
(1, 1, 1, '2026-01-01', 85),
(2, 2, 2, '2026-09-06', 92);














