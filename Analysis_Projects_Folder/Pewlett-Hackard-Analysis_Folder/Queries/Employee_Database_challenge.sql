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


SELECT emp_no, first_name, last_name, birth_date
FROM employees

SELECT from_date, to_date
FROM dept_emp
SELECT title from Titles

SELECT (emp_no), first_name, last_name, birth_date
FROM employees
SELECT from_date, to_date
FROM dept_emp
SELECT title 
FROM titles


SELECT DISTINCT ON (emp_no) first_name, last_name, birth_date
--into mentorship_eligibilty
FROM employees as em
	LEFT JOIN dept_emp AS de
	ON (em.emp_no = de.emp_no)

-- select * from retiring_titles

SELECT (emp_no), first_name, last_name, birth_date
FROM employees
SELECT from_date, to_date
FROM dept_emp
SELECT title 
FROM titles

--Join the Employees and the Department Employee tables on the primary key.
SELECT em.emp_no, first_name, last_name, birth_date, de.from_date, de.to_date
INTO employees_dept_emp
FROM employees as em
	LEFT JOIN dept_emp AS de
	ON (em.emp_no = de.emp_no)
ORDER BY (emp_no) ASC;

-- Join the Employees and the Titles tables on the primary key.
SELECT em.emp_no, em.first_name, em.last_name, em.birth_date, ti.title
INTO employees_titles
FROM employees as em
	LEFT JOIN titles AS ti
	ON (em.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY (emp_no) ASC;
--ON 
SELECT * FROM employees_titles

SELECT et.emp_no , et.first_name, et.last_name, et.birth_date, ede.from_date, ede.to_date, et.title
-- into mentorship_eligibility
FROM employees_titles as et
LEFT JOIN employees_dept_emp as ede
		ON (ede.emp_no = et.emp_no )

-- Number of [titles] retiring
SELECT ce.emp_no,
 ce.first_name,
 ce.last_name,
 ti.title,
 ti.from_date,
 ti.to_date
--INTO ret_titles
FROM employees AS ce
 INNER JOIN titles AS ti
   ON (ce.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no;
SELECT * FROM ret_titles
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
--INTO unique_titles
FROM ret_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC;
SELECT * FROM unique_titles

-- select * from retiring_titles

SELECT DISTINCT (emp_no), first_name, last_name, birth_date
FROM employees
SELECT from_date, to_date
FROM dept_emp
SELECT title 
FROM titles

--Join the Employees and the Department Employee tables on the primary key.
SELECT DISTINCT ON (em.emp_no) em.emp_no, first_name, last_name, birth_date, de.from_date, de.to_date
INTO employees_dept_emp
FROM employees as em
	LEFT JOIN dept_emp AS de
	ON (em.emp_no = de.emp_no)
ORDER BY (emp_no) ASC;

SELECT * FROM employees_dept_emp
-- Join the Employees and the Titles tables on the primary key.
SELECT DISTINCT ON (em.emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date, ti.title
INTO employees_titles
FROM employees as em
	LEFT JOIN titles AS ti
	ON (em.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY (emp_no) ASC;
--ON 
SELECT * FROM employees_titles

SELECT DISTINCT ON (et.emp_no) et.emp_no , et.first_name, et.last_name, et.birth_date, ede.from_date, ede.to_date, et.title
-- into mentorship_eligibility
FROM employees_titles as et
INNER JOIN employees_dept_emp as ede
		ON (ede.emp_no = et.emp_no )
ORDER BY (emp_no) ASC;


-- 	INNER JOIN employees_dept_emp as ede
-- 		ON (=)
--- AFTER TA CHAT
	
SELECT ce.emp_no,
 ce.first_name,
 ce.last_name,
 ti.title,
 ti.from_date,
 ti.to_date
--INTO ret_titles
FROM employees AS ce
 INNER JOIN titles AS ti
   ON (ce.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no;
SELECT * FROM ret_titles
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles2
FROM ret_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC;
SELECT * FROM unique_titles2

-- -- Counting the number of each employee per title
-- SELECT COUNT(title), title
-- --INTO retiring_titles
-- FROM unique_titles
-- GROUP BY title
-- ORDER BY count DESC;
-- SELECT * FROM retiring_titles
-- Creating a list of employees eligible for potential mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
 e.first_name,
 e.last_name,
 e.birth_date,
 de.from_date,
 de.to_date,
 ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
 ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
 ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
SELECT * FROM mentorship_eligibility
