CREATE TABLE Students(
    SID INTEGER PRIMARY KEY NOT NULL,
    Name VARCHAR2(100) NOT NULL, 
    Major VARCHAR2(500)
);

CREATE TABLE Projects(
    PID INTEGER PRIMARY KEY NOT NULL,
    P_Name VARCHAR2(500) NOT NULL
);

CREATE TABLE Courses(
    CID INTEGER PRIMARY KEY NOT NULL,
    C_Name VARCHAR2(500) NOT NULL
);

CREATE TABLE Members(
    PID INTEGER NOT NULL,
    SID INTEGER NOT NULL,
    FOREIGN KEY (PID) REFERENCES Projects(PID),
    FOREIGN KEY (SID) REFERENCES Students(SID),
    PRIMARY KEY (PID, SID)
);

CREATE TABLE Enrollments(
    CID INTEGER NOT NULL,
    SID INTEGER NOT NULL,
    FOREIGN KEY (CID) REFERENCES Courses(CID),
    FOREIGN KEY (SID) REFERENCES Students(SID),
    PRIMARY KEY (CID, SID)
);