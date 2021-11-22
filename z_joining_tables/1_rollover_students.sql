-- get the student's name, student's start_date, cohort's name, cohort's start_date
-- alias the column names to be more descriptive
-- order by the start date of the cohort

SELECT students.name AS student_name, 
cohorts.name AS cohort_name,
cohorts.start_date AS cohort_start_date,
students.start_date AS students_start_date
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;
