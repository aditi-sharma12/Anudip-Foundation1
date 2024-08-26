-- Task 1: Retrieve all enrollments and associated student data using RIGHT OUTER JOIN
-- This will include students who are not enrolled in any courses.

SELECT Enrollment.EnrollmentID, Enrollment.CourseID, Student.StudentID, Student.FirstName, Student.LastName
FROM Enrollment
RIGHT OUTER JOIN Student ON Enrollment.StudentID = Student.StudentID;

-- Task 2: Retrieve all student data and their associated enrollments using LEFT JOIN
-- This will include students who may not have any enrollments.
SELECT Student.StudentID, Student.FirstName, Student.email, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Student
LEFT JOIN Enrollment ON Student.StudentID = Enrollment.StudentID;

-- Task 1: Retrieve all students and their enrollment details using FULL OUTER JOIN
-- This will include students without enrollments and enrollments without students.
-- Task 1: Retrieve all students and their enrollment details using a combination of LEFT JOIN and RIGHT JOIN to mimic FULL OUTER JOIN
SELECT Student.StudentID, Student.FirstName, Student.email, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Student
LEFT JOIN Enrollment ON Student.StudentID = Enrollment.StudentID
UNION
SELECT Student.StudentID, Student.FirstName, Student.email, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Enrollment
RIGHT JOIN Student ON Student.StudentID = Enrollment.StudentID;

-- Task 2: Retrieve data using NATURAL JOIN to match student IDs in both Student and Enrollment tables
-- This will only include students who have matching enrollments.
SELECT Student.StudentID, Student.FirstName, Student.email, Enrollment.EnrollmentID, Enrollment.CourseID
FROM Student
NATURAL JOIN Enrollment;

-- ChatGPT Exercise: SQL Query Generation
-- Scenario 1: INNER JOIN - Employees and Departments
-- ChatGPT Exercise: Retrieve a list of employees along with their department names using INNER JOIN
SELECT employees.EmployeeName, departments.DepartmentName
FROM employees
INNER JOIN departments ON employees.DepartmentID = departments.DepartmentID;

-- Scenario 2: LEFT JOIN - Employees with Their Managers
-- ChatGPT Exercise: Retrieve each employee along with their manager using LEFT JOIN
-- This includes employees without managers.
SELECT e1.EmployeeName AS Employee, e2.EmployeeName AS Manager
FROM Employee e1
LEFT JOIN Employee e2 ON e1.ManagerID = e2.EmployeeID;