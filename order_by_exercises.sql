USE employees;
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY first_name ASC;

SELECT first_name, last_name
FROM employees
ORDER BY first_name DESC, last_name ASC;

SELECT last_name, first_name
FROM employees
ORDER BY last_name DESC, first_name DESC;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no ASC;

