-- select the total num of students who were in the first 3 cohorts

--SELECT COUNT(*)
--FROM students
--WHERE cohort_id = 1 OR cohort_id = 2 OR --cohort_id = 3;

SELECT COUNT(id)
FROM students
WHERE cohort_id IN (1,2,3);