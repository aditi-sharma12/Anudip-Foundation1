-- Task 1: Retrieve information about students born after June 16, 2009
SELECT * FROM Student
WHERE DateOfBirth > '2009-06-16';

-- Task 2: Retrieve records of students whose first names start with either 'A' or 'J'
SELECT * FROM Student
WHERE FirstName LIKE 'A%' OR FirstName LIKE 'J%';

-- Task 3: Retrieve records of students whose first name is not 'Alice' and email contains '@example.com'
SELECT * FROM Student
WHERE FirstName != 'Alice' AND email LIKE '%@example.com';

-- Task: Retrieve student ID, first name, last name, and enrollment details using an INNER JOIN
SELECT Student.StudentID, Student.FirstName, Student.LastName, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Student
INNER JOIN Enrollment ON Student.StudentID = Enrollment.StudentID;
