Qns Link : https://leetcode.com/problems/classes-more-than-5-students/

Theme:
To write an SQL query to report all the classes that have at least five students.
and Return the result table in any order.

Example 1:

Input:
Courses table:
+---------+----------+
| student | class    |
+---------+----------+
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |
+---------+----------+
Output: 
+---------+
| class   |
+---------+
| Math    |
+---------+
Explanation: 
- Math has 6 students, so we include it.
- English has 1 student, so we do not include it.
- Biology has 1 student, so we do not include it.
- Computer has 1 student, so we do not include it.

Solution:

select class from Courses 
group by class 
having count(class) >= 5

Group By :
*It is used to arrange similar data into the group. The GROUP BY clause follows the WHERE clause and comes before the ORDER BY clause.
*The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

Order By :
*The ORDER BY keyword is used to sort the result-set in ascending or descending order.
*The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

