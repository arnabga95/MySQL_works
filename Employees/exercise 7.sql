# Problem:- Create a procedure that will provide the average salary of all employees. Then call the procedure. 
# Solution:-


DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
	SELECT AVG(salary)
    FROM salaries;
END $$
DELIMITER ;


# Now to call the procedure we created run the following query:-
CALL avg_salary();             #or
CALL avg_salary;               #or
CALL employees.avg_salary;     #or
CALL employees.avg_salary();