Combine Two Tables - https://leetcode.com/problems/combine-two-tables/

Input: 

Person table:
+----------+----------+-----------+
| personId | lastName | firstName |
+----------+----------+-----------+
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |
+----------+----------+-----------+

Address table:
+-----------+----------+---------------+------------+
| addressId | personId | city          | state      |
+-----------+----------+---------------+------------+
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |
+-----------+----------+---------------+------------+

Output: 
+-----------+----------+---------------+----------+
| firstName | lastName | city          | state    |
+-----------+----------+---------------+----------+
| Allen     | Wang     | Null          | Null     |
| Bob       | Alice    | New York City | New York |
+-----------+----------+---------------+----------+

Explanation: 
There is no address in the address table for the personId = 1 so we return null in their city and state.
addressId = 1 contains information about the address of personId = 2.

Theme - To write an SQL query to report the first name, last name, city, and state of each person in the Person table.
        If the address of a personId is not present in the Address table, report null instead.
        
        
Illusion - If we use inner join for the above query we get the result as below:(i.e it retrives the data which has matching records based on personId)

| firstname | lastname | city          | state    |
| --------- | -------- | ------------- | -------- |
| Bob       | Alice    | New York City | New York |

If we use left join we get the result as below , which meets the requirements.(it retrives the data which has matching records based on personId 
and all the columns that are present on left table)

| firstname | lastname | city          | state    |
| --------- | -------- | ------------- | -------- |
| Allen     | Wang     | null          | null     |
| Bob       | Alice    | New York City | New York |


Solution:

select P.firstname,P.lastname,A.city,A.state from Person P left join Address A on P.personId = A.personId;

Learning from the above problem :

Inner Join : The INNER JOIN keyword selects records that have matching values in both tables.

Left Join  : The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). 
             The result is 0-null records from the right side, if there is no match.
             
