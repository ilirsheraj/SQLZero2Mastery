/*
Question 1
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Assuming a students minimum age for the class is 15, what is the average age of a student?
*/

SELECT AVG(coalesce(age, 15)) from "Student";

/*
Question 2
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Replace all empty first or last names with a default?
*/

SELECT id, age, coalesce(name, 'commonname'), coalesce(lastname, 'commonlast') from "Student";
