-- 4) List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

SELECT
	e.last_name,
	count(*) as num_emps
FROM
	employees e
GROUP BY
	e.last_name
order by
	num_emps desc
limit 20;

-- silver tsunami lots of people about to retire
SELECT
	x.age,
	count(*) as num_emps
FROM
	(select
		e.*,
		2022 - extract(year from e.birth_date) as age
	from
		employees e) x
group by
	x.age
order by
	num_emps desc
limit 20;