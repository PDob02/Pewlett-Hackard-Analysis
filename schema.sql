-- -- Creating tables for PH-EmployeeDB
-- -- CREATE TABLE employees (
-- -- 	 emp_no INT NOT NULL,
-- --      birth_date DATE NOT NULL,
-- --      first_name VARCHAR NOT NULL,
-- --      last_name VARCHAR NOT NULL,
-- --      gender VARCHAR NOT NULL,
-- --      hire_date DATE NOT NULL,
-- --      PRIMARY KEY (emp_no)
-- -- );

-- -- CREATE TABLE dept_manager (
-- -- dept_no VARCHAR(4) NOT NULL,
-- --     emp_no INT NOT NULL,
-- --     from_date DATE NOT NULL,
-- --     to_date DATE NOT NULL,
-- -- FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- -- FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
-- --     PRIMARY KEY (emp_no, dept_no)
-- -- );

-- -- CREATE TABLE salaries (
-- --   emp_no INT NOT NULL,
-- --   salary INT NOT NULL,
-- --   from_date DATE NOT NULL,
-- --   to_date DATE NOT NULL,
-- --   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- --   PRIMARY KEY (emp_no)
-- -- );
-- SELECT * FROM departments;

-- CREATE TABLE dept_emp(
-- -- dept_no VARCHAR(4) NOT NULL,
-- -- 	to_date DATE NOT NULL,
-- -- 	from_date DATE NOT NULL,
-- -- 	PRIMARY KEY (emp_no, dept_no)
-- -- );

-- CREATE TABLE dept_emp(
-- dept_no VARCHAR(4) NOT NULL,
--     emp_no INT NOT NULL,
--     from_date DATE NOT NULL,
--     to_date DATE NOT NULL,
-- FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--     PRIMARY KEY (emp_no, dept_no)
-- );

-- Creating tables for PH-EmployeeDB
-- CREATE TABLE departments (
--      dept_no VARCHAR(4) NOT NULL,
--      dept_name VARCHAR(40) NOT NULL,
--      PRIMARY KEY (dept_no),
--      UNIQUE (dept_name)
-- );
-- -- SELECT * from departments;
-- SELECT * from dept_emp;

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
-- SELECT * from dept_emp;
-- SELECT * from dept_manager;
-- SELECT * from dept_emp; did not complete properly
-- SELECT * from dept_manager; did not complete properly
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