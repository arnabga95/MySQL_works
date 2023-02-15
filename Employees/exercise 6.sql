# Problem:- Create a view that will extract the average salary of all managers registered in the database. Round this value to the nerest cent.
# Hint:- If you have worked correctly, after executing the view from the schemas section in workbench, you should obtain the value of 66924.27
#Solution:-

CREATE OR REPLACE VIEW v_manager_avg_salary AS
    SELECT 
        ROUND(AVG(salary), 2)
    FROM
        salaries s
            JOIN
        dept_manager m ON s.emp_no = m.emp_no;