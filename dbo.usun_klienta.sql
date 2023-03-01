USE komis
GO
/****** Object:  Trigger dbo.usun_klienta  ******/

ALTER TRIGGER dbo.usun_klienta
ON dbo.klient
AFTER DELETE 
AS
PRINT ('Nie można usunąć klienta');