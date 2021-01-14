# NUMBER 2
SELECT DISTINCT title
FROM titles;

# NUMBER 3 & 4
SELECT first_name, last_name
FROM employees
WHERE
    last_name LIKE 'E%'
    AND last_name LIKE '%e'
GROUP BY first_name, last_name;

# NUMBER 5 & 6
SELECT last_name, COUNT(*) AS the_count
FROM employees
WHERE
    last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY the_count;

# NUMBER 7
SELECT COUNT(*), gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
GROUP BY gender;

