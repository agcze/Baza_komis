USE komis
GO
/****** Object:  StoredProcedure dbo.zwieksz_pensje   ******/

create procedure dbo.zwieksz_pensje
@idPracownika int, 
@kwota money
AS 
BEGIN 
update pracownik set pensja= pensja+@kwota where idPracownika=@idPracownika; 
END
GO
