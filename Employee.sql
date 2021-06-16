CREATE TABLE Employee
(
Eid char(3),
Ename char(15) NOT NULL,
Did char(3) NOT NULL,
PRIMARY KEY(Eid),
FOREIGN KEY(Did) REFERENCES Department(Did)
);


INSERT INTO Employee VALUES ('E01','Atkins','D04');
INSERT INTO Employee VALUES ('E02','Garrison','D02');
INSERT INTO Employee VALUES ('E03','Maynard','D05');
INSERT INTO Employee VALUES ('E04','Conley','D02');
INSERT INTO Employee VALUES ('E05','Soto','D01');
INSERT INTO Employee VALUES ('E06','Pierce','D02');
INSERT INTO Employee VALUES ('E07','Gallegos','D01');
INSERT INTO Employee VALUES ('E08','Mcbride','D05');
INSERT INTO Employee VALUES ('E09','Gill','D01');
INSERT INTO Employee VALUES ('E10','Sexton','D02');
INSERT INTO Employee VALUES ('E11','Glass','D04');
INSERT INTO Employee VALUES ('E12','Arias','D06');
INSERT INTO Employee VALUES ('E13','Thompson','D05');
INSERT INTO Employee VALUES ('E14','Owens','D06');
INSERT INTO Employee VALUES ('E15','Shelton','D03');
INSERT INTO Employee VALUES ('E16','Chang','D06');
INSERT INTO Employee VALUES ('E17','Dalton','D03');
INSERT INTO Employee VALUES ('E18','Walsh','D07');
INSERT INTO Employee VALUES ('E19','Johnston','D07');
INSERT INTO Employee VALUES ('E20','Garcia','D04');
