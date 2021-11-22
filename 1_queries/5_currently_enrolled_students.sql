-- get all the students currently enrolled
-- get name, id, cohort_id
-- order them by cohort_id

SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;