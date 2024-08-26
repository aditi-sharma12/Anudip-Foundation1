USE studentmanagementsystem;
SET SQL_SAFE_UPDATES = 0;
-- Lab 1. Use the Database and table from ILT1 lab. Insert 5 records in each table and retrieve data from all tables and display.

-- Inserting records into Student table
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone)
VALUES 
(1, 'John', 'Doe', '2000-05-15', 'Male', 'john.doe@example.com', 9876543210),
(2, 'Jane', 'Smith', '1999-07-22', 'Female', 'jane.smith@example.com', 8765432109),
(3, 'Jim', 'Beam', '2001-02-11', 'Male', 'jim.beam@example.com', 7654321098),
(4, 'Sara', 'Connor', '2002-03-08', 'Female', 'sara.connor@example.com', 6543210987),
(5, 'Alex', 'Tran', '2001-09-30', 'Trans', 'alex.tran@example.com', 5432109876);

-- Inserting records into Course table
INSERT INTO Course (CourseID, CourseTitle, Credits)
VALUES 
(101, 'Mathematics', '4'),
(102, 'Physics', '3'),
(103, 'Chemistry', '4'),
(104, 'Biology', '3'),
(105, 'Computer Science', '4');

-- Inserting records into Instructor table
INSERT INTO Instructor (InstructorID, FirstName, LastName, Email)
VALUES 
(201, 'Albert', 'Einstein', 'albert.einstein@example.com'),
(202, 'Marie', 'Curie', 'marie.curie@example.com'),
(203, 'Isaac', 'Newton', 'isaac.newton@example.com'),
(204, 'Charles', 'Darwin', 'charles.darwin@example.com'),
(205, 'Alan', 'Turing', 'alan.turing@example.com');

-- Inserting records into Enrollment table
INSERT INTO Enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstructorID)
VALUES 
(301, '2024-08-01', 1, 101, 201),
(302, '2024-08-02', 2, 102, 202),
(303, '2024-08-03', 3, 103, 203),
(304, '2024-08-04', 4, 104, 204),
(305, '2024-08-05', 5, 105, 205);

-- Inserting records into Score table
INSERT INTO Score (ScoreID, CourseID, StudentID, DateOfExam, CreditObtained)
VALUES 
(401, 101, 1, '2024-07-10', 'A'),
(402, 102, 2, '2024-07-11', 'B+'),
(403, 103, 3, '2024-07-12', 'A-'),
(404, 104, 4, '2024-07-13', 'B'),
(405, 105, 5, '2024-07-14', 'A');

-- Inserting records into Feedback table
INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback)
VALUES 
(501, 1, '2024-08-10', 'Albert Einstein', 'Excellent course!'),
(502, 2, '2024-08-11', 'Marie Curie', 'Very informative.'),
(503, 3, '2024-08-12', 'Isaac Newton', 'Challenging but rewarding.'),
(504, 4, '2024-08-13', 'Charles Darwin', 'Engaging and fun.'),
(505, 5, '2024-08-14', 'Alan Turing', 'Highly recommended!');

-- Retrieve all data from Student table
SELECT * FROM Student;

-- Retrieve all data from Course table
SELECT * FROM Course;

-- Retrieve all data from Instructor table
SELECT * FROM Instructor;

-- Retrieve all data from Enrollment table
SELECT * FROM Enrollment;

-- Retrieve all data from Score table
SELECT * FROM Score;

-- Retrieve all data from Feedback table
SELECT * FROM Feedback;

-- Lab 2. For this assignment, please use the same tables created in your previous lab session.

-- Task 1:-
-- Update Student table
UPDATE Student SET Email = 'jane_smith@example.com'
WHERE FirstName = 'Jane' AND LastName = 'Smith';
-- Update Instructor table
UPDATE Instructor
SET Email = 'rogerwhite@example.com'
WHERE FirstName = 'Roger' AND LastName = 'White';
-- Task 2: Delete records from Student table where last name is Smith
-- Delete from Enrollment table first
DELETE FROM Enrollment WHERE StudentID = (SELECT StudentID FROM Student WHERE LastName = 'Smith');

-- Then delete from Student table
DELETE FROM Student WHERE LastName = 'Smith';

-- Task 3: List students whose first name starts with 'J'
SELECT * FROM Student
WHERE FirstName LIKE 'J%';

