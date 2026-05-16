# Write your MySQL query statement below
SELECT p.product_id, ROUND(COALESCE(SUM(p.price * us.units)/SUM(us.units),0),2) AS average_price FROM Prices p
LEFT JOIN UnitsSold us ON p.product_id = us.product_id AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/leethub-v4/bcilpkkbokcopmabingnndookdogmbna