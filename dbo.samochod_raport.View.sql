USE komis
GO
/****** Object:  View dbo.samochod_raport  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW dbo.samochod_raport AS
SELECT s.marka, s.model, COUNT (w.id_samochod) AS 'ilosc' from samochod s JOIN .wypozyczenie w ON s.idSamochod= w.id_samochod
GROUP BY w.id_samochod, s.marka, s.model
GO
