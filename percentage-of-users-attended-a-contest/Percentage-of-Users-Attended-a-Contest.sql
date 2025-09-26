# Write your MySQL query statement below
SELECT r.contest_id, ROUND(COUNT(DISTINCT u.user_id) * 100.0 / (SELECT COUNT(user_id) FROM Users), 2) as percentage FROM Users as u
JOIN Register as r
ON r.user_id = u.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id;