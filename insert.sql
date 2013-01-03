INSERT 
	INTO `PujcovnaPonozek`.`Barva` 
		(`idBarva`, `Barva`) 
	VALUES 
		(NULL, 'červená'), 
		(NULL, 'zelená'), 
		(NULL, 'stříbrná'), 
		(NULL, 'černá'), 
		(NULL, 'bílá'), 
		(NULL, 'hnědá'), 
		(NULL, 'zlatá'), 
		(NULL, 'fialová'), 
		(NULL, 'růžová'), 
		(NULL, 'okrová');

INSERT 
	INTO `PujcovnaPonozek`.`Obsluhujici` 
		(`idObsluhujici`, `Jmeno`, `Prijmeni`, `telCislo`) 
	VALUES 
		(NULL, 'Jan', 'Dub', '123456798'), 
		(NULL, 'Jana', 'Buková', '987564321');

INSERT 
	INTO `PujcovnaPonozek`.`Zakaznik` 
		(`idZakaznik`, `Jmeno`, `Prijmeni`, `telCislo`) 
	VALUES 
		(NULL, 'Václav', 'Novák', '458137962'), 
		(NULL, 'Josef', 'Blažek', '75483145'), 
		(NULL, 'Ondřej', 'Robota', '987563144'), 
		(NULL, 'Anna', 'Drzá', '573194612'), 
		(NULL, 'Karel', 'Drozd', '281739467'), 
		(NULL, 'Anton', 'Bukov', '356235623'), 
		(NULL, 'Štěpánka', 'Ponožková', '741258963'), 
		(NULL, 'Arnold', 'Varný', '412541251'), 
		(NULL, 'Hubert', 'Bazén', '2797979797'), 
		(NULL, 'Van', 'Li', '111111211'), 
		(NULL, 'Havel', 'Mirko', '12343797'), 
		(NULL, 'Robert', 'Bazén', '2797979797'), 
		(NULL, 'Jet', 'Li', '5550123'), 
		(NULL, 'Karla', 'Turková', '1239377'), 
		(NULL, 'Jana', 'Sádlová', '1919147427');

INSERT 
	INTO `PujcovnaPonozek`.`Vypujcka` 
		(`idVypujcka`, `datumZapujceni`, `datumVraceni`, `cena`, `Zakaznik_idZakaznik`, `Obsluhujici_idObsluhujici`) 
	VALUES 
		(NULL, '2012-08-15 12:00:00', '2013-01-31 00:00:00', '200', '7', '1'), 
		(NULL, '2013-01-01 00:00:00', '2013-01-31 00:00:00', '500', '2', '1'), 
		(NULL, '2012-09-20 00:00:00', '2012-11-29 00:00:00', '100', '3', '2'), 
		(NULL, '2012-09-20 00:00:00', '2013-01-02 00:00:00', '100', '14', '2'), 
		(NULL, '2012-11-21 15:00:00', '2012-12-21 15:00:00', '250', '4', '2'), 
		(NULL, '2013-01-01 00:00:00', '2013-01-31 00:00:00', '150', '5', '1'), 
		(NULL, '2012-10-01 00:00:00', '2012-10-31 00:00:00', '700', '6', '1'), 
		(NULL, '2012-12-11 00:00:00', '2012-12-31 00:00:00', '200', '7', '2'), 
		(NULL, '2012-11-21 00:00:00', '2012-12-11 00:00:00', '150', '8', '2'), 
		(NULL, '2012-07-17 00:00:00', '2012-09-26 00:00:00', '500', '9', '1'), 
		(NULL, '2012-08-31 00:00:00', '2012-10-31 00:00:00', '400', '10', '2'), 
		(NULL, '2012-10-16 00:00:00', '2013-01-31 00:00:00', '300', '11', '1'), 
		(NULL, '2012-04-17 00:00:00', '2013-01-31 00:00:00', '1000', '12', '1'), 
		(NULL, '2012-10-23 00:00:00', '2012-11-29 00:00:00', '150', '7', '2'), 
		(NULL, '2012-10-16 00:00:00', '2013-01-31 00:00:00', '500', '2', '1'), 
		(NULL, '2012-09-19 00:00:00', '2012-12-25 00:00:00', '400', '8', '1'),
		(NULL, '2012-11-21 00:00:00', '2012-12-11 00:00:00', '200', '3', '2'), 
		(NULL, '2012-07-17 00:00:00', '2012-09-26 00:00:00', '500', '7', '1'), 
		(NULL, '2012-09-20 00:00:00', '2012-11-29 00:00:00', '100', '9', '2'), 
		(NULL, '2012-11-21 15:00:00', '2012-12-21 15:00:00', '250', '10', '2');

INSERT 
	INTO `PujcovnaPonozek`.`Ponozka` 
		(`idPonozka`, `znacka`, `model`, `velikost`, `Barva_idBarva`) 
	VALUES 
		(NULL, 'Linda', 'Lenka', '42', '1'), 
		(NULL, 'Linda', 'Lenka', '44', '8'), 
		(NULL, 'Linda', 'Lenka', '38', '9'), 
		(NULL, 'Linda', 'Tereza', '38', '10'), 
		(NULL, 'Linda', 'Jana', '45', '5'), 
		(NULL, 'Nike', 'SilverAir', '44', '4'), 
		(NULL, 'Nike', 'SilverAir', '48', '4'), 
		(NULL, 'Nike', 'SilverAir', '38', '4'), 
		(NULL, 'Babysox', 'Happy', '45', '7'), 
		(NULL, 'Babysox', 'Happy', '44', '7'), 
		(NULL, 'Nanohu', 'Nabosou', '40', '6'), 
		(NULL, 'Nanohu', 'Naholou', '43', '4'), 
		(NULL, 'Nanohu', 'Naruku', '41', '5'), 
		(NULL, 'Adidas', 'Superfeet', '46', '8'), 
		(NULL, 'Adidas', 'Superfeet', '39', '9'), 
		(NULL, 'Adidas', 'Superfeet', '43', '7'), 
		(NULL, 'Adidas', 'Superfeet', '48', '10'), 
		(NULL, 'Adidas', 'Superfeet', '45', '1'), 
		(NULL, 'Česká Ponožka', 'Knedlík', '44', '7'), 
		(NULL, 'Česká Ponožka', 'Knedlík', '45', '9'),
		(NULL, 'Česká Ponožka', 'Knedlík', '44', '3'), 
		(NULL, 'Česká Ponožka', 'Houska', '44', '7'), 
		(NULL, 'Česká Ponožka', 'Houska', '45', '3'), 
		(NULL, 'Česká Ponožka', 'Houska', '42', '6'), 
		(NULL, 'Česká Ponožka', 'Párek', '43', '1'),
		(NULL, 'Česká Ponožka', 'Párek', '42', '10');

INSERT 
	INTO `PujcovnaPonozek`.`ZapujcenaPonozka` 
		(`idZapujcenaPonozka`, `Vypujcka_idVypujcka`, `Ponozka_idPonozka`) 
	VALUES 
		(NULL, '1', '1'), 
		(NULL, '2', '2'), 
		(NULL, '3', '24'), 
		(NULL, '19', '10'), 
		(NULL, '11', '12'), 
		(NULL, '15', '23'), 
		(NULL, '17', '11'), 
		(NULL, '5', '4'), 
		(NULL, '18', '26'), 
		(NULL, '1', '18'), 
		(NULL, '19', '19'), 
		(NULL, '11', '21'), 
		(NULL, '10', '10'), 
		(NULL, '9', '6'), 
		(NULL, '2', '25'), 
		(NULL, '9', '9'), 
		(NULL, '5', '7'), 
		(NULL, '6', '23'), 
		(NULL, '9', '3'), 
		(NULL, '7', '8'), 
		(NULL, '13', '26'), 
		(NULL, '15', '11'), 
		(NULL, '17', '16'), 
		(NULL, '1', '23'), 
		(NULL, '12', '1'), 
		(NULL, '13', '2'), 
		(NULL, '12', '3'), 
		(NULL, '19', '9'), 
		(NULL, '1', '5'), 
		(NULL, '10', '20'), 
		(NULL, '8', '17'), 
		(NULL, '4', '8'), 
		(NULL, '7', '26'), 
		(NULL, '8', '2'), 
		(NULL, '5', '18'), 
		(NULL, '4', '24'), 
		(NULL, '13', '15'), 
		(NULL, '15', '13'), 
		(NULL, '16', '20'), 
		(NULL, '17', '11'), 
		(NULL, '12', '1'), 
		(NULL, '17', '21'), 
		(NULL, '12', '22'), 
		(NULL, '2', '23');
