SELECT a.First_Name, a.Last_Name
FROM Authors a
WHERE EXISTS (
    SELECT 1
    FROM Books b
    JOIN Subjects s ON b.Subject_ID = s.Subject_ID
    WHERE b.Author_ID = a.Author_ID
    HAVING (
        COUNT(DISTINCT CASE WHEN s.Subject = 'Children/YA' THEN b.Book_ID END) > 0
        AND
        COUNT(DISTINCT CASE WHEN s.Subject = 'Fiction' THEN b.Book_ID END) > 0
    )
) ORDER BY a.First_Name, a.Last_Name;