SELECT c.CID
    FROM Courses c
    WHERE EXISTS (
        SELECT 1
        FROM Enrollments e
        JOIN Students s ON e.SID = s.SID
        WHERE e.CID = c.CID
        AND s.Major != 'CS'
        GROUP BY e.CID
        HAVING COUNT(DISTINCT e.SID) < 10
    )
    ORDER BY c.CID DESC;