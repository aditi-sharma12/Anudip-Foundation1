-- Lab 1. Create a Database & Table Using MySQL Command-Line Client.
-- ● Create a database with the name StudentManagementSystem.

create database if not exists StudentManagementSystem;
use StudentManagementSystem;
-- Create a table with named Student with attributes:
-- ● StudentID (Primary Key)
-- ● FirstName
-- ● LastName
-- ● DateOfBirth
-- ● Gender
-- ● Email
-- ● Phone

create table if not exists Student(
	StudentID 		INT primary key,
    FirstName 		varchar(15),
	LastName 		varchar(20),
	DateOfBirth 	date,
	Gender 			ENUM('Male', 'Female', 'Trans'),
	Email 			varchar(40),
	Phone 			BIGINT,
    CHECK (Phone BETWEEN 1000000000 AND 9999999999)
);

-- Create a table with name Course with attributes:
-- ● CourseID (Primary Key)
-- ● CourseTitle
-- ● Credits

create table if not exists Course(
CourseID int Primary Key,
CourseTitle varchar(15),
Credits varchar(30)
);

-- Create a table with named Instructor with attributes:
-- ● InstructorID (Primary Key)
-- ● FirstName
-- ● LastName
-- ● Email

create table if not exists Instructor(
	InstructorID int Primary Key,
	FirstName 		varchar(15),
	LastName 		varchar(20),
	Email 			varchar(40)
);

-- Create a table with named Enrollment with attributes:
-- ● EnrollmentID (Primary Key)
-- ● EnrollmentDate
-- ● StudentID(Foreign key)
-- ● CourseID(Foreign Key)
-- ● InstructorID(Foreign key)

create table if not exists Enrollment(
	EnrollmentID int Primary Key,
	EnrollmentDate date, 
	StudentID INT,
    Foreign key (StudentID) references Student(StudentID),
	CourseID int,
    Foreign Key (CourseID) references Course(CourseID),
	InstructorID int,
    FOREIGN key (InstructorID) references Instructor(InstructorID)
);

-- Create a table with named Score with attributes:
-- ● ScoreID (Primary Key)
-- ● CourseID (Foreign key)
-- ● StudentID (Foreign Key)
-- ● DateOfExam
-- ● CreditObtained

create table if not exists Score(
	ScoreID int Primary Key,
	CourseID int,
    Foreign Key (CourseID) references Course(CourseID),
    StudentID INT,
    Foreign key (StudentID) references Student(StudentID),
	DateOfExam date,
	CreditObtained varchar(30)
);

-- Create a table with named Feedback with attributes:
-- ● FeedbackID (Primary Key)
-- ● StudentID (Foreign key)
-- ● Date
-- ● InstructorName
-- ● Feedback

create table if not exists Feedback(
	FeedbackID int Primary Key,
	StudentID INT,
    Foreign key (StudentID) references Student(StudentID),
	Date date,
	InstructorName varchar(30),
	Feedback varchar(40)
); 

drop database StudentManagementSystem;