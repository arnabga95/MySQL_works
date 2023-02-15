#Problem:- Extract the employee number, first_name, and last_name of the first 100 employees and add a fourth column, called "current_employee" saying "Is still employed" if the
# employee is still working in the company or "Not an employee anymore" if they aren't.
#Solution:-

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) > SYSDATE() THEN 'Is still employed'
        ELSE 'Not an employee anymore'
    END AS current_employee
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;