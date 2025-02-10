LOAD DATA
INFILE 'students.csv'
INTO TABLE Students
FIELDS TERMINATED BY ',' 
(SID, Name, Major)
