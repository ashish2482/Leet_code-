# Write your MySQL query statement below
SELECT machine_id, ROUND(AVG(TI),3) AS processing_time
FROM (
SELECT machine_id, process_id, MAX(timestamp) - MIN(timestamp) AS TI
FROM Activity
GROUP BY machine_id, process_id) AS t1
GROUP BY t1.machine_id