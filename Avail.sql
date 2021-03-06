CREATE TABLE Avail
(
Sid char(3),
Iid char(3),
Cost INTEGER,
PRIMARY KEY(Sid,Iid),
FOREIGN KEY(Sid) REFERENCES Supplier(Sid),
FOREIGN KEY(Iid) REFERENCES Item(Iid)
);


INSERT INTO Avail VALUES ('S01','I24',36);
INSERT INTO Avail VALUES ('S01','I52',30);
INSERT INTO Avail VALUES ('S01','I44',85);
INSERT INTO Avail VALUES ('S01','I58',45);
INSERT INTO Avail VALUES ('S01','I59',49);
INSERT INTO Avail VALUES ('S01','I55',117);
INSERT INTO Avail VALUES ('S02','I60',132);
INSERT INTO Avail VALUES ('S02','I39',52);
INSERT INTO Avail VALUES ('S02','I17',121);
INSERT INTO Avail VALUES ('S02','I01',38);
INSERT INTO Avail VALUES ('S03','I03',91);
INSERT INTO Avail VALUES ('S03','I09',118);
INSERT INTO Avail VALUES ('S03','I27',63);
INSERT INTO Avail VALUES ('S03','I18',660);
INSERT INTO Avail VALUES ('S03','I13',80);
INSERT INTO Avail VALUES ('S03','I55',67);
INSERT INTO Avail VALUES ('S03','I15',6);
INSERT INTO Avail VALUES ('S03','I47',34);
INSERT INTO Avail VALUES ('S04','I25',52);
INSERT INTO Avail VALUES ('S04','I56',13);
INSERT INTO Avail VALUES ('S04','I57',125);
INSERT INTO Avail VALUES ('S04','I37',13);
INSERT INTO Avail VALUES ('S05','I12',95);
INSERT INTO Avail VALUES ('S05','I51',25);
INSERT INTO Avail VALUES ('S05','I07',42);
INSERT INTO Avail VALUES ('S05','I09',137);
INSERT INTO Avail VALUES ('S05','I04',34);
INSERT INTO Avail VALUES ('S06','I33',10);
INSERT INTO Avail VALUES ('S06','I46',46);
INSERT INTO Avail VALUES ('S06','I31',67);
INSERT INTO Avail VALUES ('S06','I43',37);
INSERT INTO Avail VALUES ('S07','I27',95);
INSERT INTO Avail VALUES ('S07','I53',114);
INSERT INTO Avail VALUES ('S07','I07',6);
INSERT INTO Avail VALUES ('S07','I31',67);
INSERT INTO Avail VALUES ('S07','10',14);
INSERT INTO Avail VALUES ('S08','I26',37);
INSERT INTO Avail VALUES ('S08','I17',60);
INSERT INTO Avail VALUES ('S08','I21',56);
INSERT INTO Avail VALUES ('S08','I33',21);
INSERT INTO Avail VALUES ('S09','I51',92);
INSERT INTO Avail VALUES ('S09','I38',59);
INSERT INTO Avail VALUES ('S09','I53',71);
INSERT INTO Avail VALUES ('S09','I19',20);
INSERT INTO Avail VALUES ('S09','I52',35);
INSERT INTO Avail VALUES ('S09','I41',8);
INSERT INTO Avail VALUES ('S09','I54',114);
INSERT INTO Avail VALUES ('S09','I39',62);
INSERT INTO Avail VALUES ('S09','I45',15);
INSERT INTO Avail VALUES ('S09','I42',94);
INSERT INTO Avail VALUES ('S09','I49',113);
INSERT INTO Avail VALUES ('S09','I11',99);
INSERT INTO Avail VALUES ('S09','I25',83);
INSERT INTO Avail VALUES ('S09','I20',25);
INSERT INTO Avail VALUES ('S10','I35',81);
INSERT INTO Avail VALUES ('S10','I59',37);
INSERT INTO Avail VALUES ('S10','I08',7);
INSERT INTO Avail VALUES ('S10','I41',6);
INSERT INTO Avail VALUES ('S10','I54',117);
INSERT INTO Avail VALUES ('S10','I60',150);
INSERT INTO Avail VALUES ('S11','I57',62);
INSERT INTO Avail VALUES ('S11','I40',104);
INSERT INTO Avail VALUES ('S11','I01',22);
INSERT INTO Avail VALUES ('S11','I51',61);
INSERT INTO Avail VALUES ('S11','I45',15);
INSERT INTO Avail VALUES ('S12','I02',58);
INSERT INTO Avail VALUES ('S12','I06',5);
INSERT INTO Avail VALUES ('S12','I20',25);
INSERT INTO Avail VALUES ('S12','I23',67);
INSERT INTO Avail VALUES ('S12','I12',71);
INSERT INTO Avail VALUES ('S12','I36',79);
INSERT INTO Avail VALUES ('S13','I14',77);
INSERT INTO Avail VALUES ('S13','I47',29);
INSERT INTO Avail VALUES ('S13','I15',28);
INSERT INTO Avail VALUES ('S13','I05',16);
INSERT INTO Avail VALUES ('S13','I57',94);
INSERT INTO Avail VALUES ('S13','I54',73);
INSERT INTO Avail VALUES ('S14','I11',99);
INSERT INTO Avail VALUES ('S14','I23',100);
INSERT INTO Avail VALUES ('S14','I49',113);
INSERT INTO Avail VALUES ('S14','I56',15);
INSERT INTO Avail VALUES ('S14','I05',55);
INSERT INTO Avail VALUES ('S14','I30',11);
INSERT INTO Avail VALUES ('S14','I21',112);
INSERT INTO Avail VALUES ('S14','I29',68);
INSERT INTO Avail VALUES ('S15','I32',47);
INSERT INTO Avail VALUES ('S15','I35',58);
INSERT INTO Avail VALUES ('S15','I03',127);
INSERT INTO Avail VALUES ('S15','I13',68);
INSERT INTO Avail VALUES('S15','I28',31);
INSERT INTO Avail VALUES ('S16','I29',26);
INSERT INTO Avail VALUES ('S16','I43',22);
INSERT INTO Avail VALUES ('S16','I22',81);
INSERT INTO Avail VALUES ('S16','I34',53);
INSERT INTO Avail VALUES ('S16','I48',4);
INSERT INTO Avail VALUES ('S16','I50',5);
INSERT INTO Avail VALUES ('S16','I37',21);
INSERT INTO Avail VALUES ('S16','I55',42);
INSERT INTO Avail VALUES ('S16','I58',22);
INSERT INTO Avail VALUES ('S16','I16',11);
