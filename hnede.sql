-- Všichni zákazníci a jejich hnědé ponožky.

USE PujcovnaPonozek;

SELECT 
	Prijmeni, 
	Jmeno, 
	Znacka, 
	Model, 
	Barva

FROM 
	Zakaznik

	INNER JOIN Vypujcka
	ON idZakaznik = Zakaznik_idZakaznik

	INNER JOIN ZapujcenaPonozka
	ON idVypujcka = Vypujcka_idVypujcka

	INNER JOIN Ponozka
	ON idPonozka = Ponozka_idPonozka

	INNER JOIN Barva
	ON idBarva = Barva_idBarva

WHERE 
	Barva =  'hnědá'

ORDER BY
	Prijmeni
;
