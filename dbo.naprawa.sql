USE komis
GO
/****** Object:  Table dbo.naprawa    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.naprawa(
	id_naprawa int IDENTITY(1,1) NOT NULL,
	data_przyjecia date NULL,
	opis_usterki nvarchar(100) NULL,
	zaliczka money NULL,
PRIMARY KEY CLUSTERED 
(
	id_naprawa ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
SET IDENTITY_INSERT dbo.naprawa ON 

INSERT dbo.naprawa (id_naprawa, data_przyjecia, opis_usterki, zaliczka) VALUES (1, '2005-06-05', N'wyciek płynu chłodniczego', 400.0000)
INSERT dbo.naprawa (id_naprawa, data_przyjecia, opis_usterki, zaliczka) VALUES (2, '2009-04-03', N'usterka sprzegła', 500.0000)
INSERT dbo.naprawa (id_naprawa, data_przyjecia, opis_usterki, zaliczka) VALUES (3, '2012-08-08', N'usterka silnika', 700.0000)
INSERT dbo.naprawa (id_naprawa, data_przyjecia, opis_usterki, zaliczka) VALUES (4, '2016-10-01', N'układ hamulcowy', 100.0000)
SET IDENTITY_INSERT dbo.naprawa OFF
GO
