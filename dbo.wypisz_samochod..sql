USE komis
GO
/****** Object:  StoredProcedure dbo.wypisz_samochod  ******/

create   procedure dbo.wypisz_samochod 
 @marka_samochodu nvarchar(50)
AS 
BEGIN
 select * from samochod where marka=@marka_samochodu;
END
GO
