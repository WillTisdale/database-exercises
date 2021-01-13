SELECT DISTINCT title FROM titles;

# Number 2
SELECT DISTINCT last_name AS 'Last Name'
FROM employees
ORDER BY last_name desc
LIMIT 10;

# Number 3
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Names'
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date desc
LIMIT 5;

# Number 4
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Names'
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date desc
LIMIT 5 OFFSET 45;

# Page Number = (Offset + Limit) / Limit
