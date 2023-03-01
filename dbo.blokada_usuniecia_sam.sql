USE komis
GO
/****** Object:  Trigger dbo.blokada_usuniecia_sam    ******/
ALTER   trigger dbo.blokada_usuniecia_sam ON dbo.samochod
INSTEAD OF DELETE
AS
BEGIN
 UPDATE samochod SET usuniety= 1 where idSamochod IN (select idSamochod from deleted)
 PRINT ('Usuwanie pozycji z tabeli samochód jest zablokowane przez trigger "blokada_usuniecia_sam"');
END