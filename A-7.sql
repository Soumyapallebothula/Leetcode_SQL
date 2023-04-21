QNS LINK : [https://leetcode.com/problems/group-sold-products-by-the-date/description/]

Theme:
Write an SQL query to find for each date the number of different products sold and their names.
The sold products names for each date should be sorted lexicographically. Return the result table ordered by sell_date.

Input: 
Activities table:
+------------+------------+
| sell_date  | product     |
+------------+------------+
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |
+------------+------------+
Output: 
+------------+----------+------------------------------+
| sell_date  | num_sold | products                     |
+------------+----------+------------------------------+
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |
+------------+----------+------------------------------+
Explanation: 
For 2020-05-30, Sold items were (Headphone, Basketball, T-shirt), we sort them lexicographically and separate them by a comma.
For 2020-06-01, Sold items were (Pencil, Bible), we sort them lexicographically and separate them by a comma.
For 2020-06-02, the Sold item is (Mask), we just return it.


Solution:

SELECT sell_date,
		COUNT(DISTINCT(product)) AS num_sold, 
		GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date ASC

Explanation :
The only serious challange of this problem is how to aggregate the product names in one cell. In MySql, this can be done using GROUP_CONCAT,
in which you can also specify the sorting mechanism for the group concatenation (aggregation). The rest is simple.
The MySQL GROUP_CONCAT() function is an aggregate function that concatenates strings from a group into a single string with various options.
