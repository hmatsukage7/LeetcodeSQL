# Write your MySQL query statement below
SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(e.student_id) AS attended_exams FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON stu.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY student_id, subject_name
ORDER BY student_id, subject_name;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/leethub-v4/bcilpkkbokcopmabingnndookdogmbna