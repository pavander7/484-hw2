SELECT s.Subject
FROM Subjects s
WHERE NOT EXISTS (
    SELECT 1
    FROM Books b
    WHERE s.Subject_ID = b.Subject_ID
)
ORDER BY s.Subject;