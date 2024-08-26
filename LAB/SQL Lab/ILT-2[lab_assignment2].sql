-- Lab 3.Database Schema: Consider a simple database with one tables: Employee

CREATE TABLE Employee(
	emp_id INT PRIMARY KEY, 
    first_name VARCHAR(20), 
    last_name VARCHAR(20), 
    age INT,
    email VARCHAR(40)
);
-- Task 1: Insert data into Employee table
INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES
    (1, 'John', 'Doe', 32, 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 28, 'jane.smith@example.com'),
    (3, 'Michael', 'Johnson', 35, 'michael.johnson@example.com');
-- Task 2: Retrieve first_name and last_name of all employees
SELECT first_name, last_name FROM Employee;
-- Task 3: Retrieve first_name, last_name, and age of employees older than 30
SELECT first_name, last_name, age FROM Employee
WHERE age > 30;
-- Task 4: Update age of employees older than 25
UPDATE Employee
SET age = age + 1
WHERE age > 25;

-- ChatGPT Exercise
-- Using ChatGPT generates SQL queries to update the Employee salary.

-- Increase the salary of all employees with the job title 'Manager' by 10%
UPDATE Employee
SET salary = salary * 1.10
WHERE job_title = 'Manager';


-- ChatGPT Exercise
-- Generating a normalized table using ChatGPT as a continuation of our earlier ChatGPT scenario

-- Person Table
CREATE TABLE Person (
    person_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(255),
    email VARCHAR(100)
);

-- Contact Table
CREATE TABLE Contact (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Relationship Table
CREATE TABLE Relationship (
    relationship_id INT PRIMARY KEY,
    person_id INT,
    contact_id INT,
    relationship_type VARCHAR(50),
    FOREIGN KEY (person_id) REFERENCES Person(person_id),
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id)
);

-- Phone Table
CREATE TABLE Phone (
    phone_id INT PRIMARY KEY,
    contact_id INT,
    phone_number VARCHAR(15),
    phone_type VARCHAR(50),
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id)
);

