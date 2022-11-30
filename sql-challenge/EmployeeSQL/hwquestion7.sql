-- 7. all employees in the Sales and Development departments with their employee number, last name, first name, and department name.
SELECT
e.emp_no, last_name, first_name, dept.dept_name
FROM 
employees AS e
JOIN
dept_emp AS e_dept
	ON e.emp_no = e_dept.emp_no
JOIN
departments AS dept
	ON e_dept.dept_no = dept.dept_no
WHERE 
dept.dept_name = 'Sales'
OR
dept.dept_name = 'Development'
;