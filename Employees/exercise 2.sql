# Problem:- Insert information about the individual with employee number 999903 into the "dept_emp" table. He/She is working for department number 5, and has started work 
# on October 1st, 1997; His/Her contract is for an indefinite period of time. 
# Solution:- 

SELECT * FROM dept_emp
ORDER BY emp_no DESC
LIMIT 10;
INSERT INTO dept_emp
(
emp_no,
dept_no,
from_date,
to_date
)
VALUES
(
999903,
'd005',
'1997-10-01',
'9999-01-01'
);