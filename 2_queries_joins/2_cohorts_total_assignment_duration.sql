--Get the total amount of time that all students from a specific cohort have spent on all assignments.

SELECT SUM(assignment_submissions.duration) AS total_duration
-- cohorts.name AS cohort_name
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING cohorts.name = 'FEB12';