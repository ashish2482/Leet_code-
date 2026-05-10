# Write your MySQL query statement below
SELECT emp.name , bon.bonus
From Employee AS emp
LEFT JOIN Bonus AS bon
ON emp.empID = bon.empID
WHERE bon.bonus < 1000 OR bon.bonus IS NULL