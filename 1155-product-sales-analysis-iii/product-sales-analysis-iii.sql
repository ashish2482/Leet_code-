# Write your MySQL query statement beloW
SELECT a.product_id,
        a.year AS first_year,
        a.quantity,
        a.price
FROM Sales AS a
JOIN (SELECT product_id,  MIN(year) AS year
        FROM Sales
        GROUP BY product_id) AS t
ON a.product_id = t.product_id
AND a.year = t.year