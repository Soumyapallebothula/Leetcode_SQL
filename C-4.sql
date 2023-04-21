QNS LINK : https://leetcode.com/problems/fix-names-in-a-table/

SELECT user_id, concat(upper(LEFT(name, 1)), lower(RIGHT(name, length(name)-1))) as name
FROM users
ORDER BY user_id;
