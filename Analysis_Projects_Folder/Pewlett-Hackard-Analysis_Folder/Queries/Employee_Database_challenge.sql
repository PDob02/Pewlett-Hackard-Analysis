-- --Employee_Database_challenge.sql 
-- SELECT emp_no, first_name,last_name
-- FROM employees
-- SELECT title, from_date, to_date
-- FROM titles

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
-- SELECT employees.emp_no, employees.first_name,employees.last_name, titles.title, titles.from_date, titles.to_date
-- INTO retirement_titles
-- FROM employees
-- LEFT JOIN titles ON employees.emp_no = titles.emp_no
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER BY emp_no ASC;
--exported file manually
-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (______) _____,
-- ______,
-- ______,
-- ______

-- INTO nameyourtable
-- FROM _______
-- WHERE _______
-- ORDER BY _____, _____ DESC;

-- SELECT DISTINCT ON (emp_no) emp_no,
-- first_name,
-- last_name,
-- title
-- -- INTO nameyourtable
-- FROM retirement_titles
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
-- INTO most_recent_title
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- SELECT DISTINCT ON (emp_no) emp_no,
-- first_name,
-- last_name,
-- title
-- -- INTO nameyourtable
-- FROM retirement_titles
-- SELECT DISTINCT ON (emp_no) emp_no,
-- first_name,
-- last_name,
-- title
-- INTO Unique_Titles
-- FROM retirement_titles
-- WHERE to_date = '9999-01-01'

select * from unique_titles

-- SELECT DISTINCT ON (emp_no) emp_no,
-- first_name,
-- last_name,
-- title
-- INTO unique_titles
-- FROM retirement_titles
-- WHERE to_date = '9999-01-01'
-- ORDER BY emp_no, to_date DESC;
select * from unique_titles

SELECT 
    COUNT(titles)
FROM 
    table_name
WHERE
    condition; 

SELECT COUNT(title), title
FROM unique_titles;
--into retiring_titles
GROUP BY 
ORDER BY

SELECT COUNT(ti.title), (ut.title)
FROM titles as ti
LEFT JOIN unique_titles as ut
ON ti.title = ut.title
GROUP BY ut.title;

select count(title), (title)
INTO retiring_titles
from unique_titles
group by title 
order by count(title) DESC; 

select * from retiring_titles