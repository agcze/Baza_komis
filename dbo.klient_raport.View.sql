USE komis
GO
/****** Object:  View dbo.klient_raport     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   view dbo.klient_raport AS
SELECT count (w.id_klient) AS 'ilosc', k.idKlienta, k.imie, k.nazwisko from wypozyczenie w JOIN klient k ON k.idKlienta= w.id_klient
GROUP BY k.idKlienta, k.imie, k.nazwisko
GO
