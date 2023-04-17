Question Link : https://leetcode.com/problems/find-customer-referee/description/

Theme : To write a SQL query to report the names of the customer that are not referred by the customer with id = 2.

And we can return the result table in any order.

Example 1:
Input: 
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+


Solution:

select name from Customer where referee_id <>2 or referee_id is null ;


Learning :

NULL Value: 
A field with a NULL value is a field with no value

IS NULL :
It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
We will have to use the IS NULL and IS NOT NULL operators instead.
The IS NULL operator is used to test check if a column has null/empty value.
