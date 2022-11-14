SELECT id, name, cohort_id 
FROM students 
WHERE email OR phone IS NULL 
ORDER BY cohort_id;