# Write your MySQL query statement below
SELECT Manager.name FROM Employee
JOIN Employee Manager ON Employee.managerId = Manager.id
GROUP BY Manager.id
HAVING COUNT(*) >= 5;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/leethub-v4/bcilpkkbokcopmabingnndookdogmbna