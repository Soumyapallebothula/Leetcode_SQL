QNS LINK : https://leetcode.com/problems/biggest-single-number

Theme : 
A single number is a number that appeared only once in the MyNumbers table.
Write an SQL query to report the largest single number. If there is no single number, report null.
The query result format is in the following example.

Example 1:
Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |
+-----+
Output: 
+-----+
| num |
+-----+
| 6   |
+-----+
Explanation: The single numbers are 1, 4, 5, and 6.
Since 6 is the largest single number, we return it.
Example 2:

Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |
+-----+
Output: 

+------+
| num  |
+------+
| null |
+------+
Explanation: There are no single numbers in the input table so we return null.

Solution :

SELECT IF(COUNT(num) = 1, num, null) AS num FROM MyNumbers
GROUP BY num
ORDER BY num DESC LIMIT 1;


Learnings:

SQL COUNT(): The COUNT(column_name) function returns the number of values (NULL values will not be counted) of the specified column:

Syntax: SELECT COUNT(column_name) FROM table_name;


SQL COUNT(*): The COUNT(*) function returns the number of records in a table:

Syntax : SELECT COUNT(*) FROM table_name;

