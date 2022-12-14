USE [Tariff]
GO
/****** Object:  Table [dbo].[Clien]    Script Date: 21.10.2022 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clien](
	[NumderPhone] [varchar](20) NOT NULL,
	[IdTarif] [int] NULL,
	[LastName] [nvarchar](30) NULL,
	[FistName] [nvarchar](30) NULL,
	[PatronymicName] [nvarchar](30) NULL,
	[DateBirthday] [date] NULL,
	[PassportSerial] [nvarchar](4) NULL,
	[PassportNumder] [nvarchar](6) NULL,
	[DatePassport] [date] NULL,
 CONSTRAINT [PK_Clien] PRIMARY KEY CLUSTERED 
(
	[NumderPhone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 21.10.2022 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[CodeServise] [varchar](3) NOT NULL,
	[ServiseName] [nvarchar](20) NULL,
	[SalaryServise] [decimal](10, 3) NULL,
	[ConnectPrise] [decimal](10, 3) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[CodeServise] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarif]    Script Date: 21.10.2022 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarif](
	[idTarif] [int] NOT NULL,
	[TarifName] [nvarchar](50) NULL,
	[Internet] [nchar](10) NULL,
	[CountMinutes] [int] NULL,
	[CountSMS] [int] NULL,
	[Salary] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Tarif] PRIMARY KEY CLUSTERED 
(
	[idTarif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsingService]    Script Date: 21.10.2022 11:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsingService](
	[Id] [int] NOT NULL,
	[CodeService] [varchar](3) NULL,
	[DateConnection] [date] NULL,
	[NumberPhone] [varchar](20) NULL,
 CONSTRAINT [PK_UsingService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clien] ([NumderPhone], [IdTarif], [LastName], [FistName], [PatronymicName], [DateBirthday], [PassportSerial], [PassportNumder], [DatePassport]) VALUES (N'+79027654389', 1, N'Сидоров', N'Матвей', N'Анатольевич', CAST(N'1976-12-03' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Clien] ([NumderPhone], [IdTarif], [LastName], [FistName], [PatronymicName], [DateBirthday], [PassportSerial], [PassportNumder], [DatePassport]) VALUES (N'+79824576256', 3, N'Андреев', N'Фёдор', N'Сергеевич', CAST(N'1987-06-11' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Clien] ([NumderPhone], [IdTarif], [LastName], [FistName], [PatronymicName], [DateBirthday], [PassportSerial], [PassportNumder], [DatePassport]) VALUES (N'+79996548734', 2, N'Степанов', N'Сидор', N'Николаевич', CAST(N'1970-08-05' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Services] ([CodeServise], [ServiseName], [SalaryServise], [ConnectPrise]) VALUES (N'111', N'Любимые номера', CAST(0.372 AS Decimal(10, 3)), CAST(0.686 AS Decimal(10, 3)))
INSERT [dbo].[Services] ([CodeServise], [ServiseName], [SalaryServise], [ConnectPrise]) VALUES (N'160', N'Срочный безлемит', CAST(0.707 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[Services] ([CodeServise], [ServiseName], [SalaryServise], [ConnectPrise]) VALUES (N'305', N'4G-бокс', CAST(1.105 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[Services] ([CodeServise], [ServiseName], [SalaryServise], [ConnectPrise]) VALUES (N'306', N'Смарт-box', CAST(2.189 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[Tarif] ([idTarif], [TarifName], [Internet], [CountMinutes], [CountSMS], [Salary]) VALUES (1, N'Наш Smart', N'1000      ', 1500, 1500, CAST(990.00 AS Decimal(18, 2)))
INSERT [dbo].[Tarif] ([idTarif], [TarifName], [Internet], [CountMinutes], [CountSMS], [Salary]) VALUES (2, N'Таривище', N'50        ', 700, 700, CAST(650.00 AS Decimal(18, 2)))
INSERT [dbo].[Tarif] ([idTarif], [TarifName], [Internet], [CountMinutes], [CountSMS], [Salary]) VALUES (3, N'Smart', N'5         ', 700, 700, CAST(450.00 AS Decimal(18, 2)))
INSERT [dbo].[Tarif] ([idTarif], [TarifName], [Internet], [CountMinutes], [CountSMS], [Salary]) VALUES (5, N'Мой Smart', N'10        ', 400, 400, CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[UsingService] ([Id], [CodeService], [DateConnection], [NumberPhone]) VALUES (1, N'111', CAST(N'2020-05-12' AS Date), N'+79027654389')
INSERT [dbo].[UsingService] ([Id], [CodeService], [DateConnection], [NumberPhone]) VALUES (2, N'111', CAST(N'2020-09-20' AS Date), N'+79027654389')
INSERT [dbo].[UsingService] ([Id], [CodeService], [DateConnection], [NumberPhone]) VALUES (3, N'160', CAST(N'2020-07-16' AS Date), N'+79824576256')
