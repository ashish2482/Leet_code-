# Write your MySQL query statement below
SELECT em.name AS Employee
FROM Employee AS em
LEFT JOIN Employee AS mn
ON em.managerId = mn.id
WHERE em.salary > mn.salary