USE komis
GO
/****** Object:  Table dbo.samochod     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.samochod(
	idSamochod int IDENTITY(1,1) NOT NULL,
	marka nvarchar(50) NOT NULL,
	model nvarchar(50) NOT NULL,
	data_prod date NULL,
	kolor nvarchar(100) NULL,
	pojSilnika int NULL,
	przebieg int NULL,
	typ_silnika nvarchar(30) NULL,
	usuniety bit NULL,
PRIMARY KEY CLUSTERED 
(
	idSamochod ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
SET IDENTITY_INSERT dbo.samochod ON 

INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (1, N'Fiat', N'Panda',N'2013-01-15', N'zielony', 999, 60000, N'benzyna', 1)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (3, N'Suzuki', N'Swift',N'2013-07-18', N'czarny', 993, 56000, N'diesel', 1)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (4, N'Suzuki', N'Swift',N'2014-12-12', N'bialy', 1197, 51000, N'benzyna', 0)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (5, N'Skoda', N'Octavia',N'2011-09-11', N'niebieski', 1498, 126000, N'diesel', 0)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (6, N'Skoda', N'Octavia',N'2013-05-05', N'srebrny', 1968, 84000, N'diesel', 0)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (7, N'Hyundai', N'i30',N'2012-06-13', N'czerwony', 1482, 80000, N'benzyna', 0)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (8, N'Ford', N'Mondeo',N'2012-08-14', N'granatowy', 2967, 90000, N'benzyna', 0)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (9, N'Peugeot', N'508',N'2011-01-18', N'czarny', 1499, 90000, N'diesel', 0)
INSERT dbo.samochod (idSamochod, marka, model, data_prod, kolor, pojSilnika, przebieg, typ_silnika, usuniety) VALUES (10, N'Skoda', N'Octavia',N'2012-09-01', N'srebrny', 1896, 5000, N'benzyna', 1)
SET IDENTITY_INSERT dbo.samochod OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index non_idx_s_marka    ******/
CREATE NONCLUSTERED INDEX non_idx_s_marka ON dbo.samochod
(
	marka ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index non_idx_s_model  ******/
CREATE NONCLUSTERED INDEX non_idx_s_model ON dbo.samochod
(
	model ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
GO
ALTER TABLE dbo.samochod ADD  DEFAULT ((0)) FOR usuniety
GO
