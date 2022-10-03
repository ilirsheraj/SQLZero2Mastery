-- Question 1: How many official languages are there?

SELECT count(countrycode) FROM "public"."countrylanguage" WHERE isofficial = TRUE;

-- Question 2: What is the average life expectancy in the world?

SELECT avg(lifeexpectancy) FROM "public"."country";

-- Question 3: What is the average population for cities in the netherlands?
SELECT avg(population) FROM "public"."city" WHERE countrycode = 'NLD';