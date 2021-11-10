# Write your MySQL query statement below
SElECT DISTINCT(business_id) as business_id
FROM
Events e
LEFT JOIN
  (SELECT event_type, AVG(occurences) as average
  FROM Events e
  GROUP BY event_type
   ) tmp
ON tmp.event_type = e.event_type
WHERE e.occurences > tmp.average
GROUP BY e.business_id
HAVING COUNT(DISTINCT tmp.event_type) > 1