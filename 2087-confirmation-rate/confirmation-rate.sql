# Write your MySQL query statement below
SELECT sig.user_id,  ROUND(
        IFNULL(SUM(con.action = 'confirmed') / COUNT(con.action), 0),
        2
    ) AS confirmation_rate
FROM Confirmations AS con
RIGHT JOIN Signups AS sig
ON con.user_id = sig.user_id
GROUP BY sig.user_id

