QNS LINK : https://leetcode.com/problems/find-followers-count/

Theme :
Write an SQL query that will, for each user, return the number of followers.
Return the result table ordered by user_id in ascending order.

Solution:
select user_id, count(follower_id) as followers_count from Followers 
group by user_id
order by user_id asc;
