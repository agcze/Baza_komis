USE komis
GO
/****** Object:  Table dbo.wykonane_naprawy   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.wykonane_naprawy(
	id_pracownik int NULL,
	id_naprawa int NULL,
	data_naprawy date NULL,
	opis_naprawy nvarchar(100) NULL,
	cena money NULL
) ON PRIMARY
GO
INSERT dbo.wykonane_naprawy (id_pracownik, id_naprawa, data_naprawy, opis_naprawy, cena) VALUES (7, 1, '2005-06-20', N'wymiana chłodnicy', 500.0000)
INSERT dbo.wykonane_naprawy (id_pracownik, id_naprawa, data_naprawy, opis_naprawy, cena) VALUES (15, 2, '2009-04-17', N'wymiana sprzegła', 1200.0000)
INSERT dbo.wykonane_naprawy (id_pracownik, id_naprawa, data_naprawy, opis_naprawy, cena) VALUES (17, 3, '2012-08-22', N'wymiana paska rozrządu', 700.0000)
INSERT dbo.wykonane_naprawy (id_pracownik, id_naprawa, data_naprawy, opis_naprawy, cena) VALUES (25, 4, '2016-10-11', N'wymiana klocków hamulcowych', 160.0000)
GO
ALTER TABLE dbo.wykonane_naprawy  WITH CHECK ADD FOREIGN KEY(id_naprawa)
REFERENCES dbo.naprawa (id_naprawa)
GO
ALTER TABLE dbo.wykonane_naprawy  WITH CHECK ADD FOREIGN KEY(id_pracownik)
REFERENCES dbo.pracownik (idPracownika)
GO
