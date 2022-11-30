-- 3) List the manager of each department with the following information

SELECT
	d.dept_no,
	d.dept_name,
	e.last_name,
	e.first_name,
	t.title
FROM
	departments d
	join dept_manager dm on d.dept_no = dm.dept_no
	join employees e on dm.emp_no = e.emp_no
	join titles t on e.emp_title_id = t.title_id
order by
	d.dept_no,
	e.last_name;
