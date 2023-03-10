USE komis
GO
/****** Object:  Table dbo.klient     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.klient(
	idKlienta int IDENTITY(1,1) NOT NULL,
	imie nvarchar(50) NOT NULL,
	nazwisko nvarchar(50) NOT NULL,
	nr_karty bigint NULL,
	firma nvarchar(100) NULL,
	ulica nvarchar(100) NULL,
	numer int NULL,
	miasto nvarchar(100) NULL,
	kodPocztowy nvarchar(6) NULL,
	nip bigint NULL,
	telefon int NULL,
	staly_klient nvarchar(3) NULL,
PRIMARY KEY CLUSTERED 
(
	idKlienta ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
SET IDENTITY_INSERT dbo.klient ON 

INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (1, N'Patryk', N'Niedzielski', 4424701976938053, N'POLDEX', N'Popławska', 22, N'Płock', N'65-711', 3817910684, 770814504, N'TAK')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (2, N'Piotr', N'Węgorz', 4424707729754960, N'WĘGORZ SP Z.O.O', N'Helska ', 136, N'Hel', N'51-411', 5320194511, 587677221, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (3, N'Celina', N'Cebula', 4424708035769155, N'CEBULA SP Z.O.O', N'Norweska ', 111, N'Wrocław', N'69-777', 9718945777, 782465581, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (4, N'Grzegorz', N'Talar', 4424705705385155, N'TEDOX', N'Nasypowa ', 147, N'Płock', N'36-951', 3759138361, 965265380, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (5, N'Mateusz', N'Kropidło', 5455086646390276, N'Kropidło SP Z.O.O', N'Przesmyk  ', 134, N'Jazowsko', N'34-447', 1199534680, 544301179, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (6, N'Kinga', N'Theissen', 5329626288387165, N'DHULL', N'Lniana', 63, N'Dębno', N'36-954', 3426753708, 682119757, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (7, N'Krystian', N'Tor', 5575215805116942, N'TORMIX', N'Wawelska', 6, N'Białystok', N'53-651', 7018238752, 616638627, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (8, N'Emil', N'Popławski', 5190058360447178, N'ULIX', N' Roosevelta Franklina', 122, N'Liszki', N'64-009', 7988810253, 929978311, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (9, N'Karol', N'Pietras', 5548212594306861, N'PIETRAS I SPÓŁKA', N'Strzelecka', 53, N'Radom', N'21-315', 8371299730, 862648172, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (10, N'Emilia', N'Dudek', 5431349327203070, N'DUDUŚ SP Z.O.O', N'Bytomska', 122, N'Bytom', N'81-900', 4960835527, 518505347, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (11, N'Jerzy', N'Nowak', 5471857788320861, N'NOVOX', N'Akacjowa', 42, N'Kielce', N'54-400', 1081007796, 500600700, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (12, N'Adam', N'Cichy', 5471851102524365, N'Cicho', N'Korzenna', 12, N'Warszawa', N'00-950', 5283950880, 123454321, N'NIE')
INSERT dbo.klient (idKlienta, imie, nazwisko, nr_karty, firma, ulica, numer, miasto, kodPocztowy, nip, telefon, staly_klient) VALUES (13, N'Bogusław', N'Srogi', 5471854435963078, N'Boguś i spółka', N'Batorego Stefana', 84, N'Poznań', N'22-667', 5191768340, 678900111, N'NIE')
SET IDENTITY_INSERT dbo.klient OFF
GO
/****** Object:  Index uniq_tel    ******/
ALTER TABLE dbo.klient ADD  CONSTRAINT uniq_tel UNIQUE NONCLUSTERED 
(
	telefon ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
GO
/****** Object:  Index idx_tel     ******/
CREATE NONCLUSTERED INDEX idx_tel ON dbo.klient
(
	telefon ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index non_idx_imie   ******/
CREATE NONCLUSTERED INDEX non_idx_imie ON dbo.klient
(
	imie ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index non_idx_nazwisko    ******/
CREATE NONCLUSTERED INDEX non_idx_nazwisko ON dbo.klient
(
	nazwisko ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
GO
ALTER TABLE dbo.klient ADD  DEFAULT ('NIE') FOR staly_klient
GO
