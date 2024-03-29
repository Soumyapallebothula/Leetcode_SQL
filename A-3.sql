Employees Earning More Than Their Managers - https://leetcode.com/problems/employees-earning-more-than-their-managers/

Theme : To write a SQL query to find the employees who earn more than their managers.

Input: 
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
Output: 
+----------+
| Employee |
+----------+
| Joe      |
+----------+
Explanation: Joe is the only employee who earns more than his manager.

Illusion : Here we need to find the employees who earn more than their manager , we can observe that employee info and manager info are in the same table 
(You use a self join when a table references data in itself. E.g., an Employee table may have a SupervisorID column that points to the employee that is the 
boss of the current employee.)

So when we do self join by referencing with employee id and manager id we get the table results in :

(select *  from Employee E1 join Employee E2 on E1.id = E2.managerId)

| id | name | salary | managerId | id | name  | salary | managerId |
| -- | ---- | ------ | --------- | -- | ----- | ------ | --------- |
| 3  | Sam  | 60000  | null      | 1  | Joe   | 70000  | 3         |
| 4  | Max  | 90000  | null      | 2  | Henry | 80000  | 4         |

Now we can see Sam and Max are managers to Joe,Henry.
So next step is to retrive only names who have salary greater than their manager ..
By looking the above table we can easily say 'Joe' is the one who have salary higher than his manager.

So to get the final output :

Solution:
select E2.name as Employee  from Employee E1 join Employee E2 on E1.id = E2.managerId and E1.salary < E2.salary

Here E1 is manager table 
     E2 is the employee table 
     
Output:
| Employee |
| -------- |
| Joe      |


Learning from the above Problem :

A self join is a regular join, but the table is joined with itself.

SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

T1 and T2 are different table aliases for the same table.

