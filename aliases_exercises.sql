# NUMBER 3, 4, & 5
SELECT CONCAT(emp_no, " - ", last_name, ", ", first_name) AS full_name,
       birth_date AS DOB
FROM employees
LIMIT 10;