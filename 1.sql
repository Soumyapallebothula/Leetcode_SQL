QNS LINK : https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

Theme:
Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.
Return table in any order
Input: 
ActorDirector table:
+-------------+-------------+-------------+
| actor_id    | director_id | timestamp   |
+-------------+-------------+-------------+
| 1           | 1           | 0           |
| 1           | 1           | 1           |
| 1           | 1           | 2           |
| 1           | 2           | 3           |
| 1           | 2           | 4           |
| 2           | 1           | 5           |
| 2           | 1           | 6           |
+-------------+-------------+-------------+
Output: 
+-------------+-------------+
| actor_id    | director_id |
+-------------+-------------+
| 1           | 1           |
+-------------+-------------+
Explanation: The only pair is (1, 1) where they cooperated exactly 3 times.


Solution:
select actor_id , director_id, timestamp  from ActorDirector group by actor_id ,director_id

Explanation:
+-------------+-------------+-------------+
| actor_id    | director_id | timestamp   |
+-------------+-------------+-------------+
| 1           | 1           | 0           |
| 1           | 1           | 1           |
| 1           | 1           | 2           |
| 1           | 2           | 3           |
| 1           | 2           | 4           |
| 2           | 1           | 5           |
| 2           | 1           | 6           |
+-------------+-------------+-------------+

Group by actor_id, director_id:
+-------------+-------------+-------------+
| actor_id    | director_id | timestamp   |
+-------------+-------------+-------------+
| 1           | 1           | 0, 1, 2     |
| 1           | 2           | 3, 4        |
| 2           | 1           | 5. 6        |
+-------------+-------------+-------------+

Group by actor_id, director_id
Having count(timestamp)>=3

| actor_id    | director_id | count(timestamp)  |
+-------------+-------------+-------------+
| 1           | 1           |                3  |
| 1           | 2           |                2  |
| 2           | 1           |                2  |
+-------------+-------------+-------------+

select actor_id, director_id from:

| actor_id    | director_id  
+-------------+---------+
| 1           | 1                   
+-------------+---------+



