QNS LINK :https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/

Theme : Write an SQL query to find the percentage of the users registered in each contest rounded to two decimals.
Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.

Table: Users

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| user_id     | int     |
| user_name   | varchar |
+-------------+---------+
user_id is the primary key for this table.
Each row of this table contains the name and the id of a user.
 

Table: Register

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| contest_id  | int     |
| user_id     | int     |
+-------------+---------+
(contest_id, user_id) is the primary key for this table.
Each row of this table contains the id of a user and the contest they registered into.

Solution:
select contest_id , round(count(user_id)/ (select count(user_id) from Users) * 100,2) as percentage from users u join register r using(user_id)
group by contest_id
order by percentage desc,contest_id asc;


