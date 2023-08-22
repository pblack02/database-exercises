USE employees;
DESCRIBE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT emp_no, hire_date, CONCAT(first_name, ' ', last_name) AS Employees
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod
SELECT t.title, COUNT(*) AS TitleCount
FROM employees e
         JOIN titles t ON e.emp_no = t.emp_no
WHERE e.first_name = 'Aamod'
GROUP BY t.title;

# Find all the current department managers that are female
SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE YEAR(to_date) = 9999
    )
AND gender = 'F';

# Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
 WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
    )
    AND YEAR(to_date) = 9999
    )
ORDER BY dept_name;

# Find the first and last name of the employee with the highest salary
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT MAX(salary)
        FROM salaries
        )
    );







