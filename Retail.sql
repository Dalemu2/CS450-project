CREATE TABLE Retail
(
Did char(3) UNIQUE,
FOREIGN KEY(Did) REFERENCES Department(Did)
);

INSERT INTO Retail VALUES ('D04');
INSERT INTO Retail VALUES ('D05');
INSERT INTO Retail VALUES ('D06');
INSERT INTO Retail VALUES ('D07');