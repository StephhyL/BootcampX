-- get all graduates (name, email, phone) without a linked Github account

SELECT name, email, phone
FROM students
WHERE end_date IS NOT NULL
AND github IS NULL;