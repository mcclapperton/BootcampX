SELECT cohorts.name as name, AVG(assistance_requests.completed_at-assistance_requests.started_at) as average_assistance_time
FROM students
JOIN assistance_requests ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time ASC;