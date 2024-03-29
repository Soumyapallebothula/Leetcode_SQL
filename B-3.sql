QNS LINK : https://leetcode.com/problems/product-sales-analysis-i/description/

Theme :
Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.
Return the resulting table in any order.

Sales table:
+---------+------------+------+----------+-------+
| sale_id | product_id | year | quantity | price |
+---------+------------+------+----------+-------+ 
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |
+---------+------------+------+----------+-------+
Product table:
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |
+------------+--------------+
Output: 
+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+

Explanation: 
From sale_id = 1, we can conclude that Nokia was sold for 5000 in the year 2008.
From sale_id = 2, we can conclude that Nokia was sold for 5000 in the year 2009.

Solution :

select p.product_name , s.year ,s.price from Sales s inner join Product p  on s.product_id = p.product_id;

Learning :

Inner Join :
The INNER JOIN keyword selects records that have matching values in both tables.

INNER JOIN Syntax:
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;


Another Solution :

SELECT p.product_name, d.year, d.price FROM Product as p JOIN 
(SELECT DISTINCT product_id, year, price FROM Sales) as d ON p.product_id = d.product_id

Explanation:

Left join increases the execution time and also returns extra rows by appending null in them if they're not present in the right table. 
Inner join is faster than left join. Also if we only ook for distinct columns the processing time decreases even further improving since
it doesn't have to list down all the rows of the join result. 
The over all performance improves drastically using inner join with distinct keyword
From sale_id = 7, we can conclude that Apple was sold for 9000 in the year 2011.
