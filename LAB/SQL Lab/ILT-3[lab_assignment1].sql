-- Lab 1: Database Schema: Consider a simple database with one tables: BankAccount

CREATE TABLE BankAccount (
	account_id INT PRIMARY KEY,
    account_holder_name VARCHAR(30),
    account_balance INT
);
-- Task 1: Insert data into the BankAccount table
INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
VALUES
    (101, 'John Doe', 50000),
    (102, 'Jane Smith', 30000),
    (103, 'Alice Johnson', 75000),
    (104, 'Bob Brown', 20000),
    (105, 'Charlie Davis', 45000);
-- Task 2: Retrieve the account_holder_name and account_balance of all account holders
SELECT account_holder_name, account_balance FROM BankAccount;
-- Task 3: Retrieve account_holder_name and account_balance where account_balance is more than 30,000
SELECT account_holder_name, account_balance FROM BankAccount
WHERE account_balance > 30000;
-- Task 4: Update the account_balance of the account holder with ID 101
UPDATE BankAccount
SET account_balance = 55000
WHERE account_id = 101;
-- Task: Retrieve students from the student table in ascending order by last_name
SELECT * FROM student
ORDER BY LastName ASC;

-- Task: Add Salary and department columns to Employee table
ALTER TABLE Employee
ADD COLUMN Salary DECIMAL(10, 2),
ADD COLUMN department VARCHAR(50);
TRUNCATE Employee;
-- Insert data into Employee table (example data)
INSERT INTO Employee (emp_id, first_name, last_name, age, email, Salary, department)
VALUES
    (1, 'John', 'Doe', 32, 'john.doe@example.com', 60000, 'IT'),
    (2, 'Jane', 'Smith', 28, 'jane.smith@example.com', 45000, 'HR'),
    (3, 'Michael', 'Johnson', 35, 'michael.johnson@example.com', 55000, 'IT'),
    (4, 'Emily', 'Brown', 30, 'emily.brown@example.com', 70000, 'Finance');

-- Task: Retrieve employees with a salary greater than 50,000 and in the IT department
SELECT * FROM Employee
WHERE Salary > 50000 AND department = 'IT';
