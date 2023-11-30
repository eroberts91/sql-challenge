# sql-challenge
module 9 challenge: sql coding challenge


Code for https://app.quickdatabasediagrams.com/#/d/DhVSlV

departments
-
dept_no VARCHAR PK
dept_name VARCHAR

dept_employee
-
emp_no INT FK >- employees.emp_no
dept_no VARCHAR FK >- departments.dept_no

dept_manager
-
dept_no VARCHAR FK >- departments.dept_no
emp_no INT FK >- employees.emp_no

employees
-
emp_no INT PK
title_id VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

salaries
-
emp_no FK >- employees.emp_no
salary INT

titles
-
title_id VARCHAR PK
title VARCHAR
