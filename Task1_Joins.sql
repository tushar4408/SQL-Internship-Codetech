-- Task 1: SQL Joins Practice
-- Author: Tushar Jha
-- Date: June 2025

-- Creating Employees table
CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

INSERT INTO Employees VALUES
(1, 'Tushar', 101),
(2, 'Anjali', 102),
(3, 'Rohit', NULL),
(4, 'Simran', 104);

-- Creating Departments table
CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO Departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');

-- INNER JOIN: Only matching dept_id
SELECT emp_name, dept_name
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id;

-- LEFT JOIN: All employees, even without matching department
SELECT emp_name, dept_name
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id;

-- RIGHT JOIN: All departments, even if no employee is in it
SELECT emp_name, dept_name
FROM Employees
RIGHT JOIN Departments
ON Employees.dept_id = Departments.dept_id;

-- FULL OUTER JOIN: Combine results from left and right joins
-- (MySQL doesn't support FULL JOIN, so using UNION)
SELECT emp_name, dept_name
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id

UNION

SELECT emp_name, dept_name
FROM Employees
RIGHT JOIN Departments
ON Employees.dept_id = Departments.dept_id;
