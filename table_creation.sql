CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(30)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	title_id VARCHAR(30) references titles(title_id) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE dept_employee (
	emp_no INT,
	dept_no VARCHAR(30) references departments(dept_no) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT references employees(emp_no) NOT NULL
);

CREATE TABLE salaries (
	emp_no INT references employees(emp_no) NOT NULL,
	salary INT
);

SELECT * FROM departments;
SELECT * FROM dept_employee;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;