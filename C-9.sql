QNS LINK : https://leetcode.com/problems/find-total-time-spent-by-each-employee/

Theme: Write an SQL query to calculate the total time in minutes spent by each employee on each day at the office. Note that within one day, an employee can enter 
and leave more than once. The time spent in the office for a single entry is out_time - in_time.

Solution:
select event_day as day , emp_id , sum(out_time-in_time) as total_time from Employees group by event_day,emp_id
