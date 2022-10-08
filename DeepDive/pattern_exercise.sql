-- FInd the employees whose first name starts with G and ends with r
SELECT * FROM employees
WHERE first_name LIKE 'G%r';

-- We want it to end in 'er'
SELECT * FROM employees
WHERE first_name LIKE 'G%er';

-- We want it to end in 'ger'
SELECT * FROM employees
WHERE first_name LIKE 'G%ger';

-- Dont pay any attention to upper-lower case
SELECT * FROM employees
WHERE first_name ILIKE 'g%ger';

/*
* Question 1
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
*/
SELECT emp_no, first_name, EXTRACT (YEAR FROM AGE(birth_date)) AS "age" FROM employees
WHERE first_name ILIKE 'M%';

/*
* Question 2
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/
SELECT COUNT(emp_no) FROM employees WHERE first_name ILIKE 'A%R';


