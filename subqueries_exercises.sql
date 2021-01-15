# Employees with same hire dat as emp 101010
SELECT *
FROM employees
WHERE birth_date in (
    SELECT birth_date
    FROM employees
    WHERE emp_no = 101010
    )
ORDER BY emp_no;

# All titles held by employees named 'Aamod' FROM SUB-QUERY
SELECT title
FROM (
     SELECT t.title
    FROM titles t
    JOIN employees e on t.emp_no = e.emp_no
    WHERE e.first_name = 'Aamod'
         ) sub;

# All titles held by employees named 'Aamod' WHERE SUB-QUERY
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# Current Dept Managers that are Female
SELECT first_name, last_name
FROM employees
WHERE emp_no in (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
          )
AND gender = 'F';

# Bonus 1 - Departments that Currently have Female Managers
SELECT dept_name
FROM departments
WHERE dept_no in (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > NOW()
    AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    );

#Bonus 2 - Name of employee with highest salary
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary in (
        SELECT MAX(salary)
        FROM salaries)
    );

