CREATE TABLE Item
(
Iid char(3),
Description char(15) NOT NULL,
Price INTEGER,
Ship INTEGER,
Qoh INTEGER,
Did char(3) NOT NULL,
PRIMARY KEY(Iid),
FOREIGN KEY(Did) REFERENCES Retail(Did)
);


INSERT INTO Item VALUES ('I01','Shirt',54,12,42,'D04');
INSERT INTO Item VALUES ('I02','Shirt',83,15,92,'D04');
INSERT INTO Item VALUES ('I03','Dress',181,8,48,'D04');
INSERT INTO Item VALUES ('I04','Pants',48,13,4,'D04');
INSERT INTO Item VALUES ('I05','Sweater',79,16,	35,'D04');
INSERT INTO Item VALUES ('I06','Jacket',77,20,85,'D04');
INSERT INTO Item VALUES ('I07','Pants',52,14,14,'D04');
INSERT INTO Item VALUES ('I08','Dress',82,14,26,'D04');
INSERT INTO Item VALUES ('I09','Suit',196,2,37,'D04');
INSERT INTO Item VALUES ('I10','Shoes',48,20,93,'D04');
INSERT INTO Item VALUES ('I11','Coat',141,5,27,'D04');
INSERT INTO Item VALUES ('I12','Dress',119,9,62,'D04');
INSERT INTO Item VALUES ('I13','Jacket',114,3,92,'D04');
INSERT INTO Item VALUES ('I14','Shoes',85,7,79,'D04');
INSERT INTO Item VALUES ('I15','Sandals',40,12,96,'D04');
INSERT INTO Item VALUES ('I16','Glasses',19,13,73,'D05');
INSERT INTO Item VALUES ('I17','CoffeeMaker',151,20,36,'D05');
INSERT INTO Item VALUES ('I18','Blender',110,6,2,'D05');
INSERT INTO Item VALUES ('I19','Toaster',49,7,58,'D05');
INSERT INTO Item VALUES ('I20','Plates',31,13,38,'D05');
INSERT INTO Item VALUES ('I21','Blender',187,13,2,'D05');
INSERT INTO Item VALUES ('I22','Pans',162,14,85,'D05');
INSERT INTO Item VALUES ('I23','Pots',167,7,10,'D05');
INSERT INTO Item VALUES ('I24','Cutlery',52,4,94,'D05');
INSERT INTO Item VALUES ('I25','CoffeeMaker',104,1,41,'D05');
INSERT INTO Item VALUES ('I26','Mixer',187,18,1,'D05');
INSERT INTO Item VALUES ('I27','Mixer',105,15,14,'D05');
INSERT INTO Item VALUES ('I28','Plates',44,7,70,'D05');
INSERT INTO Item VALUES ('I29','Cutlery',85,10,84,'D05');
INSERT INTO Item VALUES ('I30','Glasses',18,13,7,'D05');
INSERT INTO Item VALUES ('I31','HardDisk',134,13,43,'D06');
INSERT INTO Item VALUES ('I32','Tablet',156,20,83,'D06');
INSERT INTO Item VALUES ('I33','Switch',26,5,75,'D06');
INSERT INTO Item VALUES ('I34','Printer',133,7,10,'D06');
INSERT INTO Item VALUES ('I35','Printer',115,12,1,'D06');
INSERT INTO Item VALUES ('I36','Telephone',158,15,42,'D06');
INSERT INTO Item VALUES ('I37','Charger',26,5,2,'D06');
INSERT INTO Item VALUES ('I38','Tablet',195,7,77,'D06');
INSERT INTO Item VALUES ('I39','HardDisk',104,7,89,'D06');
INSERT INTO Item VALUES ('I40','Camera',148,2,11,'D06');
INSERT INTO Item VALUES ('I41','Cable',12,2,10,'D06');
INSERT INTO Item VALUES ('I42','Camera',187,16,78,'D06');
INSERT INTO Item VALUES ('I43','Router',74,16,90,'D06');
INSERT INTO Item VALUES ('I44','Telephone',169,10,51,'D06');
INSERT INTO Item VALUES ('I45','Earphones',30,10,6,'D06');
INSERT INTO Item VALUES ('I46','Earphones',77,13,95,'D07');
INSERT INTO Item VALUES ('I47','Lock',48,13,82,'D07');
INSERT INTO Item VALUES ('I48','Pliers',7,14,91,'D07');
INSERT INTO Item VALUES ('I49','LawnMower',188,19,73,'D07');
INSERT INTO Item VALUES ('I50','Screwdriver',9,2,57,'D07');
INSERT INTO Item VALUES ('I51','Sink',102,15,41,'D07');
INSERT INTO Item VALUES ('I52','Saw',50,5,26,'D07');
INSERT INTO Item VALUES ('I53','Sink',142,10,22,'D07');
INSERT INTO Item VALUES ('I54','LawnMower',146,2,94,'D07');
INSERT INTO Item VALUES ('I55','Faucet',84,20,34,'D07');
INSERT INTO Item VALUES ('I56','Hammer',19,3,60,'D07');
INSERT INTO Item VALUES ('I57','Drill',156,4,11,'D07');
INSERT INTO Item VALUES ('I58','Sander',56,11,82,'D07');
INSERT INTO Item VALUES ('I59','Saw',61,3,36,'D07');
INSERT INTO Item VALUES ('I60','Drill',188,2,94,'D07');
