QNS LINK : https://leetcode.com/problems/swap-salary/

Theme : 
Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.
Note that you must write a single update statement, do not write any select statement for this problem.

Input: 
Salary table:
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |
+----+------+-----+--------+
Output: 
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |
+----+------+-----+--------+
Explanation: 
(1, A) and (3, C) were changed from 'm' to 'f'.
(2, B) and (4, D) were changed from 'f' to 'm'.


Solution:
Update Salary 
set sex = if(sex = 'f','m','f');

Learning:

About Update Statement
The UPDATE statement is used to modify the existing records in a table.

UPDATE Syntax:

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

About IF statement :

The IF() function returns a value if a condition is TRUE, or another value if a condition is FALSE.

Syntax:

IF(condition, value_if_true, value_if_false)

