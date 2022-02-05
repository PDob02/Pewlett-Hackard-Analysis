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
