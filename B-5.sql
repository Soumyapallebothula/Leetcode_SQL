QNS LINK : https://leetcode.com/problems/reformat-department-table/

Theme : To Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

Input: 
Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+
Output: 
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+
Explanation: The revenue from Apr to Dec is null.
Note that the result table has 13 columns (1 for the department id + 12 for the months).

Solution :
SELECT id,
       SUM(if(month = 'Jan', revenue, null)) AS Jan_Revenue,
       SUM(if(month = 'Feb', revenue, null)) AS Feb_Revenue,
       SUM(if(month = 'Mar', revenue, null)) AS Mar_Revenue,
       SUM(if(month = 'Apr', revenue, null)) AS Apr_Revenue,
       SUM(if(month = 'May', revenue, null)) AS May_Revenue,
       SUM(if(month = 'Jun', revenue, null)) AS Jun_Revenue,
       SUM(if(month = 'Jul', revenue, null)) AS Jul_Revenue,
       SUM(if(month = 'Aug', revenue, null)) AS Aug_Revenue,
       SUM(if(month = 'Sep', revenue, null)) AS Sep_Revenue,
       SUM(if(month = 'Oct', revenue, null)) AS Oct_Revenue,
       SUM(if(month = 'Nov', revenue, null)) AS Nov_Revenue,
       SUM(if(month = 'Dec', revenue, null)) AS Dec_Revenue
FROM Department
GROUP BY id;
