-- Creating tables for PH-EmployeeDB
-- CREATE TABLE departments (
--      dept_no VARCHAR(4) NOT NULL,
--      dept_name VARCHAR(40) NOT NULL,
--      PRIMARY KEY (dept_no),
--      UNIQUE (dept_name)
-- );
-- -- SELECT * from departments;
-- SELECT * from dept_emp;

-- CREATE TABLE dept_emp (
-- dept_no VARCHAR NOT NULL,
--     emp_no INT NOT NULL,
--     from_date DATE NOT NULL,
--     to_date DATE NOT NULL,
-- FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--     PRIMARY KEY (emp_no, dept_no)
-- );
-- SELECT * from dept_emp; did not complete properly
-- SELECT * from dept_manager;
-- SELECT * from employees;
-- SELECT * from salaries;
-- SELECT * from titles; did not complete properly


-- CREATE TABLE dept_emp (
-- dept_no VARCHAR NOT NULL,
-- emp_no INT NOT NULL,
-- from_date DATE NOT NULL,
-- to_date DATE NOT NULL,
-- FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- FOREIGN KEY (dept_no) REFERENCES departments (dept_no));
-- -- -- SELECT * from dept_emp;

-- select * from dept_emp;

-- CREATE TABLE dept_emp (
--  	dept_no VARCHAR NOT NULL,
--     emp_no INT NOT NULL,
--     from_date DATE NOT NULL,
--     to_date DATE NOT NULL,
-- 	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
-- 	PRIMARY KEY (dept_no, emp_no)
-- );

-- DROP TABLE dept_emp CASCADE;

-- select * from 

-- CREATE TABLE titles (
-- 	emp_no INT NOT NULL,
-- 	title VARCHAR NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE NOT NULL,
-- FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- PRIMARY KEY (emp_no, title)
-- );

--select * from titles

-- SELECT * from dept_emp; did not complete properly
-- SELECT * from dept_manager;
-- SELECT * from employees;
-- SELECT * from salaries;
-- SELECT * from titles; did not complete properly

-- select * from titles
-- select * from departments

-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';


-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1953-12-31';


-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1954-12-31';


-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
-- SELECT first_name, last_name
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
-- SELECT COUNT(first_name)
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT first_name, last_name
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT * FROM retirement_info;

-- DROP TABLE retirement_info;

-- -- Create new table for retiring employees
-- SELECT emp_no, first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- -- Check the table
-- SELECT * FROM retirement_info;

-- SELECT emp_no, first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- -- Check the table
-- SELECT * FROM retirement_info;

-- Joining retirement_info and dept_emp tables
-- SELECT retirement_info.emp_no,
--     retirement_info.first_name,
-- retirement_info.last_name,
--     dept_emp.to_date
-- FROM retirement_info
-- LEFT JOIN dept_emp
-- ON retirement_info.emp_no = dept_emp.emp_no;

-- SELECT retirement_info.emp_no,
--     retirement_info.first_name,
-- retirement_info.last_name,
--     dept_emp.to_date
-- FROM retirement_info
-- LEFT JOIN dept_emp
-- ON retirement_info.emp_no = dept_emp.emp_no;

-- SELECT * from dept_emp; did not complete properly
-- SELECT * from dept_manager;
-- SELECT * from employees;
-- SELECT * from salaries;
-- SELECT * from titles; did not complete properly

-- select * from titles
-- select * from departments

-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';


-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1953-12-31';


-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1954-12-31';


-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
-- SELECT first_name, last_name
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
-- SELECT first_name, last_name
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
-- SELECT COUNT(first_name)
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT first_name, last_name
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT * FROM retirement_info;

-- DROP TABLE retirement_info;

-- Create new table for retiring employees
-- SELECT emp_no, first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- -- Check the table
-- SELECT * FROM retirement_info;
-- Joining departments and dept_manager tables
-- SELECT departments.dept_name,
--      dept_manager.emp_no,
--      dept_manager.from_date,
--      dept_manager.to_date
-- FROM departments
-- INNER JOIN dept_manager
-- ON departments.dept_no = dept_manager.dept_no;

-- Joining retirement_info and dept_emp tables
-- SELECT retirement_info.emp_no,
--     retirement_info.first_name,
-- retirement_info.last_name,
--     dept_emp.to_date
-- FROM retirement_info
-- LEFT JOIN dept_emp
-- ON retirement_info.emp_no = dept_emp.emp_no;

-- Retirement eligibility
-- SELECT first_name, last_name
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- -- CREATE TABLE dept_emp (
-- -- 	emp_no INT NOT NULL,
-- -- 	dept_no VARCHAR NOT NULL,
-- -- 	from_date DATE NOT NULL,
-- -- 	to_date DATE NOT NULL,
-- -- 	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- --  	PRIMARY KEY (emp_no)
-- -- );
-- select * from dept_emp
 
-- DROP TABLE dept_emp CASCADE;
-- select * from titles

-- CREATE TABLE titles (
-- 	emp_no INT NOT NULL,
--  	title VARCHAR NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE NOT NULL,
-- 	PRIMARY KEY (emp_no)
-- );

-- select * from titles
-- 	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- 	FOREIGN KEY (from_date) REFERENCES dept_emp (from_date),

-- CREATE TABLE dept_manager (
-- 	dept_no VARCHAR(4) NOT NULL,
-- 	emp_no INT NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE NOT NULL,
-- 	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
-- 	PRIMARY KEY (emp_no, dept_no)
-- );
-- select * from titles

-- CREATE TABLE dept_emp (
-- 	emp_no INT NOT NULL,
-- 	dept_no VARCHAR NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE NOT NULL,
-- FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
-- 	PRIMARY KEY (emp_no,dept_no)
-- );
-- select * from dept_emp
-- select * from dept_emp

-- CREATE TABLE titles (
-- 	emp_no INT NOT NULL,
-- 	title VARCHAR NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE NOT NULL,
-- FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- );

-- select * from titles
-- select * from departments

-- -- Joining departments and dept_manager tables
-- SELECT departments.dept_name,
--      dept_manager.emp_no,
--      dept_manager.from_date,
--      dept_manager.to_date
-- FROM departments
-- INNER JOIN dept_manager
-- ON departments.dept_no = dept_manager.dept_no;

-- SELECT retirement_info.emp_no,
--     retirement_info.first_name,
-- retirement_info.last_name,
--     dept_emp.to_date
-- 	FROM retirement_info
-- LEFT JOIN dept_emp
-- ON retirement_info.emp_no = dept_emp.emp_no;


-- -- Joining departments and dept_manager tables
-- SELECT departments.dept_name,
--      dept_manager.emp_no,
--      dept_manager.from_date,
--      dept_manager.to_date
-- FROM departments
-- INNER JOIN dept_manager
-- ON departments.dept_no = dept_manager.dept_no;
-- SELECT d.dept_name,
--      dm.emp_no,
--      dm.from_date,
--      dm.to_date
-- FROM departments as d

-- SELECT ri.emp_no,
-- --     ri.first_name,
-- --     ri.last_name,
-- -- de.to_date
-- -- INTO current_emp
-- -- FROM retirement_info as ri
-- -- LEFT JOIN dept_emp as de
-- -- ON ri.emp_no = de.emp_no
-- -- WHERE de.to_date = ('9999-01-01');
-- select * from current_emp



-- -- Employee count by department number
-- SELECT COUNT(ce.emp_no), de.dept_no
-- FROM current_emp as ce
-- LEFT JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
-- GROUP BY de.dept_no;


-- -- Employee count by department number
-- SELECT COUNT(ce.emp_no), de.dept_no
-- FROM current_emp as ce
-- LEFT JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
-- GROUP BY de.dept_no
-- ORDER BY de.dept_no;


-- COPY (SELECT COUNT(ce.emp_no), de.dept_no
-- FROM current_emp as ce
-- LEFT JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
-- GROUP BY de.dept_no
-- ORDER BY de.dept_no)
-- TO 'E:\Class_Folder\current_emp.csv'
-- DELIMITER ',' CSV HEADER;
-- SELECT * FROM salaries
-- ORDER BY to_date DESC;


-- COPY (SELECT COUNT(ce.emp_no), de.dept_no
-- FROM current_emp as ce
-- LEFT JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
-- GROUP BY de.dept_no
-- ORDER BY de.dept_no)
-- TO 'E:\Class_Folder\current_emp.csv'
-- DELIMITER ',' CSV HEADER;
-- SELECT * FROM salaries
-- ORDER BY to_date DESC;

-- SELECT emp_no, first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT * FROM salaries
-- -- ORDER BY to_date DESC;
-- SELECT e.emp_no,
--     e.first_name,
-- e.last_name,
--     e.gender,
--     s.salary,
--     de.to_date
-- INTO emp_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- -- select * from emp_info

-- SELECT e.emp_no,
--     e.first_name,
-- e.last_name,
--     e.gender,
--     s.salary,
--     de.to_date
-- INTO emp_info
-- FROM employees as e
-- INNER JOIN salaries as s
-- ON (e.emp_no = s.emp_no)
-- INNER JOIN dept_emp as de
-- ON (e.emp_no = de.emp_no)
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--      AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
-- 	      AND (de.to_date = '9999-01-01');