-- Exercises
/*
* Exercise 1
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT * FROM employees;
SELECT * FROM employees WHERE birth_date < now() - INTERVAL '61 years';
-- A second Option
SELECT AGE(birth_date), * FROM employees 
WHERE ( EXTRACT ( YEAR FROM AGE(birth_date))) > 60 ;

/*
* Exercise 2
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT COUNT(emp_no) FROM employees WHERE EXTRACT(MONTH FROM hire_date) = '2';

/*
* Exercise 3
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT count(emp_no) FROM employees WHERE EXTRACT(MONTH FROM birth_date) = '11';

/*
* Exercise 4
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT MAX(AGE(birth_date)) FROM employees;