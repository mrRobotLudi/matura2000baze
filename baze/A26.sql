/*
	CREATE DATABASE A26;
	USE A26;
*/

CREATE TABLE Tip_Sobe(
	tip_sobeID int IDENTITY(1,1),
	tip_sobe varchar(100)
);

CREATE TABLE Soba(
	sobaID int IDENTITY(1,1),
	tip_sobeID int,
	sprat int,
	napomena text
);

CREATE TABLE Gost(
	gostID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70),
	adresa varchar(100),
	email varchar(40),
	telefon varchar(30),
	datum_rodjenja date
);

CREATE TABLE Musterija(
	musterijaID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70),
	adresa varchar(100),
	email varchar(40),
	telefon varchar(30),
	datum_rodjenja date
);

CREATE TABLE Nacin_Placanja(
	nacin_placanjaID int IDENTITY(1,1),
	nacin_placanja varchar(50)
);

CREATE TABLE Rezervacija(
	ugovorID int IDENTITY(1,1),
	musterijaID int,
	datum_rezervisanja date,
	pocetak_usluge date,
	kraj_usluge date,
	rok_za_uplatu date,
	ukupno_za_uplatu float
);

CREATE TABLE Rezervacija_Sobe(
	ugovorID int not null,
	sobaID int not null,
	gostID int not null
);

CREATE TABLE Uplata(
	uplataID int IDENTITY(1,1),
	ugovorID int,
	nacin_placanjaID int,
	iznos float
);

/*Primary keys*/

ALTER TABLE Tip_Sobe ADD CONSTRAINT PK_Tip_Sobe PRIMARY KEY (tip_sobeID);
ALTER TABLE Soba ADD CONSTRAINT PK_Soba PRIMARY KEY (sobaID);
ALTER TABLE Gost ADD CONSTRAINT PK_Gost PRIMARY KEY (gostID);
ALTER TABLE Musterija ADD CONSTRAINT PK_Musterija PRIMARY KEY (musterijaID);
ALTER TABLE Rezervacija ADD CONSTRAINT PK_Rezervacija PRIMARY KEY (ugovorID);
ALTER TABLE Rezervacija_Sobe ADD CONSTRAINT PK_Rezervacija_Sobe PRIMARY KEY (ugovorID,sobaID,gostID);
ALTER TABLE Nacin_Placanja ADD CONSTRAINT PK_Nacin_Placanja PRIMARY KEY (nacin_placanjaID);
ALTER TABLE Uplata ADD CONSTRAINT PK_Uplata PRIMARY KEY (uplataID);

INSERT INTO Tip_Sobe VALUES
	('Jednokrevetna'),
	('Dvokrevetna'),
	('Trokrevetna'),
	('Cevorokrevetna'),
	('Studio'),
	('VIP');

INSERT INTO Soba VALUES
	(4,1,'Napomena'),
	(1,1,'Napomena'),
	(4,1,'Napomena'),
	(6,1,'Napomena'),
	(4,1,'Napomena'),
	(2,1,'Napomena'),
	(5,1,'Napomena'),
	(6,1,'Napomena'),
	(2,1,'Napomena'),
	(5,1,'Napomena'),
	(4,1,'Napomena'),
	(4,1,'Napomena'),
	(5,1,'Napomena'),
	(5,1,'Napomena'),
	(5,1,'Napomena'),
	(6,1,'Napomena'),
	(5,1,'Napomena'),
	(4,1,'Napomena'),
	(4,1,'Napomena'),
	(6,1,'Napomena'),
	(1,2,'Napomena'),
	(1,2,'Napomena'),
	(5,2,'Napomena'),
	(4,2,'Napomena'),
	(3,2,'Napomena'),
	(3,2,'Napomena'),
	(1,2,'Napomena'),
	(1,2,'Napomena'),
	(1,2,'Napomena'),
	(4,2,'Napomena'),
	(2,2,'Napomena'),
	(3,2,'Napomena'),
	(5,2,'Napomena'),
	(1,2,'Napomena'),
	(5,2,'Napomena'),
	(2,2,'Napomena'),
	(2,2,'Napomena'),
	(5,2,'Napomena'),
	(2,2,'Napomena'),
	(4,2,'Napomena'),
	(5,3,'Napomena'),
	(4,3,'Napomena'),
	(2,3,'Napomena'),
	(5,3,'Napomena'),
	(2,3,'Napomena'),
	(5,3,'Napomena'),
	(3,3,'Napomena'),
	(2,3,'Napomena'),
	(3,3,'Napomena'),
	(2,3,'Napomena'),
	(4,3,'Napomena'),
	(1,3,'Napomena'),
	(1,3,'Napomena'),
	(1,3,'Napomena'),
	(3,3,'Napomena'),
	(4,3,'Napomena'),
	(3,3,'Napomena'),
	(6,3,'Napomena'),
	(4,3,'Napomena'),
	(2,3,'Napomena'),
	(1,4,'Napomena'),
	(5,4,'Napomena'),
	(6,4,'Napomena'),
	(5,4,'Napomena'),
	(3,4,'Napomena'),
	(2,4,'Napomena'),
	(6,4,'Napomena'),
	(4,4,'Napomena'),
	(1,4,'Napomena'),
	(3,4,'Napomena'),
	(4,4,'Napomena'),
	(6,4,'Napomena'),
	(3,4,'Napomena'),
	(6,4,'Napomena'),
	(1,4,'Napomena'),
	(4,4,'Napomena'),
	(5,4,'Napomena'),
	(6,4,'Napomena'),
	(3,4,'Napomena'),
	(5,4,'Napomena'),
	(6,5,'Napomena'),
	(6,5,'Napomena'),
	(5,5,'Napomena'),
	(6,5,'Napomena'),
	(6,5,'Napomena'),
	(1,5,'Napomena'),
	(2,5,'Napomena'),
	(4,5,'Napomena'),
	(5,5,'Napomena'),
	(1,5,'Napomena'),
	(6,5,'Napomena'),
	(3,5,'Napomena'),
	(2,5,'Napomena'),
	(1,5,'Napomena'),
	(3,5,'Napomena'),
	(6,5,'Napomena'),
	(5,5,'Napomena'),
	(3,5,'Napomena'),
	(2,5,'Napomena'),
	(6,5,'Napomena');

INSERT INTO Gost VALUES
	('Gost1','Gost1','Adresa1','gost1@gmail.com','061123123','1995.6.9'),
	('Gost2','Gost2','Adresa2','gost2@gmail.com','061123123','1993.7.12'),
	('Gost3','Gost3','Adresa3','gost3@gmail.com','061123123','1995.8.29'),
	('Gost4','Gost4','Adresa4','gost4@gmail.com','061123123','1992.3.13'),
	('Gost5','Gost5','Adresa5','gost5@gmail.com','061123123','1991.6.1'),
	('Gost6','Gost6','Adresa6','gost6@gmail.com','061123123','1995.9.5'),
	('Gost7','Gost7','Adresa7','gost7@gmail.com','061123123','1991.7.12'),
	('Gost8','Gost8','Adresa8','gost8@gmail.com','061123123','1990.5.1'),
	('Gost9','Gost9','Adresa9','gost9@gmail.com','061123123','1996.7.10'),
	('Gost10','Gost10','Adresa10','gost10@gmail.com','061123123','1993.5.9'),
	('Gost11','Gost11','Adresa11','gost11@gmail.com','061123123','1995.3.16'),
	('Gost12','Gost12','Adresa12','gost12@gmail.com','061123123','1998.3.16'),
	('Gost13','Gost13','Adresa13','gost13@gmail.com','061123123','1997.9.13'),
	('Gost14','Gost14','Adresa14','gost14@gmail.com','061123123','1997.8.25'),
	('Gost15','Gost15','Adresa15','gost15@gmail.com','061123123','1995.6.6'),
	('Gost16','Gost16','Adresa16','gost16@gmail.com','061123123','1994.4.18'),
	('Gost17','Gost17','Adresa17','gost17@gmail.com','061123123','1992.7.8'),
	('Gost18','Gost18','Adresa18','gost18@gmail.com','061123123','1998.9.23'),
	('Gost19','Gost19','Adresa19','gost19@gmail.com','061123123','1994.9.25'),
	('Gost20','Gost20','Adresa20','gost20@gmail.com','061123123','1994.7.16'),
	('Gost21','Gost21','Adresa21','gost21@gmail.com','061123123','1990.3.26'),
	('Gost22','Gost22','Adresa22','gost22@gmail.com','061123123','1991.7.4'),
	('Gost23','Gost23','Adresa23','gost23@gmail.com','061123123','1995.3.20'),
	('Gost24','Gost24','Adresa24','gost24@gmail.com','061123123','1997.3.3'),
	('Gost25','Gost25','Adresa25','gost25@gmail.com','061123123','1997.5.8'),
	('Gost26','Gost26','Adresa26','gost26@gmail.com','061123123','1995.8.18'),
	('Gost27','Gost27','Adresa27','gost27@gmail.com','061123123','1996.7.16'),
	('Gost28','Gost28','Adresa28','gost28@gmail.com','061123123','1996.6.11'),
	('Gost29','Gost29','Adresa29','gost29@gmail.com','061123123','1999.8.10'),
	('Gost30','Gost30','Adresa30','gost30@gmail.com','061123123','1996.5.9'),
	('Gost31','Gost31','Adresa31','gost31@gmail.com','061123123','1997.6.9'),
	('Gost32','Gost32','Adresa32','gost32@gmail.com','061123123','1992.5.2'),
	('Gost33','Gost33','Adresa33','gost33@gmail.com','061123123','1991.5.28'),
	('Gost34','Gost34','Adresa34','gost34@gmail.com','061123123','1997.9.11'),
	('Gost35','Gost35','Adresa35','gost35@gmail.com','061123123','1998.4.10'),
	('Gost36','Gost36','Adresa36','gost36@gmail.com','061123123','1999.8.27'),
	('Gost37','Gost37','Adresa37','gost37@gmail.com','061123123','1992.3.11'),
	('Gost38','Gost38','Adresa38','gost38@gmail.com','061123123','1995.4.8'),
	('Gost39','Gost39','Adresa39','gost39@gmail.com','061123123','1990.3.1'),
	('Gost40','Gost40','Adresa40','gost40@gmail.com','061123123','1995.7.1'),
	('Gost41','Gost41','Adresa41','gost41@gmail.com','061123123','1994.8.16'),
	('Gost42','Gost42','Adresa42','gost42@gmail.com','061123123','1993.6.12'),
	('Gost43','Gost43','Adresa43','gost43@gmail.com','061123123','1997.9.28'),
	('Gost44','Gost44','Adresa44','gost44@gmail.com','061123123','1993.7.21'),
	('Gost45','Gost45','Adresa45','gost45@gmail.com','061123123','1996.8.7'),
	('Gost46','Gost46','Adresa46','gost46@gmail.com','061123123','1990.5.3'),
	('Gost47','Gost47','Adresa47','gost47@gmail.com','061123123','1990.6.18'),
	('Gost48','Gost48','Adresa48','gost48@gmail.com','061123123','1990.9.27'),
	('Gost49','Gost49','Adresa49','gost49@gmail.com','061123123','1996.7.21'),
	('Gost50','Gost50','Adresa50','gost50@gmail.com','061123123','1999.6.17'),
	('Gost51','Gost51','Adresa51','gost51@gmail.com','061123123','1999.5.10'),
	('Gost52','Gost52','Adresa52','gost52@gmail.com','061123123','1992.5.23'),
	('Gost53','Gost53','Adresa53','gost53@gmail.com','061123123','1994.9.18'),
	('Gost54','Gost54','Adresa54','gost54@gmail.com','061123123','1992.6.29'),
	('Gost55','Gost55','Adresa55','gost55@gmail.com','061123123','1994.8.12'),
	('Gost56','Gost56','Adresa56','gost56@gmail.com','061123123','1990.9.1'),
	('Gost57','Gost57','Adresa57','gost57@gmail.com','061123123','1991.6.18'),
	('Gost58','Gost58','Adresa58','gost58@gmail.com','061123123','1993.4.27'),
	('Gost59','Gost59','Adresa59','gost59@gmail.com','061123123','1999.3.11'),
	('Gost60','Gost60','Adresa60','gost60@gmail.com','061123123','1992.5.10'),
	('Gost61','Gost61','Adresa61','gost61@gmail.com','061123123','1999.7.17'),
	('Gost62','Gost62','Adresa62','gost62@gmail.com','061123123','1996.5.11'),
	('Gost63','Gost63','Adresa63','gost63@gmail.com','061123123','1997.3.23'),
	('Gost64','Gost64','Adresa64','gost64@gmail.com','061123123','1995.6.26'),
	('Gost65','Gost65','Adresa65','gost65@gmail.com','061123123','1996.6.20'),
	('Gost66','Gost66','Adresa66','gost66@gmail.com','061123123','1993.7.28'),
	('Gost67','Gost67','Adresa67','gost67@gmail.com','061123123','1993.3.15'),
	('Gost68','Gost68','Adresa68','gost68@gmail.com','061123123','1998.3.26'),
	('Gost69','Gost69','Adresa69','gost69@gmail.com','061123123','1994.4.13'),
	('Gost70','Gost70','Adresa70','gost70@gmail.com','061123123','1995.8.15'),
	('Gost71','Gost71','Adresa71','gost71@gmail.com','061123123','1999.6.28'),
	('Gost72','Gost72','Adresa72','gost72@gmail.com','061123123','1998.8.22'),
	('Gost73','Gost73','Adresa73','gost73@gmail.com','061123123','1994.5.26'),
	('Gost74','Gost74','Adresa74','gost74@gmail.com','061123123','1996.9.21'),
	('Gost75','Gost75','Adresa75','gost75@gmail.com','061123123','1994.5.9'),
	('Gost76','Gost76','Adresa76','gost76@gmail.com','061123123','1993.6.6'),
	('Gost77','Gost77','Adresa77','gost77@gmail.com','061123123','1999.7.5'),
	('Gost78','Gost78','Adresa78','gost78@gmail.com','061123123','1994.9.14'),
	('Gost79','Gost79','Adresa79','gost79@gmail.com','061123123','1995.8.18'),
	('Gost80','Gost80','Adresa80','gost80@gmail.com','061123123','1995.3.11');

INSERT INTO Musterija VALUES
	('Musterija1','Musterija1','Adresa1','musterija1@gmail.com','061123123','1997.5.22'),
	('Musterija2','Musterija2','Adresa2','musterija2@gmail.com','061123123','1992.7.28'),
	('Musterija3','Musterija3','Adresa3','musterija3@gmail.com','061123123','1990.4.1'),
	('Musterija4','Musterija4','Adresa4','musterija4@gmail.com','061123123','1994.4.3'),
	('Musterija5','Musterija5','Adresa5','musterija5@gmail.com','061123123','1992.6.7'),
	('Musterija6','Musterija6','Adresa6','musterija6@gmail.com','061123123','1995.9.21'),
	('Musterija7','Musterija7','Adresa7','musterija7@gmail.com','061123123','1999.6.10'),
	('Musterija8','Musterija8','Adresa8','musterija8@gmail.com','061123123','1995.8.22'),
	('Musterija9','Musterija9','Adresa9','musterija9@gmail.com','061123123','1996.9.26'),
	('Musterija10','Musterija10','Adresa10','musterija10@gmail.com','061123123','1995.6.16'),
	('Musterija11','Musterija11','Adresa11','musterija11@gmail.com','061123123','1997.7.13'),
	('Musterija12','Musterija12','Adresa12','musterija12@gmail.com','061123123','1995.8.1'),
	('Musterija13','Musterija13','Adresa13','musterija13@gmail.com','061123123','1996.9.18'),
	('Musterija14','Musterija14','Adresa14','musterija14@gmail.com','061123123','1990.6.17'),
	('Musterija15','Musterija15','Adresa15','musterija15@gmail.com','061123123','1996.3.11'),
	('Musterija16','Musterija16','Adresa16','musterija16@gmail.com','061123123','1995.7.21'),
	('Musterija17','Musterija17','Adresa17','musterija17@gmail.com','061123123','1999.4.3'),
	('Musterija18','Musterija18','Adresa18','musterija18@gmail.com','061123123','1991.5.9'),
	('Musterija19','Musterija19','Adresa19','musterija19@gmail.com','061123123','1993.8.27'),
	('Musterija20','Musterija20','Adresa20','musterija20@gmail.com','061123123','1993.3.10'),
	('Musterija21','Musterija21','Adresa21','musterija21@gmail.com','061123123','1998.6.10'),
	('Musterija22','Musterija22','Adresa22','musterija22@gmail.com','061123123','1990.7.6'),
	('Musterija23','Musterija23','Adresa23','musterija23@gmail.com','061123123','1993.5.9'),
	('Musterija24','Musterija24','Adresa24','musterija24@gmail.com','061123123','1993.7.19'),
	('Musterija25','Musterija25','Adresa25','musterija25@gmail.com','061123123','1991.7.16'),
	('Musterija26','Musterija26','Adresa26','musterija26@gmail.com','061123123','1999.7.26'),
	('Musterija27','Musterija27','Adresa27','musterija27@gmail.com','061123123','1999.6.8'),
	('Musterija28','Musterija28','Adresa28','musterija28@gmail.com','061123123','1990.6.29'),
	('Musterija29','Musterija29','Adresa29','musterija29@gmail.com','061123123','1991.9.18'),
	('Musterija30','Musterija30','Adresa30','musterija30@gmail.com','061123123','1994.5.9'),
	('Musterija31','Musterija31','Adresa31','musterija31@gmail.com','061123123','1994.9.28'),
	('Musterija32','Musterija32','Adresa32','musterija32@gmail.com','061123123','1995.9.10'),
	('Musterija33','Musterija33','Adresa33','musterija33@gmail.com','061123123','1994.7.20'),
	('Musterija34','Musterija34','Adresa34','musterija34@gmail.com','061123123','1998.7.11'),
	('Musterija35','Musterija35','Adresa35','musterija35@gmail.com','061123123','1996.6.2'),
	('Musterija36','Musterija36','Adresa36','musterija36@gmail.com','061123123','1996.3.9'),
	('Musterija37','Musterija37','Adresa37','musterija37@gmail.com','061123123','1999.8.18'),
	('Musterija38','Musterija38','Adresa38','musterija38@gmail.com','061123123','1991.5.6'),
	('Musterija39','Musterija39','Adresa39','musterija39@gmail.com','061123123','1996.4.29'),
	('Musterija40','Musterija40','Adresa40','musterija40@gmail.com','061123123','1991.5.21'),
	('Musterija41','Musterija41','Adresa41','musterija41@gmail.com','061123123','1994.3.17'),
	('Musterija42','Musterija42','Adresa42','musterija42@gmail.com','061123123','1999.7.22'),
	('Musterija43','Musterija43','Adresa43','musterija43@gmail.com','061123123','1999.3.4'),
	('Musterija44','Musterija44','Adresa44','musterija44@gmail.com','061123123','1997.6.9'),
	('Musterija45','Musterija45','Adresa45','musterija45@gmail.com','061123123','1998.7.17'),
	('Musterija46','Musterija46','Adresa46','musterija46@gmail.com','061123123','1996.9.18'),
	('Musterija47','Musterija47','Adresa47','musterija47@gmail.com','061123123','1992.7.19'),
	('Musterija48','Musterija48','Adresa48','musterija48@gmail.com','061123123','1997.4.7'),
	('Musterija49','Musterija49','Adresa49','musterija49@gmail.com','061123123','1991.7.13'),
	('Musterija50','Musterija50','Adresa50','musterija50@gmail.com','061123123','1994.9.23');

INSERT INTO Rezervacija VALUES
(1,'2020.5.8','2020.8.11','2020.8.12','2020.8.10',5000.00),
(1,'2018.3.10','2018.6.13','2018.6.15','2018.6.13',6000.00),
(1,'2015.6.11','2015.9.14','2015.9.17','2015.9.15',7000.00),
(2,'2016.7.6','2016.8.7','2016.8.8','2016.8.6',5000.00),
(3,'2021.6.9','2021.8.11','2021.8.12','2021.8.10',5000.00),
(3,'2017.5.9','2017.7.11','2017.7.13','2017.7.11',6000.00),
(4,'2021.4.12','2021.7.15','2021.7.16','2021.7.14',5000.00),
(4,'2018.7.9','2018.10.12','2018.10.14','2018.10.12',6000.00),
(4,'2018.4.9','2018.7.12','2018.7.15','2018.7.13',7000.00),
(5,'2019.4.11','2019.7.14','2019.7.15','2019.7.13',5000.00),
(5,'2016.3.11','2016.6.14','2016.6.16','2016.6.14',6000.00),
(5,'2020.6.11','2020.9.14','2020.9.17','2020.9.15',7000.00),
(6,'2015.7.10','2015.8.11','2015.8.12','2015.8.10',5000.00),
(7,'2020.3.5','2020.5.7','2020.5.8','2020.5.6',5000.00),
(7,'2021.6.14','2021.8.16','2021.8.18','2021.8.16',6000.00),
(8,'2015.4.6','2015.6.8','2015.6.9','2015.6.7',5000.00),
(8,'2020.4.11','2020.6.13','2020.6.15','2020.6.13',6000.00),
(9,'2017.3.11','2017.7.15','2017.7.16','2017.7.14',5000.00),
(9,'2017.3.8','2017.7.12','2017.7.14','2017.7.12',6000.00),
(9,'2019.5.9','2019.9.13','2019.9.16','2019.9.14',7000.00),
(9,'2015.6.5','2015.10.9','2015.10.13','2015.10.11',8000.00),
(10,'2019.6.7','2019.9.10','2019.9.11','2019.9.9',5000.00),
(10,'2018.3.12','2018.6.15','2018.6.17','2018.6.15',6000.00),
(10,'2017.6.11','2017.9.14','2017.9.17','2017.9.15',7000.00),
(11,'2019.5.10','2019.7.12','2019.7.13','2019.7.11',5000.00),
(11,'2016.5.14','2016.7.16','2016.7.18','2016.7.16',6000.00),
(12,'2018.7.14','2018.9.16','2018.9.17','2018.9.15',5000.00),
(12,'2021.5.9','2021.7.11','2021.7.13','2021.7.11',6000.00),
(13,'2019.6.6','2019.9.9','2019.9.10','2019.9.8',5000.00),
(13,'2020.4.11','2020.7.14','2020.7.16','2020.7.14',6000.00),
(13,'2021.3.12','2021.6.15','2021.6.18','2021.6.16',7000.00),
(14,'2020.4.6','2020.6.8','2020.6.9','2020.6.7',5000.00),
(14,'2019.6.9','2019.8.11','2019.8.13','2019.8.11',6000.00),
(15,'2016.6.13','2016.8.15','2016.8.16','2016.8.14',5000.00),
(15,'2015.7.10','2015.9.12','2015.9.14','2015.9.12',6000.00),
(16,'2016.6.5','2016.7.6','2016.7.7','2016.7.5',5000.00),
(17,'2020.3.12','2020.6.15','2020.6.16','2020.6.14',5000.00),
(17,'2016.4.11','2016.7.14','2016.7.16','2016.7.14',6000.00),
(17,'2021.5.11','2021.8.14','2021.8.17','2021.8.15',7000.00),
(18,'2017.7.9','2017.10.12','2017.10.13','2017.10.11',5000.00),
(18,'2018.6.7','2018.9.10','2018.9.12','2018.9.10',6000.00),
(18,'2017.3.12','2017.6.15','2017.6.18','2017.6.16',7000.00),
(19,'2020.5.12','2020.9.16','2020.9.17','2020.9.15',5000.00),
(19,'2019.6.11','2019.10.15','2019.10.17','2019.10.15',6000.00),
(19,'2018.6.5','2018.10.9','2018.10.12','2018.10.10',7000.00),
(19,'2015.6.11','2015.10.15','2015.10.19','2015.10.17',8000.00),
(20,'2016.4.12','2016.7.15','2016.7.16','2016.7.14',5000.00),
(20,'2018.6.6','2018.9.9','2018.9.11','2018.9.9',6000.00),
(20,'2018.6.5','2018.9.8','2018.9.11','2018.9.9',7000.00),
(21,'2019.6.11','2019.10.15','2019.10.16','2019.10.14',5000.00),
(21,'2017.6.7','2017.10.11','2017.10.13','2017.10.11',6000.00),
(21,'2017.6.5','2017.10.9','2017.10.12','2017.10.10',7000.00),
(21,'2021.4.13','2021.8.17','2021.8.21','2021.8.19',8000.00),
(22,'2017.3.9','2017.5.11','2017.5.12','2017.5.10',5000.00),
(22,'2019.3.7','2019.5.9','2019.5.11','2019.5.9',6000.00),
(23,'2019.7.12','2019.9.14','2019.9.15','2019.9.13',5000.00),
(23,'2017.4.6','2017.6.8','2017.6.10','2017.6.8',6000.00),
(24,'2020.6.5','2020.7.6','2020.7.7','2020.7.5',5000.00),
(25,'2015.6.11','2015.7.12','2015.7.13','2015.7.11',5000.00),
(26,'2021.3.7','2021.4.8','2021.4.9','2021.4.7',5000.00),
(27,'2018.6.7','2018.10.11','2018.10.12','2018.10.10',5000.00),
(27,'2018.7.9','2018.11.13','2018.11.15','2018.11.13',6000.00),
(27,'2017.7.8','2017.11.12','2017.11.15','2017.11.13',7000.00),
(27,'2018.4.10','2018.8.14','2018.8.18','2018.8.16',8000.00),
(28,'2018.5.7','2018.7.9','2018.7.10','2018.7.8',5000.00),
(28,'2020.3.8','2020.5.10','2020.5.12','2020.5.10',6000.00),
(29,'2018.4.10','2018.5.11','2018.5.12','2018.5.10',5000.00),
(30,'2015.6.6','2015.7.7','2015.7.8','2015.7.6',5000.00),
(31,'2019.4.6','2019.5.7','2019.5.8','2019.5.6',5000.00),
(32,'2017.3.12','2017.5.14','2017.5.15','2017.5.13',5000.00),
(32,'2020.4.9','2020.6.11','2020.6.13','2020.6.11',6000.00),
(33,'2021.7.6','2021.11.10','2021.11.11','2021.11.9',5000.00),
(33,'2019.4.9','2019.8.13','2019.8.15','2019.8.13',6000.00),
(33,'2018.6.10','2018.10.14','2018.10.17','2018.10.15',7000.00),
(33,'2016.5.8','2016.9.12','2016.9.16','2016.9.14',8000.00),
(34,'2019.3.9','2019.7.13','2019.7.14','2019.7.12',5000.00),
(34,'2016.3.7','2016.7.11','2016.7.13','2016.7.11',6000.00),
(34,'2018.3.7','2018.7.11','2018.7.14','2018.7.12',7000.00),
(34,'2017.4.5','2017.8.9','2017.8.13','2017.8.11',8000.00),
(35,'2021.4.7','2021.6.9','2021.6.10','2021.6.8',5000.00),
(35,'2020.7.13','2020.9.15','2020.9.17','2020.9.15',6000.00),
(36,'2015.5.7','2015.7.9','2015.7.10','2015.7.8',5000.00),
(36,'2017.5.8','2017.7.10','2017.7.12','2017.7.10',6000.00),
(37,'2018.3.11','2018.6.14','2018.6.15','2018.6.13',5000.00),
(37,'2021.3.5','2021.6.8','2021.6.10','2021.6.8',6000.00),
(37,'2017.6.6','2017.9.9','2017.9.12','2017.9.10',7000.00),
(38,'2018.5.6','2018.9.10','2018.9.11','2018.9.9',5000.00),
(38,'2021.7.11','2021.11.15','2021.11.17','2021.11.15',6000.00),
(38,'2018.7.10','2018.11.14','2018.11.17','2018.11.15',7000.00),
(38,'2021.5.7','2021.9.11','2021.9.15','2021.9.13',8000.00),
(39,'2020.4.11','2020.6.13','2020.6.14','2020.6.12',5000.00),
(39,'2021.6.7','2021.8.9','2021.8.11','2021.8.9',6000.00),
(40,'2015.6.13','2015.10.17','2015.10.18','2015.10.16',5000.00),
(40,'2019.7.5','2019.11.9','2019.11.11','2019.11.9',6000.00),
(40,'2019.5.5','2019.9.9','2019.9.12','2019.9.10',7000.00),
(40,'2015.3.7','2015.7.11','2015.7.15','2015.7.13',8000.00),
(41,'2018.3.7','2018.4.8','2018.4.9','2018.4.7',5000.00),
(42,'2017.4.13','2017.7.16','2017.7.17','2017.7.15',5000.00),
(42,'2020.5.14','2020.8.17','2020.8.19','2020.8.17',6000.00),
(42,'2017.3.7','2017.6.10','2017.6.13','2017.6.11',7000.00),
(43,'2021.5.10','2021.8.13','2021.8.14','2021.8.12',5000.00),
(43,'2015.5.9','2015.8.12','2015.8.14','2015.8.12',6000.00),
(43,'2016.6.14','2016.9.17','2016.9.20','2016.9.18',7000.00),
(44,'2018.7.12','2018.11.16','2018.11.17','2018.11.15',5000.00),
(44,'2015.3.12','2015.7.16','2015.7.18','2015.7.16',6000.00),
(44,'2018.7.7','2018.11.11','2018.11.14','2018.11.12',7000.00),
(44,'2016.7.11','2016.11.15','2016.11.19','2016.11.17',8000.00),
(45,'2021.5.9','2021.6.10','2021.6.11','2021.6.9',5000.00),
(46,'2016.5.11','2016.7.13','2016.7.14','2016.7.12',5000.00),
(46,'2017.6.12','2017.8.14','2017.8.16','2017.8.14',6000.00),
(47,'2019.7.10','2019.9.12','2019.9.13','2019.9.11',5000.00),
(47,'2015.5.13','2015.7.15','2015.7.17','2015.7.15',6000.00),
(48,'2020.4.9','2020.8.13','2020.8.14','2020.8.12',5000.00),
(48,'2016.5.10','2016.9.14','2016.9.16','2016.9.14',6000.00),
(48,'2020.6.12','2020.10.16','2020.10.19','2020.10.17',7000.00),
(48,'2017.5.12','2017.9.16','2017.9.20','2017.9.18',8000.00),
(49,'2020.4.9','2020.5.10','2020.5.11','2020.5.9',5000.00),
(50,'2018.3.5','2018.6.8','2018.6.9','2018.6.7',5000.00),
(50,'2015.3.7','2015.6.10','2015.6.12','2015.6.10',6000.00),
(50,'2017.7.6','2017.10.9','2017.10.12','2017.10.10',7000.00);

INSERT INTO Rezervacija_Sobe VALUES
	(1,71,49),
	(2,71,33),
	(3,74,19),
	(3,74,41),
	(4,87,71),
	(4,87,48),
	(5,70,77),
	(6,53,79),
	(6,53,5),
	(7,73,12),
	(7,73,48),
	(8,7,60),
	(8,7,51),
	(9,51,45),
	(10,76,46),
	(10,76,26),
	(11,89,10),
	(11,89,37),
	(12,14,74),
	(13,87,45),
	(14,22,53),
	(14,22,34),
	(15,52,49),
	(15,52,42),
	(16,10,79),
	(17,76,13),
	(18,9,9),
	(19,1,19),
	(19,1,79),
	(20,4,14),
	(21,7,65),
	(21,7,6),
	(22,93,4),
	(22,93,28),
	(23,5,55),
	(24,9,17),
	(24,9,54),
	(25,95,30),
	(25,95,52),
	(26,34,28),
	(27,97,9),
	(28,3,4),
	(28,3,31),
	(29,58,61),
	(29,58,15),
	(30,53,50),
	(31,54,50),
	(31,54,16),
	(32,64,16),
	(33,49,41),
	(33,49,1),
	(34,22,2),
	(34,22,23),
	(35,48,46),
	(35,48,67),
	(36,94,69),
	(36,94,78),
	(37,90,1),
	(37,90,78),
	(38,47,74),
	(38,47,53),
	(39,68,4),
	(39,68,23),
	(40,75,36),
	(41,71,12),
	(42,49,48),
	(43,12,67),
	(43,12,30),
	(44,97,22),
	(45,65,78),
	(45,65,55),
	(46,57,57),
	(46,57,24),
	(47,68,45),
	(48,56,69),
	(49,24,13),
	(50,87,70),
	(50,87,3),
	(51,14,33),
	(52,37,30),
	(52,37,75),
	(53,18,49),
	(53,18,23),
	(54,66,3),
	(54,66,77),
	(55,37,35),
	(55,37,68),
	(56,16,30),
	(57,60,14),
	(58,75,48),
	(58,75,71),
	(59,63,39),
	(59,63,8),
	(60,48,41),
	(61,16,39),
	(61,16,16),
	(62,52,70),
	(62,52,6),
	(63,75,73),
	(64,45,43),
	(64,45,64),
	(65,3,66),
	(66,78,9),
	(66,78,66),
	(67,45,50),
	(68,90,41),
	(69,80,33),
	(70,45,11),
	(70,45,17),
	(71,66,23),
	(71,66,52),
	(72,97,26),
	(72,97,34),
	(73,93,12),
	(74,88,26),
	(75,29,29),
	(76,41,61),
	(76,41,65),
	(77,58,35),
	(78,36,8),
	(78,36,39),
	(79,50,22),
	(80,40,48),
	(80,40,30),
	(81,54,20),
	(82,15,40),
	(83,44,57),
	(83,44,16),
	(84,65,53),
	(84,65,28),
	(85,6,69),
	(86,39,33),
	(87,8,68),
	(87,8,2),
	(88,87,68),
	(89,52,53),
	(90,97,23),
	(91,10,60),
	(91,10,10),
	(92,27,21),
	(93,61,70),
	(93,61,20),
	(94,72,36),
	(95,22,36),
	(96,96,1),
	(97,47,24),
	(98,23,9),
	(98,23,23),
	(99,86,73),
	(99,86,4),
	(100,58,29),
	(101,25,30),
	(101,25,75),
	(102,78,11),
	(103,30,17),
	(103,30,49),
	(104,45,34),
	(104,45,57),
	(105,8,20),
	(105,8,16),
	(106,10,40),
	(106,10,64),
	(107,90,26),
	(108,61,1),
	(108,61,56),
	(109,20,41),
	(109,20,29),
	(110,89,68),
	(110,89,41),
	(111,18,71),
	(111,18,52),
	(112,9,7),
	(113,67,69),
	(114,99,68),
	(114,99,64),
	(115,63,22),
	(115,63,17),
	(116,32,4),
	(117,80,42),
	(118,60,31),
	(118,60,33),
	(119,9,54),
	(120,3,45),
	(120,3,20);

INSERT INTO Nacin_Placanja VALUES
	('Kes'),
	('Kartica'),
	('Cek');

INSERT INTO Uplata VALUES
	(1,3,1666.67),
	(1,2,1666.67),
	(1,3,1666.67),
	(2,3,2000),
	(2,3,2000),
	(2,1,2000),
	(3,1,2333.33),
	(3,3,2333.33),
	(3,2,2333.33),
	(4,1,5000),
	(5,1,2500),
	(5,2,2500),
	(6,2,3000),
	(6,3,3000),
	(7,2,1666.67),
	(7,2,1666.67),
	(7,3,1666.67),
	(8,3,2000),
	(8,2,2000),
	(8,3,2000),
	(9,1,2333.33),
	(9,2,2333.33),
	(9,1,2333.33),
	(10,1,1666.67),
	(10,1,1666.67),
	(10,1,1666.67),
	(11,1,2000),
	(11,2,2000),
	(11,1,2000),
	(12,1,2333.33),
	(12,1,2333.33),
	(12,2,2333.33),
	(13,1,5000),
	(14,2,2500),
	(14,3,2500),
	(15,2,3000),
	(15,3,3000),
	(16,1,2500),
	(16,2,2500),
	(17,1,3000),
	(17,1,3000),
	(18,2,1250),
	(18,3,1250),
	(18,1,1250),
	(18,1,1250),
	(19,3,1500),
	(19,3,1500),
	(19,3,1500),
	(19,3,1500),
	(20,3,1750),
	(20,3,1750),
	(20,1,1750),
	(20,2,1750),
	(21,3,2000),
	(21,2,2000),
	(21,1,2000),
	(21,1,2000),
	(22,2,1666.67),
	(22,3,1666.67),
	(22,2,1666.67),
	(23,1,2000),
	(23,2,2000),
	(23,3,2000),
	(24,2,2333.33),
	(24,3,2333.33),
	(24,2,2333.33),
	(25,1,2500),
	(25,3,2500),
	(26,1,3000),
	(26,3,3000),
	(27,2,2500),
	(27,3,2500),
	(28,1,3000),
	(28,1,3000),
	(29,3,1666.67),
	(29,2,1666.67),
	(29,2,1666.67),
	(30,1,2000),
	(30,1,2000),
	(30,1,2000),
	(31,2,2333.33),
	(31,1,2333.33),
	(31,3,2333.33),
	(32,1,2500),
	(32,2,2500),
	(33,3,3000),
	(33,1,3000),
	(34,2,2500),
	(34,1,2500),
	(35,2,3000),
	(35,1,3000),
	(36,2,5000),
	(37,2,1666.67),
	(37,1,1666.67),
	(37,1,1666.67),
	(38,3,2000),
	(38,2,2000),
	(38,2,2000),
	(39,1,2333.33),
	(39,2,2333.33),
	(39,3,2333.33),
	(40,3,1666.67),
	(40,3,1666.67),
	(40,3,1666.67),
	(41,1,2000),
	(41,1,2000),
	(41,3,2000),
	(42,1,2333.33),
	(42,1,2333.33),
	(42,3,2333.33),
	(43,3,1250),
	(43,1,1250),
	(43,1,1250),
	(43,2,1250),
	(44,1,1500),
	(44,3,1500),
	(44,3,1500),
	(44,2,1500),
	(45,3,1750),
	(45,3,1750),
	(45,2,1750),
	(45,2,1750),
	(46,3,2000),
	(46,3,2000),
	(46,3,2000),
	(46,1,2000),
	(47,1,1666.67),
	(47,1,1666.67),
	(47,1,1666.67),
	(48,3,2000),
	(48,1,2000),
	(48,3,2000),
	(49,3,2333.33),
	(49,3,2333.33),
	(49,2,2333.33),
	(50,2,1250),
	(50,2,1250),
	(50,3,1250),
	(50,1,1250),
	(51,2,1500),
	(51,3,1500),
	(51,3,1500),
	(51,2,1500),
	(52,2,1750),
	(52,3,1750),
	(52,3,1750),
	(52,2,1750),
	(53,1,2000),
	(53,3,2000),
	(53,2,2000),
	(53,1,2000),
	(54,3,2500),
	(54,2,2500),
	(55,2,3000),
	(55,3,3000),
	(56,1,2500),
	(56,1,2500),
	(57,1,3000),
	(57,1,3000),
	(58,1,5000),
	(59,3,5000),
	(60,3,5000),
	(61,1,1250),
	(61,1,1250),
	(61,3,1250),
	(61,3,1250),
	(62,1,1500),
	(62,2,1500),
	(62,3,1500),
	(62,3,1500),
	(63,1,1750),
	(63,3,1750),
	(63,2,1750),
	(63,2,1750),
	(64,3,2000),
	(64,3,2000),
	(64,1,2000),
	(64,2,2000),
	(65,1,2500),
	(65,3,2500),
	(66,3,3000),
	(66,1,3000),
	(67,2,5000),
	(68,3,5000),
	(69,3,5000),
	(70,1,2500),
	(70,1,2500),
	(71,2,3000),
	(71,3,3000),
	(72,2,1250),
	(72,1,1250),
	(72,2,1250),
	(72,3,1250),
	(73,3,1500),
	(73,2,1500),
	(73,1,1500),
	(73,2,1500),
	(74,2,1750),
	(74,2,1750),
	(74,3,1750),
	(74,2,1750),
	(75,3,2000),
	(75,1,2000),
	(75,3,2000),
	(75,1,2000),
	(76,1,1250),
	(76,2,1250),
	(76,1,1250),
	(76,2,1250),
	(77,3,1500),
	(77,3,1500),
	(77,3,1500),
	(77,3,1500),
	(78,1,1750),
	(78,2,1750),
	(78,2,1750),
	(78,1,1750),
	(79,2,2000),
	(79,1,2000),
	(79,2,2000),
	(79,2,2000),
	(80,3,2500),
	(80,2,2500),
	(81,2,3000),
	(81,2,3000),
	(82,3,2500),
	(82,3,2500),
	(83,2,3000),
	(83,3,3000),
	(84,2,1666.67),
	(84,2,1666.67),
	(84,3,1666.67),
	(85,3,2000),
	(85,1,2000),
	(85,1,2000),
	(86,3,2333.33),
	(86,1,2333.33),
	(86,2,2333.33),
	(87,3,1250),
	(87,3,1250),
	(87,3,1250),
	(87,1,1250),
	(88,1,1500),
	(88,3,1500),
	(88,2,1500),
	(88,2,1500),
	(89,2,1750),
	(89,3,1750),
	(89,2,1750),
	(89,3,1750),
	(90,1,2000),
	(90,1,2000),
	(90,1,2000),
	(90,1,2000),
	(91,1,2500),
	(91,3,2500),
	(92,1,3000),
	(92,2,3000),
	(93,2,1250),
	(93,1,1250),
	(93,1,1250),
	(93,3,1250),
	(94,1,1500),
	(94,3,1500),
	(94,2,1500),
	(94,1,1500),
	(95,1,1750),
	(95,3,1750),
	(95,3,1750),
	(95,2,1750),
	(96,2,2000),
	(96,2,2000),
	(96,3,2000),
	(96,2,2000),
	(97,3,5000),
	(98,2,1666.67),
	(98,3,1666.67),
	(98,2,1666.67),
	(99,1,2000),
	(99,1,2000),
	(99,1,2000),
	(100,1,2333.33),
	(100,1,2333.33),
	(100,1,2333.33),
	(101,2,1666.67),
	(101,2,1666.67),
	(101,2,1666.67),
	(102,3,2000),
	(102,1,2000),
	(102,2,2000),
	(103,2,2333.33),
	(103,3,2333.33),
	(103,1,2333.33),
	(104,2,1250),
	(104,2,1250),
	(104,1,1250),
	(104,1,1250),
	(105,1,1500),
	(105,1,1500),
	(105,1,1500),
	(105,1,1500),
	(106,3,1750),
	(106,3,1750),
	(106,3,1750),
	(106,2,1750),
	(107,2,2000),
	(107,1,2000),
	(107,3,2000),
	(107,1,2000),
	(108,3,5000),
	(109,3,2500),
	(109,3,2500),
	(110,1,3000),
	(110,1,3000),
	(111,3,2500),
	(111,1,2500),
	(112,2,3000),
	(112,1,3000),
	(113,1,1250),
	(113,1,1250),
	(113,3,1250),
	(113,2,1250),
	(114,3,1500),
	(114,2,1500),
	(114,1,1500),
	(114,3,1500),
	(115,2,1750),
	(115,2,1750),
	(115,3,1750),
	(115,2,1750),
	(116,2,2000),
	(116,2,2000),
	(116,1,2000),
	(116,3,2000),
	(117,3,5000),
	(118,2,1666.67),
	(118,2,1666.67),
	(118,1,1666.67),
	(119,3,2000),
	(119,3,2000),
	(119,1,2000),
	(120,2,2333.33),
	(120,2,2333.33),
	(120,1,2333.33);


/*Foreign keys*/

ALTER TABLE Soba ADD CONSTRAINT FK_Soba_tip_sobeID FOREIGN KEY (tip_sobeID) REFERENCES Tip_Sobe(tip_sobeID);
ALTER TABLE Rezervacija_Sobe ADD CONSTRAINT FK_Rezervacija_Sobe_ugovorID FOREIGN KEY (ugovorID) REFERENCES Rezervacija(ugovorID);
ALTER TABLE Rezervacija_Sobe ADD CONSTRAINT FK_Rezervacija_Sobe_sobaID FOREIGN KEY (sobaID) REFERENCES Soba(sobaID);
ALTER TABLE Rezervacija_Sobe ADD CONSTRAINT FK_Rezervacija_Sobe_gostID FOREIGN KEY (gostID) REFERENCES Gost(gostID);
ALTER TABLE Rezervacija ADD CONSTRAINT FK_Rezervacija_musterijaID FOREIGN KEY (musterijaID) REFERENCES Musterija(musterijaID);
ALTER TABLE Uplata ADD CONSTRAINT FK_Uplata_ugovorID FOREIGN KEY (ugovorID) REFERENCES Rezervacija(ugovorID);
ALTER TABLE Uplata ADD CONSTRAINT FK_Uplata_nacin_placanjaID FOREIGN KEY (nacin_placanjaID) REFERENCES Nacin_Placanja(nacin_placanjaID );

/*Dopuna*/

ALTER TABLE Uplata ADD datum_uplate date;

CREATE TABLE Dodatna_Usluga(
	uslugaID int IDENTITY(1,1),
	opis text
);

CREATE TABLE Poseduje_Usluge(
	sobaID int not null,
	uslugaID int not null
);

ALTER TABLE Dodatna_Usluga ADD CONSTRAINT PK_Dodatna_Usluga PRIMARY KEY (uslugaID);
ALTER TABLE Poseduje_Usluge ADD CONSTRAINT PK_Poseduje_Usluge PRIMARY KEY (sobaID,uslugaID);
ALTER TABLE Poseduje_Usluge ADD CONSTRAINT FK_Poseduje_Usluge_sobaID FOREIGN KEY (sobaID) REFERENCES Soba(sobaID);
ALTER TABLE Poseduje_Usluge ADD CONSTRAINT FK_Poseduje_Usluge_uslugaID FOREIGN KEY (uslugaID) REFERENCES Dodatna_Usluga(uslugaID);

/*
	USE master;
	DROP DATABASE A26;
*/
