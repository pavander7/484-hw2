SELECT p.Publisher_ID, p.Name
FROM Publishers p
WHERE EXISTS (
    SELECT 1
    FROM Editions e
    JOIN Books b ON e.Book_ID = b.Book_ID
    WHERE e.Publisher_ID = p.Publisher_ID
    AND (
        SELECT COUNT(DISTINCT b2.Book_ID)
        FROM Books b2
        WHERE b2.Author_ID = b.Author_ID
    ) = 3
) ORDER BY p.Publisher_ID DESC;