# Problem:- Join the 'employees' and 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch. See if the output contains a manager with that name. 
# Solution:-

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC , e.emp_no;