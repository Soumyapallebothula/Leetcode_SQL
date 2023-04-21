QNS LINK : https://leetcode.com/problems/not-boring-movies/

Theme :
To Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".
Return the result table ordered by rating in descending order.

Input: 
Cinema table:
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |
+----+------------+-------------+--------+
Output: 
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |
+----+------------+-------------+--------+
Explanation: 
We have three movies with odd-numbered IDs: 1, 3, and 5. The movie with ID = 3 is boring so we do not include it in the answer.

Solution :

select * from Cinema where id%2=1 and description <> 'boring'
order by rating desc

Learning :

About <> in SQL :
Not Equal To (Transact SQL) - traditional
Compares two expressions (a comparison operator). 
When you compare nonnull expressions, the result is TRUE if the left operand is not equal to the right operand; otherwise, the result is FALSE

About MOD() function :
It returns the remainder of a number divided by another number.

Syntax
MOD(x, y)
OR:

x MOD y
OR:

x % y

x	- A value that will be divided by y
y - The divisor



