-- Drop tables if they exist one by one
DROP TABLE IF EXISTS departments, department_employee, department_manager, employees, salaries, titles;

-- Create a titles table 
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

-- Create an employees table 
CREATE TABLE employees(
    emp_no INT PRIMARY KEY, 
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL, 
    hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create a department table 
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);


-- Create a department_manager table
CREATE TABLE department_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Create a department_employee table 
CREATE TABLE department_employee (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create a salaries table 
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY, 
	salary INT NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);