-- 8) List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT
    e.last_name,
    count (*) as num_emps
FROM
   employees e
GROUP BY 
     e.last_name
order by
      num_emps desc
limit 20;	  
	