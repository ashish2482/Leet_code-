# Write your MySQL query statement below
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sales_id
    FROM Orders AS o
    JOIN Company AS c
    ON c.com_id = o.com_id
    WHERE c.name = "RED" 
)