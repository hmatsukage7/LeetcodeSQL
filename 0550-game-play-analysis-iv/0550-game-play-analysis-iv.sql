# Write your MySQL query statement below
WITH first_login AS (
    SELECT player_id, MIN(event_date) AS event_date FROM Activity
    GROUP BY player_id
)

SELECT ROUND(COUNT(DISTINCT fl.player_id)/COUNT(DISTINCT a.player_id),2) AS fraction FROM Activity a
LEFT JOIN first_login fl ON a.player_id = fl.player_id AND DATE_SUB(a.event_date, INTERVAL 1 DAY) = fl.event_date;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/leethub-v4/bcilpkkbokcopmabingnndookdogmbna