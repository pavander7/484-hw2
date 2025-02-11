SELECT a.Author_ID
FROM Authors a
WHERE(
    SELECT COUNT(DISTINCT b.Book_ID)
    FROM Books b
    WHERE b.Author_ID = a.Author_ID
) = 1
ORDER BY a.Author_ID;