--Employee_Database_challenge.sql 
SELECT emp_no, first_name,last_name
FROM employees
SELECT title, from_date, to_date
FROM titles

-- SELECT employees.emp_no, employees.first_name,employees.last_name, titles.title, titles.from_date, titles.to_date
-- -- --INTO new_table
-- FROM employees
-- LEFT JOIN titles ON employees.emp_no = titles.emp_no
-- SELECT employees.emp_no, employees.first_name,employees.last_name, titles.title, titles.from_date, titles.to_date
-- -- --INTO new_table
-- FROM employees
-- LEFT JOIN titles ON employees.emp_no = titles.emp_no
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER BY emp_no ASC;
--step 7
SELECT employees.emp_no, employees.first_name,employees.last_name, titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
LEFT JOIN titles ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;
--exported file manually