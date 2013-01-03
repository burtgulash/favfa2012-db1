-- Všichni zákazníci a jejich hnědé ponožky
SELECT 
	Prijmeni, Jmeno, Znacka, Model, Barva
FROM 
	Zakaznik, Vypujcka, ZapujcenaPonozka, Ponozka, Barva
WHERE 
		Zakaznik.idZakaznik = Vypujcka.Zakaznik_idZakaznik
	AND Vypujcka.idVypujcka = ZapujcenaPonozka.Vypujcka_idVypujcka
	AND ZapujcenaPonozka.Ponozka_idPonozka = Ponozka.idPonozka
	AND Ponozka.Barva_idBarva = Barva.idBarva

	AND Barva.Barva =  'hnědá'

ORDER BY
		Prijmeni
