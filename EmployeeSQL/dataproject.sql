ALTER TABLE titles ADD COLUMN id serial primary key;

SELECT * FROM departments;
SELECT * FROM employees;

SELECT s.emp_no, s.last_name,  s.first_name, s.sex, c.salary, s.sex, c.salary
FROM employees s
LEFT JOIN salaries c
ON s.emp_no = c.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-1-1' AND hire_date < '1987-1-1';


SELECT s.dept_no, s.dept_name, c.emp_no, j.first_name, j.last_name
FROM departments s
JOIN dept_emp c
on s.dept_no = c.dept_no
JOIN employees j
on c.emp_no = j.emp_no;


SELECT s.emp_no, s.last_name, s.first_name, c.dept_no, j.dept_name
FROM employees s
JOIN dept_emp c
on s.emp_no = c.emp_no
JOIN departments j
on c.dept_no = j.dept_no;


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT s.emp_no, s.first_name, s.last_name, c.dept_no, j.dept_name
FROM employees s
JOIN dept_emp c
on s.emp_no = c.emp_no
JOIN departments j
on c.dept_no = j.dept_no
WHERE dept_name = 'Sales';


SELECT s.emp_no, s.first_name, s.last_name, c.dept_no, j.dept_name
FROM employees s
LEFT JOIN dept_emp c
on s.emp_no = c.emp_no
LEFT JOIN departments j
on c.dept_no = j.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';


SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;



