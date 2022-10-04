-- How Many Customers aren't 55

SELECT count(customerid) FROM customers WHERE NOT age = '55';

-- Add another condition
SELECT count(customerid) FROM customers 
WHERE (NOT age = '55' AND NOT age = 54);
