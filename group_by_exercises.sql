USE employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY last_name;


SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT DISTINCT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name  NOT LIKE '%qu%'
GROUP BY last_name;

SELECT DISTINCT COUNT(*), gender
FROM employees
WHERE (
    first_name = 'Irena'
        OR first_name ='Vidya'
        OR first_name ='Maya'
          )
GROUP BY gender;

