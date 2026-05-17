# Write your MySQL query statement below
SELECT ROUND(COUNT(DISTINCT(a1.player_id))*1.0/(SELECT COUNT(DISTINCT(player_id)) FROM Activity), 2) AS fraction
FROM Activity AS a1
JOIN (SELECT MIN(event_date) AS event_date, player_id
        FROM Activity
        GROUP BY player_id) AS b1
ON a1.player_id = b1.player_id AND a1.event_date = DATE_ADD(b1.event_date, INTERVAL 1 DAY)

