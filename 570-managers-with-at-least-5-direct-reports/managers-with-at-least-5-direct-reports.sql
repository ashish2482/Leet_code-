# Write your MySQL query statement below
SELECT emp1.name
FROM Employee AS emp1
JOIN Employee AS emp2
ON emp1.id = emp2.managerID
GROUP BY emp2.managerID
HAVING COUNT(emp2.managerID)>=5
