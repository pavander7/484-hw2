-- Students
INSERT INTO Students(SID, Name, Major) VALUES (1, 'Paul', 'DS');
INSERT INTO Students(SID, Name, Major) VALUES (2, 'Brian', 'BDA');
INSERT INTO Students(SID, Name, Major) VALUES (3, 'Stuart', 'Directing');
INSERT INTO Students(SID, Name, Major) VALUES (4, 'Audrey', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (5, 'Aaron', 'Architechture');
INSERT INTO Students(SID, Name, Major) VALUES (6, 'Adam', 'PolySci');
INSERT INTO Students(SID, Name, Major) VALUES (7, 'Breandan', 'UrbanTech');
INSERT INTO Students(SID, Name, Major) VALUES (8, 'Austin', 'PolySci');
INSERT INTO Students(SID, Name, Major) VALUES (9, 'Mary', 'SpaceSci');
INSERT INTO Students(SID, Name, Major) VALUES (10, 'Cole', 'Environ');
INSERT INTO Students(SID, Name, Major) VALUES (11, 'Daniel', 'CogSci');
INSERT INTO Students(SID, Name, Major) VALUES (12, 'Carter', 'Aerospace');
INSERT INTO Students(SID, Name, Major) VALUES (13, 'John', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (14, 'Eli', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (15, 'Ellis', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (16, 'Johnny', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (17, 'Nick', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (18, 'Bradmore', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (19, 'Brad', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (20, 'Jack', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (21, 'Breanna', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (22, 'Peyton', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (23, 'Pratyush', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (24, 'Brummer', 'PolySci');
INSERT INTO Students(SID, Name, Major) VALUES (25, 'Keen', 'Voice');
INSERT INTO Students(SID, Name, Major) VALUES (26, 'Maggie', 'Biomed');
INSERT INTO Students(SID, Name, Major) VALUES (27, 'Ella', 'Biomed');
INSERT INTO Students(SID, Name, Major) VALUES (28, 'Isaiah', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (29, 'Duncan', 'CS');
INSERT INTO Students(SID, Name, Major) VALUES (30, 'Mark', 'CS');

-- Projects
INSERT INTO Projects(PID, P_Name) VALUES (1, 'Red Team');
INSERT INTO Projects(PID, P_Name) VALUES (2, 'Yellow Team');
INSERT INTO Projects(PID, P_Name) VALUES (3, 'Green Team');
INSERT INTO Projects(PID, P_Name) VALUES (4, 'Cyan Team');
INSERT INTO Projects(PID, P_Name) VALUES (5, 'Blue Team');
INSERT INTO Projects(PID, P_Name) VALUES (6, 'Magenta Team');

-- Courses
INSERT INTO Courses(CID, C_Name) VALUES (1, 'EECS280');
INSERT INTO Courses(CID, C_Name) VALUES (2, 'EECS281');
INSERT INTO Courses(CID, C_Name) VALUES (3, 'EECS442');
INSERT INTO Courses(CID, C_Name) VALUES (4, 'EECS445');
INSERT INTO Courses(CID, C_Name) VALUES (5, 'EECS482');
INSERT INTO Courses(CID, C_Name) VALUES (6, 'EECS483');
INSERT INTO Courses(CID, C_Name) VALUES (7, 'EECS484');
INSERT INTO Courses(CID, C_Name) VALUES (8, 'EECS485');
INSERT INTO Courses(CID, C_Name) VALUES (9, 'EECS486');
INSERT INTO Courses(CID, C_Name) VALUES (10, 'EECS492');
INSERT INTO Courses(CID, C_Name) VALUES (11, 'PHARMSCI420');
INSERT INTO Courses(CID, C_Name) VALUES (12, 'ENS353');

-- 5 students per group, no overlap
INSERT INTO Members(PID, SID) VALUES (1, 1);
INSERT INTO Members(PID, SID) VALUES (2, 2);
INSERT INTO Members(PID, SID) VALUES (3, 3);
INSERT INTO Members(PID, SID) VALUES (4, 4);
INSERT INTO Members(PID, SID) VALUES (5, 5);
INSERT INTO Members(PID, SID) VALUES (6, 6);
INSERT INTO Members(PID, SID) VALUES (1, 7);
INSERT INTO Members(PID, SID) VALUES (2, 8);
INSERT INTO Members(PID, SID) VALUES (3, 9);
INSERT INTO Members(PID, SID) VALUES (4, 10);
INSERT INTO Members(PID, SID) VALUES (5, 11);
INSERT INTO Members(PID, SID) VALUES (6, 12);
INSERT INTO Members(PID, SID) VALUES (1, 13);
INSERT INTO Members(PID, SID) VALUES (2, 14);
INSERT INTO Members(PID, SID) VALUES (3, 15);
INSERT INTO Members(PID, SID) VALUES (4, 16);
INSERT INTO Members(PID, SID) VALUES (5, 17);
INSERT INTO Members(PID, SID) VALUES (6, 18);
INSERT INTO Members(PID, SID) VALUES (1, 19);
INSERT INTO Members(PID, SID) VALUES (2, 20);
INSERT INTO Members(PID, SID) VALUES (3, 21);
INSERT INTO Members(PID, SID) VALUES (4, 22);
INSERT INTO Members(PID, SID) VALUES (5, 23);
INSERT INTO Members(PID, SID) VALUES (6, 24);
INSERT INTO Members(PID, SID) VALUES (1, 25);
INSERT INTO Members(PID, SID) VALUES (2, 26);
INSERT INTO Members(PID, SID) VALUES (3, 27);
INSERT INTO Members(PID, SID) VALUES (4, 28);
INSERT INTO Members(PID, SID) VALUES (5, 29);
INSERT INTO Members(PID, SID) VALUES (6, 30);

-- EECS280 (CID 1)
INSERT INTO Enrollments(CID, SID) VALUES (1, 1);
INSERT INTO Enrollments(CID, SID) VALUES (1, 2);
INSERT INTO Enrollments(CID, SID) VALUES (1, 3);
INSERT INTO Enrollments(CID, SID) VALUES (1, 5);
INSERT INTO Enrollments(CID, SID) VALUES (1, 6);
INSERT INTO Enrollments(CID, SID) VALUES (1, 7);
INSERT INTO Enrollments(CID, SID) VALUES (1, 8);
INSERT INTO Enrollments(CID, SID) VALUES (1, 9);
INSERT INTO Enrollments(CID, SID) VALUES (1, 10);
INSERT INTO Enrollments(CID, SID) VALUES (1, 11);
INSERT INTO Enrollments(CID, SID) VALUES (1, 12);

-- EECS281 (CID 2)
INSERT INTO Enrollments(CID, SID) VALUES (2, 26);
INSERT INTO Enrollments(CID, SID) VALUES (2, 15);
INSERT INTO Enrollments(CID, SID) VALUES (2, 18);
INSERT INTO Enrollments(CID, SID) VALUES (2, 22);

-- EECS442 (CID 3)
INSERT INTO Enrollments(CID, SID) VALUES (3, 13);
INSERT INTO Enrollments(CID, SID) VALUES (3, 19);
INSERT INTO Enrollments(CID, SID) VALUES (3, 25);

-- EECS445 (CID 4)
INSERT INTO Enrollments(CID, SID) VALUES (4, 4);
INSERT INTO Enrollments(CID, SID) VALUES (4, 13);
INSERT INTO Enrollments(CID, SID) VALUES (4, 20);

-- EECS482 (CID 5)
INSERT INTO Enrollments(CID, SID) VALUES (5, 1);
INSERT INTO Enrollments(CID, SID) VALUES (5, 2);

-- EECS483 (CID 6)
INSERT INTO Enrollments(CID, SID) VALUES (6, 3);
INSERT INTO Enrollments(CID, SID) VALUES (6, 10);

-- EECS484 (CID 7)
INSERT INTO Enrollments(CID, SID) VALUES (7, 1);
INSERT INTO Enrollments(CID, SID) VALUES (7, 3);

-- EECS485 (CID 8)
INSERT INTO Enrollments(CID, SID) VALUES (8, 3);
INSERT INTO Enrollments(CID, SID) VALUES (8, 10);

-- EECS 486 (CID 9)
INSERT INTO Enrollments(CID, SID) VALUES (9, 1);
INSERT INTO Enrollments(CID, SID) VALUES (9, 4);
INSERT INTO Enrollments(CID, SID) VALUES (9, 20);
INSERT INTO Enrollments(CID, SID) VALUES (9, 21);
INSERT INTO Enrollments(CID, SID) VALUES (9, 22);
INSERT INTO Enrollments(CID, SID) VALUES (9, 23);
INSERT INTO Enrollments(CID, SID) VALUES (9, 24);

-- EECS492 (CID 10)
INSERT INTO Enrollments(CID, SID) VALUES (10, 13);
INSERT INTO Enrollments(CID, SID) VALUES (10, 14);
INSERT INTO Enrollments(CID, SID) VALUES (10, 15);
INSERT INTO Enrollments(CID, SID) VALUES (10, 16);
INSERT INTO Enrollments(CID, SID) VALUES (10, 17);

-- PHARMSCI 420 (CID 11)
INSERT INTO Enrollments(CID, SID) VALUES (11, 18);
INSERT INTO Enrollments(CID, SID) VALUES (11, 19);
INSERT INTO Enrollments(CID, SID) VALUES (11, 25);
INSERT INTO Enrollments(CID, SID) VALUES (11, 27);

-- ENS 353 (CID 12)
INSERT INTO Enrollments(CID, SID) VALUES (12, 1);
INSERT INTO Enrollments(CID, SID) VALUES (12, 10);
INSERT INTO Enrollments(CID, SID) VALUES (12, 11);
INSERT INTO Enrollments(CID, SID) VALUES (12, 12);
INSERT INTO Enrollments(CID, SID) VALUES (12, 13);
INSERT INTO Enrollments(CID, SID) VALUES (12, 14);
INSERT INTO Enrollments(CID, SID) VALUES (12, 15);
INSERT INTO Enrollments(CID, SID) VALUES (12, 18);
INSERT INTO Enrollments(CID, SID) VALUES (12, 19);
INSERT INTO Enrollments(CID, SID) VALUES (12, 20);
INSERT INTO Enrollments(CID, SID) VALUES (12, 22);
INSERT INTO Enrollments(CID, SID) VALUES (12, 23);
INSERT INTO Enrollments(CID, SID) VALUES (12, 24);
INSERT INTO Enrollments(CID, SID) VALUES (12, 28);
INSERT INTO Enrollments(CID, SID) VALUES (12, 29);
INSERT INTO Enrollments(CID, SID) VALUES (12, 30);