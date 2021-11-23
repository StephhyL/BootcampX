SELECT AVG(total_students) AS average_students
FROM (
  SELECT COUNT(students) AS total_students,
  cohorts.name AS cohort_name
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) as totals_table;



-- SELECT COUNT(students) AS total_students
-- FROM students
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts;