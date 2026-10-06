Student(
    StudentID,
    StudentName,
    CourseName,
    FacultyName,
    DepartmentName
)

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    FacultyID INT,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
DEPARTMENT
DepartmentID (PK)
DepartmentName

       1
       |
       | N
FACULTY
FacultyID (PK)
FacultyName
DepartmentID (FK)

       1
       |
       | N
COURSE
CourseID (PK)
CourseName
FacultyID (FK)

STUDENT
StudentID (PK)
StudentName
DepartmentID (FK)

       N
       |
       |
       N
ENROLLMENT
StudentID (FK)
CourseID (FK)
