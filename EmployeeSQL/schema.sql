CREATE TABLE employees (
	emp_no VARCHAR(30) NOT NULL,
	emp_title VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	ID int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries, 
	FOREIGN KEY (emp_no) REFERENCES dept_emp, 
	FOREIGN KEY (emp_no) REFERENCES dept_manager (emp_no),
	PRIMARY KEY (id)
	);
CREATE TABLE departments (
	dept_no VARCHAR (30) NOT NULL,
	dept_name VARCHAR (30) NOT NULL,
	ID int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES dept_manager, 
	FOREIGN KEY (dept_no) REFERENCES dept_emp,
	PRIMARY KEY (ID)
	);
CREATE TABLE dept_emp(
	emp_no VARCHAR(30) NOT NULL,
	dept_no VARCHAR (30),
	ID int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES dept_manager, 
	FOREIGN KEY (dept_no) REFERENCES dept_emp, 
	FOREIGN KEY (emp_no) REFERENCES employees,
	PRIMARY KEY (id))
	);
CREATE TABLE dept_manager(
	dept_no VARCHAR (30) NOT NULL,
	emp_no VARCHAR (30) NOT NULL,
	ID int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES dept_manager, 
	FOREIGN KEY (dept_no) REFERENCES dept_emp, 
	FOREIGN KEY (emp_no) REFERENCES employees,
	PRIMARY KEY (id))
	);
CREATE TABLE salaries(
	emp_no (VARCHAR (30) NOT NULL,
	salary VARCHAR (30) NOT NULL,
	ID int NOT NULL,
	PRIMARY KEY (id))
	;)
CREATE TABLE titles(
	title_id VARCHAR (30) NOT NULL,
	title VARCHAR (30) NOT NULL,
	ID int NOT NULL,
	PRIMARY KEY (id))
	;)