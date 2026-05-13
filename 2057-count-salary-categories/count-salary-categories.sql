# Write your MySQL query statement below
SELECT "High Salary" AS category, IFNULL(COUNT(CASE WHEN income > 50000 THEN income END), 0) AS accounts_count
FROM Accounts
        UNION ALL
SELECT "Low Salary" AS category, IFNULL(COUNT(CASE WHEN income < 20000 THEN income END), 0) AS accounts_count
FROM Accounts
        UNION ALL
SELECT "Average Salary" AS category, IFNULL(COUNT(CASE WHEN income >= 20000 AND income <= 50000 THEN income END), 0) AS accounts_count
FROM Accounts
