SELECT b1.Title, e1.Publication_Date, a1.Author_ID, a1.First_Name, a1.Last_Name
FROM Editions e1
JOIN Books b1 ON e1.Book_ID = b1.Book_ID
JOIN Authors a1 ON b1.Author_ID = a1.Author_ID
WHERE EXISTS (
    SELECT 1
    FROM Editions e2
    JOIN Books b2 ON e2.Book_ID = b2.Book_ID
    JOIN Authors a2 ON b2.Author_ID = a2.Author_ID
    WHERE a2.Author_ID = a1.Author_ID
    AND e2.Publication_Date >= '2003-01-01'
    AND e2.Publication_Date <= '2008-12-31'
) ORDER BY a1.Author_ID ASC, b1.Title ASC, e1.Publication_Date DESC;