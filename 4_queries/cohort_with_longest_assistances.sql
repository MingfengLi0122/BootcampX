SELECT cohorts.name AS name,
       AVG(completed_at - started_at) AS average_assitance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assitance_time DESC
LIMIT 1;