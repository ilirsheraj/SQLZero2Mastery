/*
* Question 1
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
* Expected output: 4211 
*/
SELECT COUNT(customerid) FROM customers WHERE CAST(zip AS TEXT) LIKE '%2%';

-- Second Option
SELECT COUNT(customerid) FROM customers WHERE zip::TEXT LIKE '%2%';


/*
* Question 2
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
* Expected output: 109 
*/

SELECT COUNT(customerid) FROM customers WHERE zip::TEXT LIKE '2_1%';

-- Second Option
SELECT COUNT(customerid) FROM customers WHERE CAST(zip AS TEXT) LIKE '2_1%';

/*
* Question 3
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
* Replace null values with "No State"                                                  
*/

SELECT firstname, lastname, phone, COALESCE(state, 'No State') FROM customers
WHERE phone::TEXT LIKE '302%';

-- Option 2
SELECT firstname, lastname, phone, COALESCE(state, 'No State') FROM customers
WHERE CAST(phone AS TEXT) LIKE '302%';
