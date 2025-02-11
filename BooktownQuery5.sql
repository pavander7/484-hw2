SELECT a1.Author_ID, a1.First_Name, a1.Last_Name
FROM Authors a1
JOIN Books b1 ON a1.Author_ID = b1.Author_ID
JOIN Subjects s ON b1.Subject_ID = s.Subject_ID
WHERE NOT EXISTS (
    SELECT 1
    FROM Books b2
    JOIN Authors a2 ON b2.Author_ID = a2.Author_ID
    WHERE a2.First_Name = 'J. K.' AND a2.Last_Name = 'Rowling'
    AND NOT EXISTS (
        SELECT 1
        FROM Books b3
        WHERE b3.Author_ID = b1.Author_ID
        AND b3.Subject_ID = b2.Subject_ID
    )
)
GROUP BY a1.Author_ID, a1.First_Name, a1.Last_Name
ORDER BY a1.Last_Name ASC, a1.Author_ID DESC;