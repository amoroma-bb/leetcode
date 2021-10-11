# Write your MySQL query statement below

-- AVG() will not count NULL values. Eventually, using ifnull to include those actions without clicks or views
--  

SELECT ad_id, IFNULL(ROUND(AVG(CASE WHEN action = 'Clicked' THEN 1
                         WHEN action = 'Viewed' THEN 0
                         ELSE NULL END)*100,2),0) AS ctr
FROM Ads
GROUP BY ad_id
ORDER BY ctr DESC, ad_id


select ad_id, 
    ifnull(round(sum(action = 'Clicked') / sum(action = 'Clicked' or action = 'Viewed') * 100, 2), 0) as ctr
from Ads
group by ad_id
order by ctr desc, ad_id