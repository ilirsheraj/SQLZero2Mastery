-- Count the number of employees

SELECT count( emp_no) FROM employees;

-- Minimum employee number
SELECT min(emp_no) FROM employees;

-- Maximum employee number
SELECT max(emp_no) FROM employees;

-- Get the highest amount of salary
SELECT max(salary) FROM salaries;

-- Get the total amount of salaries paid
SELECT sum(salary) FROM salaries;

-- Exercises
-- Question 1: What is the average salary for the company?
SELECT avg(salary) FROM salaries;

-- Question 2: What year was the youngest person born in the company?
SELECT max(birth_date) FROM employees;