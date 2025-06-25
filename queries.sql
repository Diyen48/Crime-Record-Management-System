-- Sample Queries

-- Get all FIRs with their related cases
SELECT FIR.FIR_ID, Date, Time, Complaint, Case_ID, Case_Type
FROM FIR
JOIN Case ON FIR.FIR_ID = Case.FIR_ID;

-- Get all evidence collected for a specific case
SELECT Evidence_ID, Description, Collected_Data
FROM Evidence
WHERE Case_ID = 101;

-- Find all judges who worked on any case
SELECT Judge.Name, Court, Case_ID
FROM Judges
JOIN Judge ON Judges.Judge_ID = Judge.Judge_ID;

-- Find all lawyers and their cases
SELECT Lawyer.Name, Specialization, Case_ID
FROM Represented_by
JOIN Lawyer ON Represented_by.Lawyer_ID = Lawyer.Lawyer_ID;

-- Get details of all persons involved in a case
SELECT Person.Name, Statement, Case_ID
FROM Involves
JOIN Person ON Involves.Identity_Proof = Person.Identity_Proof;

-- Get criminal information along with prison details
SELECT Criminal_ID, Wanted_status, Prison_Location, prison.Name
FROM Criminal
JOIN prison ON Criminal.Prison_Location = prison.Prison_Location;

-- Find all officers who investigated a person
SELECT Police_Officer.Officer_ID, Rank, Station_Location, Findings
FROM Investigates
JOIN Police_Officer ON Investigates.Officer_ID = Police_Officer.Officer_ID;
