-- INSERT statements for FIR
INSERT INTO FIR VALUES (1, '2024-01-01', '10:00:00', 'Robbery at Main Street');
INSERT INTO FIR VALUES (2, '2024-01-02', '14:30:00', 'Burglary at Central Plaza');

-- INSERT statements for Case
INSERT INTO Case_ VALUES (101, 'Robbery', TRUE, 'Stolen items from shop', 1);
INSERT INTO Case_ VALUES (102, 'Burglary', FALSE, 'Break-in reported', 2);

-- INSERT statements for Evidence
INSERT INTO Evidence VALUES (201, 'CCTV Footage', 'Video clips from shop', 101);
INSERT INTO Evidence VALUES (202, 'Fingerprint', 'Lifted from window', 102);

-- INSERT statements for Judge
INSERT INTO Judge VALUES (301, 'Judge Judy', 'Central Court');
INSERT INTO Judge VALUES (302, 'Judge Dredd', 'District Court');

-- INSERT statements for Judges
INSERT INTO Judges VALUES (101, 301);
INSERT INTO Judges VALUES (102, 302);

-- INSERT statements for Punishment
INSERT INTO Punishment VALUES ('5 years jail', 301, 101);

-- INSERT statements for Lawyer
INSERT INTO Lawyer VALUES (401, 'Alex Smith', 9876543210, 'Criminal');
INSERT INTO Lawyer VALUES (402, 'Maria Garcia', 9876543211, 'Civil');

-- INSERT statements for Represented_by
INSERT INTO Represented_by VALUES (401, 101);
INSERT INTO Represented_by VALUES (402, 102);

-- INSERT statements for Person
INSERT INTO Person VALUES ('ID001', 'John Doe', 9876543212, '123 Main St', 'Saw the thief run away');
INSERT INTO Person VALUES ('ID002', 'Jane Roe', 9876543213, '456 Side St', 'Was inside when it happened');

-- INSERT statements for Involves
INSERT INTO Involves VALUES ('ID001', 101);
INSERT INTO Involves VALUES ('ID002', 102);

-- INSERT statements for Suspect
INSERT INTO Suspect VALUES (501, 'ID001', TRUE);

-- INSERT statements for Witness
INSERT INTO Witness VALUES (601, 'ID002');

-- INSERT statements for Victim
INSERT INTO Victim VALUES (701, 10000, 'Physical injury', 'ID002');

-- INSERT statements for prison
INSERT INTO prison VALUES ('Central Prison', 'City Jail', 200);

-- INSERT statements for Criminal
INSERT INTO Criminal VALUES (801, TRUE, 'ID001', 'Central Prison');

-- INSERT statements for Police_Station
INSERT INTO Police_Station VALUES ('Main Station', 1234567890, 'Downtown PS');

-- INSERT statements for Police_Officer
INSERT INTO Police_Officer VALUES (901, 'Inspector', 'ID001', 'Main Station');

-- INSERT statements for Investigates
INSERT INTO Investigates VALUES ('ID001', 901, 'Found clue', '2024-01-03', '2024-01-01');
