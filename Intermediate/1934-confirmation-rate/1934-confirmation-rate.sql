# Write your MySQL query statement below
SELECT Signups.user_id, ROUND(SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END)/COUNT(Signups.user_id),2) AS confirmation_rate FROM Confirmations
RIGHT JOIN Signups ON Confirmations.user_id = Signups.user_id
GROUP BY user_id;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/leethub-v4/bcilpkkbokcopmabingnndookdogmbna