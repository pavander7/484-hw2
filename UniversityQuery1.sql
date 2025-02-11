SELECT c.CID
FROM Courses c
WHERE (
    SELECT COUNT(DISTINCT e.SID)
    FROM Enrollments e
    JOIN Students s ON e.SID = s.SID
    WHERE e.CID = c.CID
    AND (s.Major IS NULL OR s.Major != 'CS')
) < 10 
ORDER BY c.CID DESC;
