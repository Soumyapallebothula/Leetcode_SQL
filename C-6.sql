QNS LINK : https://leetcode.com/problems/daily-leads-and-partners/description/

Theme: Write an SQL query that will, for each date_id and make_name, return the number of distinct lead_id's and distinct partner_id's.

Solution:
SELECT date_id , make_name, count(distinct(lead_id)) as unique_leads , count(distinct(partner_id)) as unique_partners
from DailySales 
group by date_id , make_name;
