-- QUERIES
-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT
	e.emp_no as employee_number,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM
	employees e
	join salaries s on e.emp_no = s.emp_no
ORDER BY
	e.last_name asc
LIMIT 100;