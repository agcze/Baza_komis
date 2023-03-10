USE komis
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.miejsce(
	idMiejsce int IDENTITY(1,1) NOT NULL,
	ulica nvarchar(100) NULL,
	numer int NULL,
	miasto nvarchar(100) NULL,
	kodPocztowy nvarchar(6) NULL,
	telefon int NULL,
	uwagi nvarchar(100) NULL,
PRIMARY KEY CLUSTERED 
(
	idMiejsce ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
SET IDENTITY_INSERT dbo.miejsce ON 

INSERT dbo.miejsce (idMiejsce, ulica, numer, miasto, kodPocztowy, telefon, uwagi) VALUES (1, N'Ojców Oblatów', 16, N' Wrocław', N'43-765', 510301832, NULL)
INSERT dbo.miejsce (idMiejsce, ulica, numer, miasto, kodPocztowy, telefon, uwagi) VALUES (2, N'Polarna', 6, N'Warszawa', N'22-311', 998038211, NULL)
INSERT dbo.miejsce (idMiejsce, ulica, numer, miasto, kodPocztowy, telefon, uwagi) VALUES (3, N'Żeromskiego Stefana', 9, N'Białystok', N'76-555', 254821089, NULL)
INSERT dbo.miejsce (idMiejsce, ulica, numer, miasto, kodPocztowy, telefon, uwagi) VALUES (4, N'Masztowa', 3, N'Darłowo', N'76-887', 748387859, NULL)
INSERT dbo.miejsce (idMiejsce, ulica, numer, miasto, kodPocztowy, telefon, uwagi) VALUES (5, N'Matejki Jana', 6, N'Jelenia Góra', N'65-400', 593063103, NULL)
SET IDENTITY_INSERT dbo.miejsce OFF
GO
