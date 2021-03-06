USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name desc, first_name desc;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no desc;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

# Employees whose last name starts with AND ends with 'e'
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Names'
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT DATEDIFF(CURDATE(), hire_date) AS 'Days With Company'
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
ORDER BY hire_date;

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT COUNT(*)
FROM employees
WHERE birth_date LIKE '%-08-07'
ORDER BY birth_date;
