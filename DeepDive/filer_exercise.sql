-- Using the Store databases answer the following questions

/* Question 1: How many female customers do we have from Oregon (OR)) and NY?
-- My version
Instructor's version is the same as mine :) 
*/
SELECT COUNT(customerid) FROM customers
WHERE (state = 'OR' OR state = 'NY') AND gender = 'F';
