-- Zákazníci, kteří se s některým z obsluhujících setkali více než jednou.

SELECT 
	Zakaznik.Jmeno, 
	Zakaznik.Prijmeni, 
	COUNT(*) AS c, 
	Obsluhujici.Jmeno, 
	Obsluhujici.Prijmeni 

FROM 
	Zakaznik 
	
	INNER JOIN Vypujcka 
	ON idZakaznik = Zakaznik_idZakaznik 

	INNER JOIN Obsluhujici 
	ON idObsluhujici = Obsluhujici_idObsluhujici 

GROUP BY idZakaznik 
	
HAVING c > 1

ORDER BY c DESC
;
