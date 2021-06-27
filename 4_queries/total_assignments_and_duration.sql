SELECT assignments.day AS day,
       COUNT(*) AS number_of_assigments,
       SUM(duration) AS duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;