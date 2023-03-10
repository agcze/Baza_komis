USE komis
GO
/****** Object:  StoredProcedure dbo.dodaj_klienta  ******/

create procedure dbo.dodaj_klienta 
@imie nvarchar (50),
@nazwisko nvarchar(50),
@nr_karty bigint,
@firma nvarchar(100),
@ulica nvarchar(100),
@numer int,
@miasto nvarchar(100),
@kodPocztowy nvarchar(6),
@nip bigint,
@telefon int
AS
BEGIN 
INSERT INTO klient (imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon)
VALUES (@imie, @nazwisko, @nr_karty, @firma, @ulica, @numer, @miasto, @kodPocztowy, @nip, @telefon)
END
GO
