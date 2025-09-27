# Write your MySQL query statement below
SELECT MAX(num) as num FROM
(
    SELECT num, COUNT(*) as counter FROM MyNumbers
    GROUP BY num
    HAVING counter = 1
) as n
