-- Task 1: Create a table 'Person' with PersonID as the primary key
CREATE TABLE Person (
    PersonID int PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255),
    Age int
);

-- Task 2: Create a table 'Employee' with emp_id as the primary key
CREATE TABLE Employee (
    emp_id int PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    age int
);

-- Task 3: Insert data into the Person table
INSERT INTO Person (PersonID, FirstName, LastName, Age)
VALUES
    (1, 'John', 'Doe', 30),
    (2, 'Jane', 'Smith', 25),
    (3, 'Alice', 'Johnson', 28);

-- Task 4: Insert data into the Employee table
INSERT INTO Employee (emp_id, first_name, last_name, age)
VALUES
    (101, 'Michael', 'Brown', 35),
    (102, 'Emily', 'Davis', 29),
    (103, 'Robert', 'White', 40);

-- Task 5: Create a UNION of the Person and Employee tables
SELECT PersonID AS ID, FirstName, LastName, Age FROM Person
UNION
SELECT emp_id AS ID, first_name, last_name, age FROM Employee;

-- ChatGPT Exercise: Generate a SQL query to find courses where the average grade is below 'C'
SELECT Course.CourseId, Course.CourseName, AVG(Grade.Grade) AS AverageGrade
FROM Course
JOIN Grade ON Course.CourseId = Grade.CourseID
GROUP BY Course.CourseId, Course.CourseName
HAVING AVG(Grade.Grade) < 'C';
