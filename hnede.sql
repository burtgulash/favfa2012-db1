-- Všichni zákazníci a jejich hnědé ponožky.

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

	INNER JOIN ZapujcenaPolozka
	ON idVypujcka = Vypujcka_idVypujcka

	INNER_JOIN Ponozka
	ON idPonozka = Ponozka_idPonozka

	INNER_JOIN Barva
	ON idBarva = Barva_idBarva

WHERE 
	AND Barva.Barva =  'hnědá'

ORDER BY
	Prijmeni
