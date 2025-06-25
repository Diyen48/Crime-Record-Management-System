CREATE TABLE FIR (
    FIR_ID INTEGER PRIMARY KEY,
    Date DATE,
    Time TIME,
    Complaint VARCHAR(100)
);

CREATE TABLE Case_ (
    Case_ID INTEGER PRIMARY KEY,
    Case_Type VARCHAR(50),
    Status BOOLEAN,
    Description VARCHAR(100),
    FIR_ID INTEGER,
    FOREIGN KEY (FIR_ID) REFERENCES FIR(FIR_ID)
);

CREATE TABLE Judge (
    Judge_ID INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Court VARCHAR(50)
);

CREATE TABLE Judges (
    Case_ID INTEGER,
    Judge_ID INTEGER,
    PRIMARY KEY (Case_ID, Judge_ID),
    FOREIGN KEY (Case_ID) REFERENCES Case_(Case_ID),
    FOREIGN KEY (Judge_ID) REFERENCES Judge(Judge_ID)
);

CREATE TABLE Punishment (
    Punishment_Type VARCHAR(50),
    Judge_ID INTEGER,
    Case_ID INTEGER,
    PRIMARY KEY (Judge_ID, Case_ID),
    FOREIGN KEY (Judge_ID) REFERENCES Judge(Judge_ID),
    FOREIGN KEY (Case_ID) REFERENCES Case_(Case_ID)
);

CREATE TABLE Lawyer (
    Lawyer_ID INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Contact CHAR(10),
    Specialization VARCHAR(50)
);

CREATE TABLE Represented_By (
    Lawyer_ID INTEGER,
    Case_ID INTEGER,
    PRIMARY KEY (Lawyer_ID, Case_ID),
    FOREIGN KEY (Lawyer_ID) REFERENCES Lawyer(Lawyer_ID),
    FOREIGN KEY (Case_ID) REFERENCES Case_(Case_ID)
);

CREATE TABLE Evidence (
    Evidence_ID INTEGER PRIMARY KEY,
    Description VARCHAR(100),
    Collected_Data VARCHAR(100),
    Case_ID INTEGER,
    FOREIGN KEY (Case_ID) REFERENCES Case_(Case_ID)
);

CREATE TABLE Person (
    Identity_Proof VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(50),
    Mobile_Number CHAR(10),
    Address VARCHAR(100),
    Statement VARCHAR(200)
);

CREATE TABLE Involves (
    Identity_Proof VARCHAR(50),
    Case_ID INTEGER,
    PRIMARY KEY (Identity_Proof, Case_ID),
    FOREIGN KEY (Identity_Proof) REFERENCES Person(Identity_Proof),
    FOREIGN KEY (Case_ID) REFERENCES Case_(Case_ID)
);

CREATE TABLE Suspect (
    Suspect_ID INTEGER PRIMARY KEY,
    Identity_Proof VARCHAR(50),
    Status BOOLEAN,
    FOREIGN KEY (Identity_Proof) REFERENCES Person(Identity_Proof)
);

CREATE TABLE Prison (
    Prison_Location VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(50),
    Capacity INTEGER
);

CREATE TABLE Criminal (
    Criminal_ID INTEGER PRIMARY KEY,
    Wanted_Status BOOLEAN,
    Identity_Proof VARCHAR(50),
    Prison_Location VARCHAR(50),
    FOREIGN KEY (Identity_Proof) REFERENCES Person(Identity_Proof),
    FOREIGN KEY (Prison_Location) REFERENCES Prison(Prison_Location)
);

CREATE TABLE Witness (
    Witness_ID INTEGER PRIMARY KEY,
    Identity_Proof VARCHAR(50),
    FOREIGN KEY (Identity_Proof) REFERENCES Person(Identity_Proof)
);

CREATE TABLE Victim (
    Victim_ID INTEGER PRIMARY KEY,
    Compensation INTEGER,
    Suffering VARCHAR(100),
    Identity_Proof VARCHAR(50),
    FOREIGN KEY (Identity_Proof) REFERENCES Person(Identity_Proof)
);

CREATE TABLE Police_Station (
    Station_Location VARCHAR(50) PRIMARY KEY,
    Contact_Number CHAR(10),
    Name VARCHAR(50)
);

CREATE TABLE Police_Officer (
    Officer_ID INTEGER PRIMARY KEY,
    Rank VARCHAR(50),
    Identity_Proof VARCHAR(50),
    Station_Location VARCHAR(50),
    FOREIGN KEY (Identity_Proof) REFERENCES Person(Identity_Proof),
    FOREIGN KEY (Station_Location) REFERENCES Police_Station(Station_Location)
);

CREATE TABLE Investigates (
    Identity_Proof VARCHAR(50),
    Officer_ID INTEGER,
    Findings VARCHAR(100),
    Report_Date DATE,
    Results VARCHAR(100),
    PRIMARY KEY (Identity_Proof, Officer_ID),
    FOREIGN KEY (Identity_Proof) REFERENCES Person(Identity_Proof),
    FOREIGN KEY (Officer_ID) REFERENCES Police_Officer(Officer_ID)
);
