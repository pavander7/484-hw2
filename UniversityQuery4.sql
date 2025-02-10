CREATE VIEW StudentPairs AS 
SELECT s1.SID as SID1, s2.SID as SID2
FROM Students s1
JOIN Enrollments e1 ON s1.SID = e1.SID
JOIN Enrollments e2 ON e1.CID = e2.CID
JOIN Students s2 ON e2.SID = s2.SID
WHERE s1.SID < s2.SID
AND NOT EXISTS(
    SELECT 1
    FROM Members m1 
    JOIN Members m2 ON m1.PID = m2.PID
    WHERE m1.SID = s1.SID
    AND m2.SID = s2.SID
);