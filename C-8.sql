QNS LINK : https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/

Theme:
Write an SQL query to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.
Return the result table ordered by employee_id.

Solution:
select mgr.employee_id, mgr.name, COUNT(emp.employee_id) as reports_count, ROUND(AVG(emp.age)) as average_age
from employees emp join employees mgr
on emp.reports_to = mgr.employee_id
group by employee_id
order by employee_id

