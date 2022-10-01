-- Simple query commands

-- Select all employees from Emplyees databse using schemas
SELECT * FROM "public"."employees";

-- How many departments are there in the company?
SELECT * FROM "public"."departments";

-- How many times has employee 10001 had a raise
SELECT * FROM "public"."salaries";

-- Title of 10006 employee
SELECT * FROM "public"."titles";

-- Rename columns
SELECT emp_no AS "Employee #", birth_date AS "Birthday", first_name AS "FIRST NAME" FROM employees;

-- Concatenate Columns
SELECT CONCAT(emp_no, ' is a ', title) AS "Employee Title" FROM titles;

-- Concatenate frist and last named of the employee and rename the column
SELECT emp_no, concat(first_name, ' ', last_name) AS "Name Surname" FROM employees;
