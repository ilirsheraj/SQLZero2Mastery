-- To get the time zone infromation
SELECT now();

SELECT to_char(CURRENT_DATE, 'dd/mm/yyy');

SELECT to_char(CURRENT_DATE, 'Ww');

-- Difference between dates
SELECT now() - '1800-01-01';

SELECT date '1800/01/01';

-- Calculate age from not to a specific date
SELECT AGE(date '1800-01-01');

-- Calculate age between two specific dates
SELECT AGE(date '1989-01-11', date '1800-01-01');
-- Same thing
SELECT AGE(date '1989/01/11', date '1800/01/01');

-- Extract the Day
SELECT EXTRACT (DAY FROM date '1989/01/11') AS DAY;
SELECT EXTRACT (MONTH FROM date '1989/01/11') AS MONTH;
SELECT EXTRACT (YEAR FROM date '1989/01/11') AS YEAR;

-- Truncate to first day of the month
SELECT DATE_TRUNC('year', date '1989/01/11');