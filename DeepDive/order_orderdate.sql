/*
* Exercise
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT COUNT(orderid) FROM orders WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';