# Write your MySQL query statement below
SELECT t1.Department, t1.Employee, t1.Salary
FROM
    (SELECT  dp.name AS Department, em.name AS Employee, em.salary AS Salary, 
        DENSE_RANK() OVER(PARTITION BY dp.id ORDER BY em.salary DESC) AS r
        FROM Employee AS em
        LEFT JOIN Department AS dp
        ON em.departmentId = dp.id
         ) t1
WHERE t1.r = 1