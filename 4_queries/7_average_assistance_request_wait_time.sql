-- Calculate the average time it takes to start an assistance request.
-- Return just a single column here.

SELECT AVG(started_at-created_at) AS average_wait_time
FROM assistance_requests;

-- COMPASS SOLUTION:
-- SELECT avg(started_at-created_at) as average_wait_time
-- FROM assistance_requests;