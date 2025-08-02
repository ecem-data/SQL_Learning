-- List all employees
SELECT * FROM employees;

-- Display employee names and salaries, sorted by salary ascending
SELECT first_name, last_name, salary FROM employees ORDER BY salary ASC;

-- Show all unique department IDs
SELECT DISTINCT department_id FROM employees;

-- Retrieve employees who work in department 90
SELECT employee_id, first_name, last_name, job_id FROM employees WHERE department_id = 90;

-- Retrieve employees with a salary greater than 10,000
SELECT first_name, last_name, salary FROM employees WHERE salary > 10000;

-- Find average salary by job title
SELECT job_id, ROUND(AVG(salary), 2) AS avg_salary FROM employees GROUP BY job_id;

-- Count employees per department
SELECT department_id, COUNT(*) AS num_employees FROM employees GROUP BY department_id;

-- Find max and min salaries per department
SELECT department_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employees GROUP BY department_id;

-- Find employees with email addresses ending in '.com'
SELECT first_name, last_name, email FROM employees WHERE email LIKE '%.com';

-- List employees with NULL commission values
SELECT first_name, last_name, commission_pct FROM employees WHERE commission_pct IS NULL;
