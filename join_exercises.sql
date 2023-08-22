USE employees;
SELECT *
FROM employees;
SELECT *
FROM departments;
SELECT *
FROM dept_manager;

SELECT DISTINCT title FROM titles;


SELECT d.dept_name AS department, CONCAT(e.last_name, ' ', e.first_name) AS manger
FROM employees AS e
    JOIN dept_manager AS dm
        on e.emp_no = dm.emp_no
    JOIN departments AS d
        on dm.dept_no = d.dept_no
WHERE YEAR(to_date) = 9999;


SELECT d.dept_name AS department, CONCAT(e.last_name, ' ', e.first_name) AS manger, gender
FROM employees AS e
         JOIN dept_manager AS dm
              on e.emp_no = dm.emp_no
         JOIN departments AS d
              on dm.dept_no = d.dept_no

WHERE YEAR(to_date) = 9999 AND gender = 'F';


SELECT titles.title, COUNT(*)
FROM titles
JOIN dept_emp
    on titles.emp_no = employees.dept_emp.emp_no
JOIN departments
    on departments.dept_no = employees.dept_emp.dept_no
WHERE (dept_name = 'Customer Service'
    AND YEAR(dept_emp.to_date) = 9999
    AND YEAR(titles.to_date) = 9999)
GROUP BY titles.title;

SELECT d.dept_name AS department, CONCAT(e.first_name, ' ',e.last_name) AS manger, salary
FROM employees AS e
         JOIN dept_manager AS dm
              on e.emp_no = dm.emp_no
         JOIN departments AS d
              on dm.dept_no = d.dept_no
         JOIN salaries AS s
              on e.emp_no = s.emp_no
WHERE (YEAR(s.to_date) = 9999 AND YEAR(dm.to_date) = 9999);


SELECT CONCAT(first_name, ' ', last_name) AS employees, d.dept_name AS department, CONCAT(first_name, ' ',e.last_name) AS manger
FROM employees AS e
         JOIN current_dept_emp cde
             on e.emp_no = cde.emp_no
         JOIN dept_manager AS dm
              on e.emp_no = dm.emp_no
         JOIN departments AS d
              on dm.dept_no = d.dept_no
WHERE (YEAR(cde.to_date) = 9999 AND YEAR(dm.to_date) = 9999);





