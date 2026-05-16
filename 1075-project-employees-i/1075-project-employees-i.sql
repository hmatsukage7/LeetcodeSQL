# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years),2) AS average_years FROM Project p
LEFT JOIN Employee e ON p.employee_id = e.employee_id
GROUP BY project_id;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/leethub-v4/bcilpkkbokcopmabingnndookdogmbna