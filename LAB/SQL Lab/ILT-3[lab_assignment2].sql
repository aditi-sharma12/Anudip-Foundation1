-- Task: Count the number of students based on their gender
SELECT gender, COUNT(*) AS number_of_students
FROM Student
GROUP BY gender;

-- Database Schema
-- Use our database Ecommerce to complete the task
USE Ecommerce;
-- Task: Retrieve products in the 'Electronics' category or with a price less than 70,000
SELECT * FROM product
WHERE category = 'Electronics' OR price < 70000;

