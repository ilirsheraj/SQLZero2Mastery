
/* 
filter on first name AND last name to limit the amount of data returned 
and focus the filtering on a single person
*/

-- Single-line filter

SELECT first_name, last_name FROM employees 
WHERE first_name = 'Mayumi' AND last_name = 'Schueller';