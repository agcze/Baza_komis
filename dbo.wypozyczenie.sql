USE komis
GO
/****** Object:  Table dbo.wypozyczenie  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.wypozyczenie(
	id_wypozyczenia int IDENTITY(1,1) NOT NULL,
	id_klient int NULL,
	id_samochod int NULL,
	id_pracownik_wyp int NULL,
	id_pracownik_odd int NULL,
	id_miejsca_wyp int NULL,
	id_miejsca_odd int NULL,
	data_wyp date NULL,
	data_odd date NULL,
	kaucja money NULL,
	cena_wyp money NULL,
	cena_wyp_dzien money NULL,
PRIMARY KEY CLUSTERED 
(
	id_wypozyczenia ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
SET IDENTITY_INSERT dbo.wypozyczenie ON 

INSERT dbo.wypozyczenie (id_wypozyczenia, id_klient, id_samochod, id_pracownik_wyp, id_pracownik_odd, id_miejsca_wyp, id_miejsca_odd, data_wyp, data_odd, kaucja, cena_wyp, cena_wyp_dzien) VALUES (1, 1, 3, 1, 1, 1, 1,2023-02-05' ,2023-02-12' , 500.0000, 67.0000, 67.0000)
INSERT dbo.wypozyczenie (id_wypozyczenia, id_klient, id_samochod, id_pracownik_wyp, id_pracownik_odd, id_miejsca_wyp, id_miejsca_odd, data_wyp, data_odd, kaucja, cena_wyp, cena_wyp_dzien) VALUES (2, 2, 8, 11, 1, 4, 2,2020-10-01' ,2019-12-15' , 500.0000, 114.0000, 38.0000)
INSERT dbo.wypozyczenie (id_wypozyczenia, id_klient, id_samochod, id_pracownik_wyp, id_pracownik_odd, id_miejsca_wyp, id_miejsca_odd, data_wyp, data_odd, kaucja, cena_wyp, cena_wyp_dzien) VALUES (3, 4, 6, 6, 4, 4, 2,2019-12-01' ,2019-12-15' , 500.0000, 714.0000, 51.0000)
INSERT dbo.wypozyczenie (id_wypozyczenia, id_klient, id_samochod, id_pracownik_wyp, id_pracownik_odd, id_miejsca_wyp, id_miejsca_odd, data_wyp, data_odd, kaucja, cena_wyp, cena_wyp_dzien) VALUES (4, 9, 5, 2, 1, 3, 1,2018-07-03' ,2018-07-13' , 500.0000, 640.0000, 64.0000)
INSERT dbo.wypozyczenie (id_wypozyczenia, id_klient, id_samochod, id_pracownik_wyp, id_pracownik_odd, id_miejsca_wyp, id_miejsca_odd, data_wyp, data_odd, kaucja, cena_wyp, cena_wyp_dzien) VALUES (5, 3, 7, 3, 3, 3, 4,2019-05-15' ,2019-05-16' , 500.0000, 89.0000, 89.0000)
INSERT dbo.wypozyczenie (id_wypozyczenia, id_klient, id_samochod, id_pracownik_wyp, id_pracownik_odd, id_miejsca_wyp, id_miejsca_odd, data_wyp, data_odd, kaucja, cena_wyp, cena_wyp_dzien) VALUES (6, 1, 9, 16, 11, 2, 4,2018-10-13' ,2018-10-30' , 500.0000, 1088.0000, 64.0000)
SET IDENTITY_INSERT dbo.wypozyczenie OFF
GO
ALTER TABLE dbo.wypozyczenie  WITH CHECK ADD FOREIGN KEY(id_klient)
REFERENCES dbo.klient (idKlienta)
GO
ALTER TABLE dbo.wypozyczenie  WITH CHECK ADD FOREIGN KEY(id_miejsca_wyp)
REFERENCES dbo.miejsce (idMiejsce)
GO
ALTER TABLE dbo.wypozyczenie  WITH CHECK ADD FOREIGN KEY(id_miejsca_odd)
REFERENCES dbo.miejsce (idMiejsce)
GO
ALTER TABLE dbo.wypozyczenie  WITH CHECK ADD FOREIGN KEY(id_pracownik_wyp)
REFERENCES dbo.pracownik (idPracownika)
GO
ALTER TABLE dbo.wypozyczenie  WITH CHECK ADD FOREIGN KEY(id_pracownik_odd)
REFERENCES dbo.pracownik (idPracownika)
GO
ALTER TABLE dbo.wypozyczenie  WITH CHECK ADD FOREIGN KEY(id_samochod)
REFERENCES dbo.samochod (idSamochod)
GO
