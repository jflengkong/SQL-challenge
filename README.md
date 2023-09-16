# SQL-challenge
## Week 9- UWA Data Analytics SQL Challenge 

This week we were introduced to the use of PostgreSQL with the addition of pgAdmin. Therefore all schemata was completed through pgAdmin application.

# Background 
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modelling, data engineering, and data analysis, respectively. Below were the 6 (six) CSV documnets provided with the following information: 

1. [`departments.csv`](https://github.com/jflengkong/SQL-challenge/blob/main/Data/departments.csv) -  `dept_no`  `dept_name`
2. [`department_employee.csv`](https://github.com/jflengkong/SQL-challenge/blob/main/Data/dept_emp.csv) - `emp_no` `dept_no`
4. [`department_manager.csv`](https://github.com/jflengkong/SQL-challenge/blob/main/Data/dept_manager.csv) - `dept_no` `emp_no` 
5. [`employees.csv`](https://github.com/jflengkong/SQL-challenge/blob/main/Data/employees.csv) - `emp_no`, `emp_title` `birth_date` `first_name` `last_name` `sex` `hire_date`
6. [`salaries.csv`](https://github.com/jflengkong/SQL-challenge/blob/main/Data/salaries.csv) - `emp_no` `salary`
7. [`titles.csv`](https://github.com/jflengkong/SQL-challenge/blob/main/Data/titles.csv) - `title_id` `title` 

# Schematas & ERD 
These were the completed table creation code and queries completed through pgAdmin. 
1. [`table_schemata`](https://github.com/jflengkong/SQL-challenge/blob/main/Schematas/table_schemata.sql) - Format and create tables for query 
2. [`queries`](https://github.com/jflengkong/SQL-challenge/blob/main/Schematas/queries.sql) - SQL queries completed from information 
3. [`ERD`](https://github.com/jflengkong/SQL-challenge/blob/main/ERD.png)image of Entity-Relationship Diagram 

# Data Modelling
The CSV files were inspected and an ERD of the tables was created to give a visual overview of primary and foreign keys. 
![ERD](https://github.com/jflengkong/SQL-challenge/blob/main/ERD.png) 

### Table relationships 
- [`titles`] and [`employees`] have a one-to-many relationship. 
- [`departments`] and [`department_manager`] have a one-to-one relationsihp. 
- [`departments`] and [`department_employee`] have a one-to-one relationship.
- [`employees`] and [`salaries`] have a one-to-many relationship.

# Data Engineering 
Steps completed: 
1. Identify **PRIMARY KEY** and **FOREIGN KEY**
2. Create a **COMPOSITE KEY** where required
3. Create the tables in order to handle the foreign keys
  [`titles`] [`employees`] [`departments`] [`department_manager`] [`department_employee`] [`salaries`]

# Data Analysis Questions
The following Questions were answered by the use of the [`queries`](https://github.com/jflengkong/SQL-challenge/blob/main/Schematas/queries.sql) and outputs in [`output`](https://github.com/jflengkong/SQL-challenge/tree/main/Ouput).

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

# References 
- [1] QuickDBD https://app.quickdatabasediagrams.com/#/
- [2] SQL Data Types https://www.w3schools.com/sql/sql_datatypes.asp 
