# Write your MySQL query statement below

SELECT recommended_page
FROM
    (SELECT DISTINCT(page_id) AS recommended_page
    FROM Friendship f
    JOIN Likes l
    ON f.user2_id = l.user_id
    WHERE user1_id = 1 AND (page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1))
    ) tmp1
UNION
SELECT tmp2.recommended_page
FROM
    (SELECT DISTINCT(page_id) AS recommended_page
     FROM Friendship f
     JOIN Likes l
     ON f.user1_id = l.user_id
     WHERE user2_id = 1 AND (page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1))
    ) tmp2


-- more clear solution

SELECT DISTINCT page_id AS recommended_page
FROM Likes
WHERE user_id IN (
    SELECT user2_id AS id FROM Friendship WHERE user1_id = 1
    UNION
    SELECT user1_id AS id FROM Friendship WHERE user2_id = 1)
    AND 
    page_id NOT IN (
        SELECT page_id FROM Likes WHERE user_id = 1)