CREATE TABLE Admin
(
Did char(3),
Manager char(3) NOT NULL,
FOREIGN KEY(Did) REFERENCES Department(Did),
FOREIGN KEY(Manager) REFERENCES Employee(Eid)
);


INSERT INTO Admin VALUES ('D01','E05');
INSERT INTO Admin VALUES ('D02','E10');
INSERT INTO Admin VALUES ('D03','E15');
