# Write your MySQL query statement below
WITH first_orders AS (
    SELECT delivery_id, customer_id, MIN(order_date) AS order_date FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(100*AVG(d.order_date = d.customer_pref_delivery_date),2) AS immediate_percentage FROM Delivery d
JOIN first_orders f ON d.customer_id = f.customer_id AND d.order_date = f.order_date;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/leethub-v4/bcilpkkbokcopmabingnndookdogmbna