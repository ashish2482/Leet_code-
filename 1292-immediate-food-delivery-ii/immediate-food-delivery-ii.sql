# Write your MySQL query statement below
SELECT ROUND(COUNT(CASE WHEN IM = 0 THEN IM END)*100/COUNT(t1.customer_id),2) AS immediate_percentage 
FROM (SELECT customer_id, MIN(customer_pref_delivery_date)-MIN(order_date) AS IM
FROM Delivery
GROUP BY customer_id
ORDER BY order_date, customer_id ASC) AS t1