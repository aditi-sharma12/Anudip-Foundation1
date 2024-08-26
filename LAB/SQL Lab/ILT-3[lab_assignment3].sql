-- Task: Calculate the average salary of employees in each department
SELECT department, AVG(Salary) AS average_salary
FROM Employee
GROUP BY department;

-- CHATGPT EXERSIZE
-- Scenario 1: Retrieve employees in the Sales department with a salary greater than 50,000
SELECT * FROM Employee
WHERE department = 'Sales' AND Salary > 50000;

-- Scenario 2: Delete an employee's record after resignation
DELETE FROM Employee
WHERE emp_id = 123; -- Replace 123 with the actual employee ID

-- Scenario 3: Delete all pending orders placed before '2022-01-01'
DELETE FROM orders
WHERE order_date < '2022-01-01' AND status = 'Pending';

-- Scenario 4: Delete all products from the 'Discontinued' category
DELETE FROM product
WHERE category = 'Discontinued';

-- Scenario 5: Add 1000 to the bonus for all employees in the Sales department
UPDATE Employee
SET bonus = bonus + 1000
WHERE department = 'Sales';

