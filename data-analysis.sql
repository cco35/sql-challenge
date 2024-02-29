-- 1. List the employee number, last name, first name, 
-- sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;

-- 2. List the first name, last name, and hire date
-- for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986

-- 3. List the manager of each department along with their
-- department number, department name, employee number, 
-- last name, and first name
SELECT m.dept_no, d.dept_name, e.first_name, e.last_name, e.emp_no
FROM dept_manager m
JOIN departments d
ON m.dept_no = d.dept_no
JOIN employees e on m.emp_no = e.emp_no

-- 4. List the department number for each employee along with
-- that employee’s employee number, last name, first name, 
-- and department name

SELECT DISTINCT d.dept_name, e.first_name, e.last_name, e.emp_no
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
ORDER BY e.emp_no

-- 5. List first name, last name, and sex of each employee 
-- whose first name is Hercules and whose last name begins
-- with the letter B 

SELECT DISTINCT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- 6. List each employee in the Sales department, including 
-- their employee number, last name, and first name 

SELECT DISTINCT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

-- 7. List each employee in the Sales and Development 
-- departments, including their employee number, last name,
-- first name, and department name

SELECT DISTINCT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER by e.emp_no

-- 8. List the frequency counts, in descending order, of all
-- the employee last names

SELECT last_name, COUNT(*) AS "No of Employees"
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC