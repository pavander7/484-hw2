SELECT s1.SID, s1.Name
FROM Students s1
WHERE EXISTS (
    -- Find project partners of student s1
    SELECT 1
    FROM Members m1
    JOIN Members m2 ON m1.PID = m2.PID
    JOIN Enrollments e ON e.SID = m2.SID
    JOIN Courses c ON e.CID = c.CID
    WHERE m1.SID = s1.SID
    AND m2.SID <> s1.SID
    -- Ensure the project partner is enrolled in all three categories
    GROUP BY m2.SID
    HAVING 
        COUNT(DISTINCT CASE WHEN c.c_name IN ('EECS482', 'EECS483') THEN c.CID END) > 0
        AND 
        COUNT(DISTINCT CASE WHEN c.c_name IN ('EECS484', 'EECS485') THEN c.CID END) > 0
        AND 
        COUNT(DISTINCT CASE WHEN c.c_name = 'EECS280' THEN c.CID END) > 0
)
ORDER BY s1.Name DESC;
