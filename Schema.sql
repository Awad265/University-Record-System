
CREATE DATABASE UniversityRecordSystem;
USE UniversityRecordSystem;


CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL UNIQUE,
    BuildingID VARCHAR(1) NOT NULL
);


CREATE TABLE Semester (
    SemesterID INT AUTO_INCREMENT PRIMARY KEY,
    SemesterName VARCHAR(30) NOT NULL,
    EducationalYear VARCHAR(10) NOT NULL,
    SemesterStart DATE NOT NULL,
    SemesterEnd DATE NOT NULL
);


CREATE TABLE Instructor (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    InstructorName VARCHAR(50) NOT NULL,
    InstructorLastName VARCHAR(50),
    InstructorEmail VARCHAR(80) NOT NULL UNIQUE,
    DepartmentID INT NOT NULL,

    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    StudentLastName VARCHAR(50),
    StudentEmail VARCHAR(80) NOT NULL UNIQUE,
    BirthDate DATE NOT NULL,
    DepartmentID INT NOT NULL,

    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE Course (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT,
    DepartmentID INT NOT NULL,
    InstructorID INT NOT NULL,

    CHECK (Credits BETWEEN 0 AND 10),

    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    FOREIGN KEY (InstructorID)
        REFERENCES Instructor(InstructorID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE Enrollment (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,

    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    SemesterID INT NOT NULL,

    EnrollmentDate DATE NOT NULL,
    Marks INT,

    FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (SemesterID)
        REFERENCES Semester(SemesterID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    UNIQUE(StudentID, CourseID, SemesterID)
);


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














