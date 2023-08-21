USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name like 'E%'
AND last_name like '%e';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
  AND day(birth_date) = 25;


SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC, birth_date DESC;


SELECT *, DATEDIFF(NOW(), hire_date)
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

