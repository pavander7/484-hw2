LOAD DATA
INFILE 'enrollments.csv'
INTO TABLE Enrollments
FIELDS TERMINATED BY ',' 
(CID, SID)
