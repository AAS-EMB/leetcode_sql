# Write your MySQL query statement below
SELECT name FROM
(
    SELECT e1.name, COUNT(*) as direct_reports FROM Employee as e1
    JOIN Employee as e2
    ON e1.id = e2.managerId
    GROUP BY e2.managerId
) as dr
WHERE dr.direct_reports >= 5;