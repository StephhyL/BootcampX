-- get names of all students from a single cohort -- use any number for the cohort_id
-- select their id and name
-- order them by name in alphabetical order

SELECT id, name 
FROM students
WHERE cohort_id = 1
ORDER BY name;
