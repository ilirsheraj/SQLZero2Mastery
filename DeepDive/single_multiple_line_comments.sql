
/* 
filter on first name AND last name to limit the amount of data returned 
and focus the filtering on a single person
*/

-- Single-line filter

SELECT first_name, last_name FROM employees 
WHERE first_name = 'Mayumi' AND last_name = 'Schueller';

-- Get all Female Employees
SELECT first_name, last_name FROM employees WHERE gender = 'F';

-- Filter by multiple criteria
SELECT first_name, last_name, hire_date FROM employees WHERE first_name = 'Georgi'
AND last_name = 'Facello' AND hire_date = '1986-06-26' OR first_name = 'Bezalel' 
AND last_name = 'Simmel';

/*
The previous query is different from the next one because of the AND and OR operators
This is because of ORDER OF OPERATIONS (SQL will check certain things according to the way 
we structure the filter)
AND chains the next command to previous chain of events
OR forgets everything until then and starts looking for something completely different
It creates a sort of new filter
*/
SELECT first_name, last_name, hire_date FROM employees WHERE first_name = 'Georgi'
OR first_name = 'Bezalel' AND last_name = 'Simmel' AND last_name = 'Simmel'
AND hire_date = '1986-06-26';

-- We can use paranthesis to give precedents to commands we want
SELECT first_name, last_name, hire_date FROM employees 
WHERE (first_name = 'Georgi'AND last_name = 'Facello' AND hire_date = '1986-06-26') 
OR (first_name = 'Bezalel' AND last_name = 'Simmel');