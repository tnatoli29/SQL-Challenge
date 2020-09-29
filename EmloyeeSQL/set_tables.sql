CREATE TABLE departments(
	dept_no varchar(20) PRIMARY KEY,
	dept_name varchar(30));

SELECT * FROM departments;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY, 
	emp_title_id varchar(20),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(5),
	hire_date date);
	
SELECT * FROM employees

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no varchar(20),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no));

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no varchar(20),
	emp_no INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no));

SELECT * FROM dept_manager

CREATE TABLE salaries(
	emp_no INT, 
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no));

SELECT * FROM salaries

CREATE TABLE titles( 
	title_id varchar(10),
	title varchar(30));
	
SELECT * FROM titles
