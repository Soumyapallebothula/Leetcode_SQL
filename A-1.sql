QNS LINK : https://leetcode.com/problems/employee-bonus/description/

Theme : 
Write an SQL query to report the name and bonus amount of each employee with a bonus less than 1000.
Return the result table in any order.


Employee table:
+-------+--------+------------+--------+
| empId | name   | supervisor | salary |
+-------+--------+------------+--------+
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |
+-------+--------+------------+--------+
Bonus table:
+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+
Output: 
+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+

Solution 1 : Using OR - takes more time to run

select e.name ,b.bonus from Employee e left join Bonus b on e.empId = b.empId where b.bonus< 1000 or b.bonus is null

Solution 2 : Using IFNULL - runs faster

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId=b.empId
WHERE IFNULL(bonus, 0)<1000


