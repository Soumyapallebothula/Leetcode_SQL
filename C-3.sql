Qns Link :https://leetcode.com/problems/triangle-judgement/

Theme:
Write an SQL query to report for every three line segments whether they can form a triangle.
Return the result table in any order.

Example 1:

Input: 
Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+


Solution :

SELECT *, IF(x+y>z and x+z>y and y+z>x, 'Yes', 'No') as triangle FROM triangle

Learning :

We have a Triangle Inequality Theorem, which states that the sum of two side lengths of a triangle is always greater than the third side. 
If this is true for all three combinations of added side lengths, then you will have a triangle.
i.e if x,y,z are the side lengths given then it should satisfy :
x+y > z
y+z > x
z+x > y

If the sides satisfy the above 3 conditions then the given sides can form the triangle.

For Reference : https://www.wikihow.com/Determine-if-Three-Side-Lengths-Are-a-Triangle#:~:text=All%20you%20have%20to%20do,you%20will%20have%20a%20triangle.

So we are using the above conditions if our query .

And to build the logic we are using if statement.

About IF Statement :

The IF() function returns a value if a condition is TRUE, or another value if a condition is FALSE.
Syntax : IF(condition, value_if_true, value_if_false)
Parameter	                   Description
condition	Required           The value to test
value_if_true	Required       The value to return if condition is TRUE
value_if_false	Required     The value to return if condition is FALSE




