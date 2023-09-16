-- 1. List the employee number, last name, first name, sex, salary of each employee 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON 
e.emp_no = s.emp_no
ORDER BY emp_no ASC;

-- 2. List the first name, last name and hire date for the employees who were hired in 1986 
SELECT e.last_name, e.first_name, e.hire_date 
FROM employees AS e
WHERE hire_date LIKE '%1986'
ORDER BY hire_date ASC; 

-- 3. List the manager of each department along with their department number, department name, employee number, last name and first name 
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM departments AS d
INNER JOIN department_manager AS dm ON 
d.dept_no = dm.dept_no
INNER JOIN employees AS e ON 
dm.emp_no = e.emp_no
ORDER BY dept_no ASC;

-- 4. List the department number for each employee along with that employee's employee number, last name, first name, and department name 
SELECT d.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN department_employee AS de ON 
d.dept_no = de.dept_no
INNER JOIN employees AS e ON 
de.emp_no = e.emp_no
ORDER BY dept_no ASC; 

--5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT e.first_name, e.last_name, e.sex 
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name ASC;

--6. List each employee in the Sales department, including their employee number, last name and first name 
SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
WHERE emp_no IN
	-- Find emp_no from dept_no from sales
	((SELECT emp_no
	FROM department_employee
	WHERE dept_no IN
	  	-- Find dept_no from departments. 
		(SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales')))
ORDER BY emp_no ASC;

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_employee ON
employees.emp_no = department_employee.emp_no
INNER JOIN departments ON
department_employee.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development')
ORDER BY emp_no ASC;

-- 8. List the frequency counts, in descending order, of all the employees last names. 
SELECT last_name, COUNT(last_name) as last_name_count 
FROM employees
GROUP BY last_name 
ORDER BY last_name_count DESC;
