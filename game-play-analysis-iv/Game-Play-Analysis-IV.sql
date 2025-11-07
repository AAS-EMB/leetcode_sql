# Write your MySQL query statement below
SELECT
    ROUND
    (
        COUNT(a1.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2) as fraction
FROM Activity as a1
WHERE
    (a1.player_id, DATE_SUB(a1.event_date, INTERVAL 1 DAY)) IN (
        SELECT
            a2.player_id,
            MIN(a2.event_date)
        FROM Activity as a2
        GROUP BY a2.player_id
    );