USE komis
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.pracownik(
	idPracownika int IDENTITY(1,1) NOT NULL,
	imie nvarchar(50) NOT NULL,
	nazwisko nvarchar(50) NOT NULL,
	dataZatrudnienia date NULL,
	dzial nvarchar(50) NULL,
	pensja money NULL,
	dodatek money NULL,
	idMiejsca int NULL,
	telefon int NULL,
PRIMARY KEY CLUSTERED 
(
	idPracownika ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
SET IDENTITY_INSERT dbo.pracownik ON 

INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (1, N'Kuba', N'Pietrzak', '2015-11-12' , N'logistyka', 4700.0000, 100.0000, 1, 727403855)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (2, N'Grzegorz', N'Jakubowski', '2014-10-09' , N'naprawy', 3300.0000, 150.0000, 1, 694152264)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (3, N'Danuta', N'Borkowska', '2000-04-06' , N'hr', 4500.0000, 100.0000, 1, 720561856)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (4, N'Edyta', N'Andrzejewska', '2003-07-11' , N'ksiegowość', 5000.0000, 80.0000, 1, 770928595)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (5, N'Fryderyk', N'Sobczak', '2003-01-10' , N'naprawy', 4200.0000, 100.0000, 1, 872175096)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (6, N'Filip', N'Cieślak', '2018-10-01' , N'logistyka', 4500.0000, 100.0000, 2, 649918229)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (7, N'Konstanty', N' Szczepański', '2012-01-09' , N'naprawy', 3500.0000, 120.0000, 2, 587538769)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (8, N'Krystian', N'Bąk', '2002-05-06' , N'hr', 5300.0000, 80.0000, 2, 977285785)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (9, N'Milan', N'Jaworski', '2005-12-05' , N'ksiegowość', 6500.0000, 60.0000, 2, 617509431)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (10, N'Andrzej', N'Lis', '2006-08-11' , N'naprawy', 5200.0000, 80.0000, 2, 509350303)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (11, N'Aleks', N'Górecki', '2012-03-03' , N'logistyka', 3500.0000, 120.0000, 3, 720710476)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (12, N'Ryszard', N'Sokołowski', '2011-04-03' , N'naprawy', 4100.0000, 100.0000, 3, 640824677)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (13, N'Kamila', N'Makowska', '2003-04-01' , N'hr', 6000.0000, 60.0000, 3, 686135230)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (14, N'Halina', N'Kamińska', '2004-07-05' , N'ksiegowość', 4300.0000, 100.0000, 3, 884777775)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (15, N'Barbara', N'Ostrowska', '2005-01-19' , N'naprawy', 7100.0000, 50.0000, 3, 313037550)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (16, N'Kazimierz', N'Tomaszewski', '2014-06-03' , N'logistyka', 5500.0000, 80.0000, 4, 738430768)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (17, N'Marcin', N'Makowski', '2010-08-01' , N'naprawy', 4300.0000, 100.0000, 4, 922155863)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (18, N'Borys', N' Lis', '2005-02-01' , N'hr', 4000.0000, 100.0000, 4, 694440229)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (19, N'Natan', N'Zieliński', '2000-09-01' , N'ksiegowość', 5100.0000, 80.0000, 4, 559993015)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (20, N'Roman', N'Kołodziej', '2008-05-21' , N'naprawy', 3500.0000, 120.0000, 4, 908640916)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (21, N'Jadwiga', N'Mazur', '2003-05-12' , N'logistyka', 5200.0000, 80.0000, 5, 789804736)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (22, N'Emanuel', N'Woźniak', '2005-10-16' , N'naprawy', 5500.0000, 80.0000, 5, 692311061)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (23, N'Marcela', N'Maciejewska', '2010-09-03' , N'hr', 5100.0000, 80.0000, 5, 544357706)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (24, N'Pamela', N'Pietrzak', '2007-12-12' , N'ksiegowość', 6300.0000, 60.0000, 5, 661320786)
INSERT dbo.pracownik (idPracownika, imie, nazwisko, dataZatrudnienia, dzial, pensja, dodatek, idMiejsca, telefon) VALUES (25, N'Florian', N'Zawadzki', '2018-09-08' , N'naprawy', 4400.0000, 100.0000, 5, 956611131)
SET IDENTITY_INSERT dbo.pracownik OFF
GO
ALTER TABLE dbo.pracownik  WITH CHECK ADD FOREIGN KEY(idMiejsca)
REFERENCES dbo.miejsce (idMiejsce)
GO
