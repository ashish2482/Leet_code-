# Write your MySQL query statement below
SELECT d.name AS Department , Employee, Salary
FROM( SELECT departmentId , name AS Employee, Salary, DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS r
FROM Employee)
 AS e
 JOIN Department AS d
ON d.id = e.departmentId 
WHERE e.r<=3