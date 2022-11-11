SELECT 
    first_name, last_name
FROM
    employees;
    
SELECT 
    *
FROM
    employees
WHERE
	first_name = 'Elvis' AND (gender = 'M' OR gender = 'F');
    
SELECT *
FROM employees
WHERE first_name = 'Denis' OR (first_name = 'Elvis' AND gender = 'F');

SELECT *
FROM employees
WHERE first_name NOT IN ('John','Mark','Jacod');

SELECT *
FROM employees
WHERE emp_no LIKE ('1000_');






    
