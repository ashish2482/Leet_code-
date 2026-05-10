SELECT em.name, uni.unique_id
FROM Employees AS em
LEFT JOIN EmployeeUNI AS uni
ON em.id = uni.id
