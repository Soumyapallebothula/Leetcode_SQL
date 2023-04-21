QNS LINK : https://leetcode.com/problems/invalid-tweets/

Theme: To write an SQL query to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Solution:
Select tweet_id from Tweets where char_length(content) > 15 ;

Learnings: 
LENGTH() returns the length of the string measured in bytes.
CHAR_LENGTH() returns the length of the string measured in characters.
