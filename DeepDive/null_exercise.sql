/*
Exercise 1
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/

SELECT COALESCE(address2, 'No Address')
FROM customers;

/*
Exercise 2
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT *
FROM customers
WHERE address2 IS NOT NULL;

/*
Exercise 3
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT COALESCE(lastName, 'Empty'), * FROM customers
WHERE (age IS NULL);