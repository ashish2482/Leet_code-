# Write your MySQL query statement below
SELECT  pr.firstName, pr.lastName, ad.city, ad.state  
FROM Person AS pr
LEFT JOIN
Address AS ad
ON  pr.personId = ad.personId
