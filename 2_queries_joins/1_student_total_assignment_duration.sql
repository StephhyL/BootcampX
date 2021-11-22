-- get the total amout of time that a student has spend on all assignments

--COMPASS SOLUTION:
-- SELECT sum(assignment_submissions.duration) as total_duration
--FROM assignment_submissions
--JOIN students ON students.id = student_id
--WHERE students.name = 'Ibrahim Schimmel';

SELECT SUM(duration) AS total_duration
FROM assignment_submissions 
JOIN students ON assignment_submissions.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';