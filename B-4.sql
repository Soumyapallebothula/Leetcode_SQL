QNS LINK : https://leetcode.com/problems/project-employees-i/

Theme :
Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
Return the result table in any order.

Input: 
Project table:
+-------------+-------------+
| project_id  | employee_id |
+-------------+-------------+
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |
+-------------+-------------+
Employee table:
+-------------+--------+------------------+
| employee_id | name   | experience_years |
+-------------+--------+------------------+
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |
+-------------+--------+------------------+
Output: 
+-------------+---------------+
| project_id  | average_years |
+-------------+---------------+
| 1           | 2.00          |
| 2           | 2.50          |
+-------------+---------------+

Explanation: The average experience years for the first project is (3 + 2 + 1) / 3 = 2.00 and for the second project is (3 + 2) / 2 = 2.50

Solution :
select p.project_id , round(avg(e.experience_years),2) as average_years 
from Project p inner join Employee e 
on p.employee_id = e.employee_id 
group by p.project_id;

Learning :

Round function :
The ROUND() function rounds a number to a specified number of decimal places.
Syntax : ROUND(number, decimals, operation)


