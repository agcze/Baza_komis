USE komis
GO
/****** Object:  Trigger dbo.pensja_zero  ******/
ALTER   TRIGGER dbo.pensja_zero ON dbo.pracownik
AFTER INSERT
AS
DECLARE @pensja money
DECLARE @dodatek money
IF @pensja=0 OR @pensja IS NULL OR  @dodatek=0 OR @dodatek IS NULL
BEGIN
ROLLBACK
PRINT ('Aby dodać pracownika musisz podać jego pensję i dodatek');
END