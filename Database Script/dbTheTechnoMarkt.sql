USE [master]
GO
/****** Object:  Database [dbTheTechnoMarket]    Script Date: 10/07/2021 18:35:58 ******/
CREATE DATABASE [dbTheTechnoMarket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbTheTechnoMarket', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbTheTechnoMarket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbTheTechnoMarket_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbTheTechnoMarket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbTheTechnoMarket] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbTheTechnoMarket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbTheTechnoMarket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbTheTechnoMarket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbTheTechnoMarket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbTheTechnoMarket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbTheTechnoMarket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET RECOVERY FULL 
GO
ALTER DATABASE [dbTheTechnoMarket] SET  MULTI_USER 
GO
ALTER DATABASE [dbTheTechnoMarket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbTheTechnoMarket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbTheTechnoMarket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbTheTechnoMarket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbTheTechnoMarket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbTheTechnoMarket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbTheTechnoMarket', N'ON'
GO
ALTER DATABASE [dbTheTechnoMarket] SET QUERY_STORE = OFF
GO
USE [dbTheTechnoMarket]
GO
/****** Object:  Table [dbo].[tbBanks]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBanks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANKNAME] [varchar](50) NULL,
	[BRANCH] [varchar](50) NULL,
	[ACCOUNTNO] [varchar](50) NULL,
	[AUTHORIZED] [varchar](50) NULL,
	[DATE] [varchar](50) NULL,
	[FIRMID] [int] NULL,
 CONSTRAINT [PK_tbBanks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbBillDetail]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBillDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BILLID] [int] NULL,
	[PRODUCT] [varchar](50) NULL,
	[COUNT] [int] NULL,
	[UNITPRICE] [decimal](18, 2) NULL,
	[TOTALPRICE] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbBillDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbBillingData]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBillingData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NO] [char](10) NULL,
	[CUSTOMER] [varchar](50) NULL,
	[BILLER] [varchar](50) NULL,
	[RECEIVER] [varchar](50) NULL,
	[DATE] [varchar](50) NULL,
	[TIME] [varchar](50) NULL,
 CONSTRAINT [PK_tbBillingData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCorporateCustomers]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCorporateCustomers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](30) NULL,
	[AUTHORIZED] [varchar](30) NULL,
	[GSM] [varchar](15) NULL,
	[EMAIL] [varchar](30) NULL,
	[ADDRESS] [varchar](50) NULL,
 CONSTRAINT [PK_tbCorporateCustomers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCorporateSalesTracking]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCorporateSalesTracking](
	[TRACKID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCTID] [int] NULL,
	[AMOUNT] [int] NULL,
	[EMPLOYEEID] [int] NULL,
	[CUSTOMERID] [int] NULL,
	[PRICE] [decimal](18, 2) NULL,
	[TOTAL] [decimal](18, 2) NULL,
	[BILLID] [int] NULL,
	[DATE] [varchar](50) NULL,
 CONSTRAINT [PK_tbSalesTracking] PRIMARY KEY CLUSTERED 
(
	[TRACKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEmployees]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEmployees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](30) NULL,
	[SURNAME] [varchar](30) NULL,
	[GSM] [varchar](15) NULL,
	[EMAIL] [varchar](30) NULL,
	[ADDRESS] [varchar](50) NULL,
	[JOB] [varchar](30) NULL,
	[SALARY] [int] NULL,
 CONSTRAINT [PK_tbEmployees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNotes]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DATE] [varchar](50) NULL,
	[TITLE] [varchar](50) NULL,
	[NOTE] [varchar](500) NULL,
	[WRITER] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOutgoings]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOutgoings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ELECTRICBILL] [decimal](18, 2) NULL,
	[WATERBILL] [decimal](18, 2) NULL,
	[GASBILL] [decimal](18, 2) NULL,
	[INTERNETBILL] [decimal](18, 2) NULL,
	[SALARIES] [decimal](18, 2) NULL,
	[EXTRAS] [decimal](18, 2) NULL,
	[MONTH] [varchar](10) NULL,
	[YEAR] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbProducts]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TYPE] [varchar](50) NULL,
	[BRAND] [varchar](50) NULL,
	[MODEL] [varchar](50) NULL,
	[YEAR] [char](4) NULL,
	[COUNT] [int] NULL,
	[BUYINGPRICE] [decimal](18, 2) NULL,
	[SALEPRICE] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbRetailCustomers]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRetailCustomers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](30) NULL,
	[SURNAME] [varchar](30) NULL,
	[GSM] [varchar](15) NULL,
	[EMAIL] [varchar](30) NULL,
	[ADDRESS] [varchar](50) NULL,
 CONSTRAINT [PK_tbRetailCustomers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbRetailSalesTracking]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRetailSalesTracking](
	[TRACKID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCTID] [int] NULL,
	[AMOUNT] [int] NULL,
	[EMPLOYEEID] [int] NULL,
	[CUSTOMERID] [int] NULL,
	[PRICE] [decimal](18, 2) NULL,
	[TOTAL] [decimal](18, 2) NULL,
	[BILLID] [int] NULL,
	[DATE] [varchar](50) NULL,
 CONSTRAINT [PK_tbRetailSalesTracking] PRIMARY KEY CLUSTERED 
(
	[TRACKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbStocks]    Script Date: 10/07/2021 18:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbStocks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TYPE] [varchar](50) NULL,
	[COUNT] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbBanks] ON 

INSERT [dbo].[tbBanks] ([ID], [BANKNAME], [BRANCH], [ACCOUNTNO], [AUTHORIZED], [DATE], [FIRMID]) VALUES (1, N'Isbank', N'Bornova', N'001', N'Fatma', NULL, 1)
INSERT [dbo].[tbBanks] ([ID], [BANKNAME], [BRANCH], [ACCOUNTNO], [AUTHORIZED], [DATE], [FIRMID]) VALUES (2, N'Garanti', N'Konak', N'004', N'Ahmet', NULL, 3)
INSERT [dbo].[tbBanks] ([ID], [BANKNAME], [BRANCH], [ACCOUNTNO], [AUTHORIZED], [DATE], [FIRMID]) VALUES (3, N'Yapi Kredi', N'Buca', N'009', N'Mehmet', N'', 4)
INSERT [dbo].[tbBanks] ([ID], [BANKNAME], [BRANCH], [ACCOUNTNO], [AUTHORIZED], [DATE], [FIRMID]) VALUES (12, N'Isbank', N'Karsiyaka', N'564', N'Fatma', N'2.2.2022', 3)
INSERT [dbo].[tbBanks] ([ID], [BANKNAME], [BRANCH], [ACCOUNTNO], [AUTHORIZED], [DATE], [FIRMID]) VALUES (13, N'Isbank', N'Bornova', N'001', N'Fatma', N'1.1.2020', 3)
INSERT [dbo].[tbBanks] ([ID], [BANKNAME], [BRANCH], [ACCOUNTNO], [AUTHORIZED], [DATE], [FIRMID]) VALUES (14, N'Yapi Kredi', N'Karsiyaka', N'004', N'Ahmet', N'1.1.2021', 4)
SET IDENTITY_INSERT [dbo].[tbBanks] OFF
GO
SET IDENTITY_INSERT [dbo].[tbBillDetail] ON 

INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (2, 1, N'Phone', 1, CAST(1150.00 AS Decimal(18, 2)), CAST(1150.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (3, 2, N'TV', 3, CAST(1000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (4, 6, N'Phone', 5, CAST(1200.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (5, 3, N'Mac', 4, CAST(1000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (7, NULL, N'TV', 7, CAST(1200.00 AS Decimal(18, 2)), CAST(8400.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (8, 6, N'TV', 10, CAST(1200.00 AS Decimal(18, 2)), CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (9, 16, N'Galaxy', 10, CAST(900.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (10, 17, N'Airpods', 2, CAST(200.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (13, 20, N'Airpods', 3, CAST(200.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (14, 21, N'xxx', 1, CAST(15.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[tbBillDetail] ([ID], [BILLID], [PRODUCT], [COUNT], [UNITPRICE], [TOTALPRICE]) VALUES (17, 24, N'Macbook Pro', 1, CAST(1750.00 AS Decimal(18, 2)), CAST(1750.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tbBillDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tbBillingData] ON 

INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (1, N'A01       ', N'Suleyman', N'Ayse', N'Huseyin', N'1.1.2021', N'13.30')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (2, N'A02       ', N'Kadir', N'Servet', N'Haluk', N'2.1.2021', N'15.00')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (3, N'A03       ', N'Fatma', N'Ayse', N'Mehmet', N'3.1.2021', N'9.45')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (6, N'A04       ', N'Murat', N'Ahmet', N'Suleyman', N'4.1.2021', N'15.20')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (7, N'A05       ', N'Pakize', N'Mehmet', N'Irem', N'5.5.2021', N'10.00')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (15, N'Z15DFS    ', N'Irem Sark', N'Kamil', N'Veysel', N'11.7.2021', N'9.50')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (16, N'G4984     ', N'C Company', N'Kemal', N'Hazal', N'11.15.2020', N'10.10')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (17, N'F00FEE8   ', N'Zeynep Kara', N'Zeynep', N'Faruk', N'9.7.2021', N'10.15')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (20, N'GG489     ', N'Hasan', N'Faruk', N'Hasan', N'10.15.2020', N'11.15')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (21, N'FGF48G4   ', N'Hasan', N'Faruk', N'Hasan', N'15.15', N'3.3.2021')
INSERT [dbo].[tbBillingData] ([ID], [NO], [CUSTOMER], [BILLER], [RECEIVER], [DATE], [TIME]) VALUES (24, N'GT4964    ', N'Hasan', N'Fatma', N'Ayse', N'10.7.2021', N'16.50')
SET IDENTITY_INSERT [dbo].[tbBillingData] OFF
GO
SET IDENTITY_INSERT [dbo].[tbCorporateCustomers] ON 

INSERT [dbo].[tbCorporateCustomers] ([ID], [NAME], [AUTHORIZED], [GSM], [EMAIL], [ADDRESS]) VALUES (1, N'Hospital', N'Ayse', N'999', N'somebody@', N'Izmir')
INSERT [dbo].[tbCorporateCustomers] ([ID], [NAME], [AUTHORIZED], [GSM], [EMAIL], [ADDRESS]) VALUES (3, N'BJ', N'Mehmet', N'777', N'somebody@', N'Aydin')
INSERT [dbo].[tbCorporateCustomers] ([ID], [NAME], [AUTHORIZED], [GSM], [EMAIL], [ADDRESS]) VALUES (4, N'A ', N'Ali', N'888', N'someone@', N'Manisa')
INSERT [dbo].[tbCorporateCustomers] ([ID], [NAME], [AUTHORIZED], [GSM], [EMAIL], [ADDRESS]) VALUES (5, N'C Company', N'Ahmet', N'545-798-1541', N'birisi@xxmail.com', N'Mugla')
SET IDENTITY_INSERT [dbo].[tbCorporateCustomers] OFF
GO
SET IDENTITY_INSERT [dbo].[tbCorporateSalesTracking] ON 

INSERT [dbo].[tbCorporateSalesTracking] ([TRACKID], [PRODUCTID], [AMOUNT], [EMPLOYEEID], [CUSTOMERID], [PRICE], [TOTAL], [BILLID], [DATE]) VALUES (4, 6, 10, 1, 5, CAST(900.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), 16, N'11.10.2020')
INSERT [dbo].[tbCorporateSalesTracking] ([TRACKID], [PRODUCTID], [AMOUNT], [EMPLOYEEID], [CUSTOMERID], [PRICE], [TOTAL], [BILLID], [DATE]) VALUES (5, 5, 1, 1, 4, CAST(1750.00 AS Decimal(18, 2)), CAST(1750.00 AS Decimal(18, 2)), 19, N'9.10.2020')
SET IDENTITY_INSERT [dbo].[tbCorporateSalesTracking] OFF
GO
SET IDENTITY_INSERT [dbo].[tbEmployees] ON 

INSERT [dbo].[tbEmployees] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS], [JOB], [SALARY]) VALUES (1, N'Faruk', N'Kart', N'111-000-444', N'someone@xmail.com', N'Karsiyaka', N'Accountant', 3000)
INSERT [dbo].[tbEmployees] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS], [JOB], [SALARY]) VALUES (2, N'Ahmet', N'Yesil', N'222-333-444', N'somebody@vymail.com', N'Karsiyaka', N'Sales Personnel', 2250)
INSERT [dbo].[tbEmployees] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS], [JOB], [SALARY]) VALUES (4, N'Huseyin', N'Sari', N'777-555-444', N'birisi@xmail.com', N'Balcova', N'Administritive', 4000)
INSERT [dbo].[tbEmployees] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS], [JOB], [SALARY]) VALUES (5, N'Mehmet', N'Oz', N'0-5-555-7', N'mehmet@xamail.com', N'Konak', N'Cleaning', 1750)
INSERT [dbo].[tbEmployees] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS], [JOB], [SALARY]) VALUES (6, N'Ayse', N'Mavi', N'333-00-7477-8', N'birisi@xyzmail.com', N'Buca', N'Administritive', 4000)
SET IDENTITY_INSERT [dbo].[tbEmployees] OFF
GO
SET IDENTITY_INSERT [dbo].[tbNotes] ON 

INSERT [dbo].[tbNotes] ([ID], [DATE], [TITLE], [NOTE], [WRITER]) VALUES (1, N'2.2.2021', N'Sodexo', N'Your meal card balances will be deposited in the second week of this month. ', N'Accountant')
INSERT [dbo].[tbNotes] ([ID], [DATE], [TITLE], [NOTE], [WRITER]) VALUES (2, N'3.3.2021', N'Cleaning Equipment', N'New cleaning materials should be purchased. ', N'Cleaning Staff')
SET IDENTITY_INSERT [dbo].[tbNotes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbOutgoings] ON 

INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (1, CAST(250.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(350.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), N'January', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (2, CAST(275.00 AS Decimal(18, 2)), CAST(195.00 AS Decimal(18, 2)), CAST(350.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), N'February', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (3, CAST(225.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(750.00 AS Decimal(18, 2)), N'March', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (5, CAST(200.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), N'April', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (6, CAST(300.00 AS Decimal(18, 2)), CAST(190.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), N'May', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (7, CAST(315.00 AS Decimal(18, 2)), CAST(215.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), N'June', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (8, CAST(287.00 AS Decimal(18, 2)), CAST(268.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(275.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), N'July', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (9, CAST(315.00 AS Decimal(18, 2)), CAST(258.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(275.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), N'August', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (10, CAST(222.00 AS Decimal(18, 2)), CAST(310.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(275.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), N'September', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (11, CAST(189.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(275.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(350.00 AS Decimal(18, 2)), N'October', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (12, CAST(236.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), CAST(285.00 AS Decimal(18, 2)), CAST(275.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(215.00 AS Decimal(18, 2)), N'November', N'2020')
INSERT [dbo].[tbOutgoings] ([ID], [ELECTRICBILL], [WATERBILL], [GASBILL], [INTERNETBILL], [SALARIES], [EXTRAS], [MONTH], [YEAR]) VALUES (13, CAST(221.00 AS Decimal(18, 2)), CAST(205.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(275.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(1255.00 AS Decimal(18, 2)), N'December', N'2020')
SET IDENTITY_INSERT [dbo].[tbOutgoings] OFF
GO
SET IDENTITY_INSERT [dbo].[tbProducts] ON 

INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (1, N'Phone', N'Apple', N'Iphone 12', N'2020', 25, CAST(1000.00 AS Decimal(18, 2)), CAST(1270.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (5, N'Laptop', N'Apple', N'Macbook Pro', N'2020', 10, CAST(1500.00 AS Decimal(18, 2)), CAST(1750.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (6, N'Phone', N'Samsung', N'Galaxy', N'2019', 35, CAST(750.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (7, N'Desktop', N'Apple', N'Mac', N'2020', 11, CAST(900.00 AS Decimal(18, 2)), CAST(1100.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (8, N'Desktop', N'MSI', N'AEGIS', N'2021', 17, CAST(850.00 AS Decimal(18, 2)), CAST(1050.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (10, N'Phone', N'Apple', N'Iphone 11', N'2020', 7, CAST(900.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (11, N'Earphone', N'Apple', N'Airpods', N'2020', 9, CAST(100.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (12, N'Speakers', N'Logitech', N'Bluetooth', N'2021', 40, CAST(50.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (13, N'Mouse', N'Logitech', N'xxx', N'2021', 3, CAST(10.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProducts] ([ID], [TYPE], [BRAND], [MODEL], [YEAR], [COUNT], [BUYINGPRICE], [SALEPRICE]) VALUES (14, N'Keyboard', N'Logitech', N'xxx', N'2021', 7, CAST(15.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tbProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[tbRetailCustomers] ON 

INSERT [dbo].[tbRetailCustomers] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS]) VALUES (2, N'Ahmet', N'Ak', N'444-000-111', N'somebody@ymail.com', N'Konak')
INSERT [dbo].[tbRetailCustomers] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS]) VALUES (4, N'Zeynep', N'Kara', N'222-333-000', N'somebody@xmail.com', N'Karsiyaka')
INSERT [dbo].[tbRetailCustomers] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS]) VALUES (5, N'Hasan', N'Garp', N'222-333-111', N'somebody@abcmail.com', N'Bayrakli')
INSERT [dbo].[tbRetailCustomers] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS]) VALUES (6, N'Irem', N'Sark', N'777-88-99999', N'someone@xmail.com', N'Buca')
INSERT [dbo].[tbRetailCustomers] ([ID], [NAME], [SURNAME], [GSM], [EMAIL], [ADDRESS]) VALUES (7, N'Mehmet', N'Ozturk', N'000-444-11', N'mehoz@abcmail.com', N'Manisa')
SET IDENTITY_INSERT [dbo].[tbRetailCustomers] OFF
GO
SET IDENTITY_INSERT [dbo].[tbRetailSalesTracking] ON 

INSERT [dbo].[tbRetailSalesTracking] ([TRACKID], [PRODUCTID], [AMOUNT], [EMPLOYEEID], [CUSTOMERID], [PRICE], [TOTAL], [BILLID], [DATE]) VALUES (3, 5, 1, 4, 5, CAST(1750.00 AS Decimal(18, 2)), CAST(1750.00 AS Decimal(18, 2)), 13, N'6.6.2021')
INSERT [dbo].[tbRetailSalesTracking] ([TRACKID], [PRODUCTID], [AMOUNT], [EMPLOYEEID], [CUSTOMERID], [PRICE], [TOTAL], [BILLID], [DATE]) VALUES (4, 14, 2, 2, 7, CAST(25.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 14, N'10.10.2020')
INSERT [dbo].[tbRetailSalesTracking] ([TRACKID], [PRODUCTID], [AMOUNT], [EMPLOYEEID], [CUSTOMERID], [PRICE], [TOTAL], [BILLID], [DATE]) VALUES (5, 5, 2, 5, 6, CAST(1750.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)), 15, N'11.7.2021')
INSERT [dbo].[tbRetailSalesTracking] ([TRACKID], [PRODUCTID], [AMOUNT], [EMPLOYEEID], [CUSTOMERID], [PRICE], [TOTAL], [BILLID], [DATE]) VALUES (12, 5, 1, 6, 5, CAST(1750.00 AS Decimal(18, 2)), CAST(1750.00 AS Decimal(18, 2)), 24, N'10.7.2021')
SET IDENTITY_INSERT [dbo].[tbRetailSalesTracking] OFF
GO
ALTER TABLE [dbo].[tbBanks]  WITH CHECK ADD  CONSTRAINT [FK_tbBanks_tbCorporateCustomers] FOREIGN KEY([FIRMID])
REFERENCES [dbo].[tbCorporateCustomers] ([ID])
GO
ALTER TABLE [dbo].[tbBanks] CHECK CONSTRAINT [FK_tbBanks_tbCorporateCustomers]
GO
ALTER TABLE [dbo].[tbBillDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbBillDetail_tbBillingData] FOREIGN KEY([BILLID])
REFERENCES [dbo].[tbBillingData] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbBillDetail] CHECK CONSTRAINT [FK_tbBillDetail_tbBillingData]
GO
ALTER TABLE [dbo].[tbCorporateSalesTracking]  WITH CHECK ADD  CONSTRAINT [FK_tbCorporateSalesTracking_tbProducts] FOREIGN KEY([PRODUCTID])
REFERENCES [dbo].[tbProducts] ([ID])
GO
ALTER TABLE [dbo].[tbCorporateSalesTracking] CHECK CONSTRAINT [FK_tbCorporateSalesTracking_tbProducts]
GO
ALTER TABLE [dbo].[tbCorporateSalesTracking]  WITH CHECK ADD  CONSTRAINT [FK_tbSalesTracking_tbCorporateCustomers] FOREIGN KEY([CUSTOMERID])
REFERENCES [dbo].[tbCorporateCustomers] ([ID])
GO
ALTER TABLE [dbo].[tbCorporateSalesTracking] CHECK CONSTRAINT [FK_tbSalesTracking_tbCorporateCustomers]
GO
ALTER TABLE [dbo].[tbCorporateSalesTracking]  WITH CHECK ADD  CONSTRAINT [FK_tbSalesTracking_tbEmployees] FOREIGN KEY([EMPLOYEEID])
REFERENCES [dbo].[tbEmployees] ([ID])
GO
ALTER TABLE [dbo].[tbCorporateSalesTracking] CHECK CONSTRAINT [FK_tbSalesTracking_tbEmployees]
GO
ALTER TABLE [dbo].[tbRetailSalesTracking]  WITH CHECK ADD  CONSTRAINT [FK_tbRetailSalesTracking_tbEmployees] FOREIGN KEY([EMPLOYEEID])
REFERENCES [dbo].[tbEmployees] ([ID])
GO
ALTER TABLE [dbo].[tbRetailSalesTracking] CHECK CONSTRAINT [FK_tbRetailSalesTracking_tbEmployees]
GO
ALTER TABLE [dbo].[tbRetailSalesTracking]  WITH CHECK ADD  CONSTRAINT [FK_tbRetailSalesTracking_tbProducts] FOREIGN KEY([PRODUCTID])
REFERENCES [dbo].[tbProducts] ([ID])
GO
ALTER TABLE [dbo].[tbRetailSalesTracking] CHECK CONSTRAINT [FK_tbRetailSalesTracking_tbProducts]
GO
ALTER TABLE [dbo].[tbRetailSalesTracking]  WITH CHECK ADD  CONSTRAINT [FK_tbRetailSalesTracking_tbRetailCustomers] FOREIGN KEY([EMPLOYEEID])
REFERENCES [dbo].[tbRetailCustomers] ([ID])
GO
ALTER TABLE [dbo].[tbRetailSalesTracking] CHECK CONSTRAINT [FK_tbRetailSalesTracking_tbRetailCustomers]
GO
ALTER TABLE [dbo].[tbRetailSalesTracking]  WITH CHECK ADD  CONSTRAINT [FK_tbRetailSalesTracking_tbRetailCustomers1] FOREIGN KEY([CUSTOMERID])
REFERENCES [dbo].[tbRetailCustomers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbRetailSalesTracking] CHECK CONSTRAINT [FK_tbRetailSalesTracking_tbRetailCustomers1]
GO
/****** Object:  StoredProcedure [dbo].[BankInformation]    Script Date: 10/07/2021 18:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[BankInformation]
as
Select tbBanks.ID, tbBanks.BANKNAME, tbBanks.BRANCH, tbBanks.ACCOUNTNO,tbBanks.AUTHORIZED, tbBanks.DATE, tbCorporateCustomers.NAME from tbBanks inner join tbCorporateCustomers
on tbBanks.FIRMID = tbCorporateCustomers.ID
GO
/****** Object:  StoredProcedure [dbo].[CorporateTracking]    Script Date: 10/07/2021 18:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[CorporateTracking]
As
Select TRACKID, TYPE, AMOUNT, (tbEmployees.NAME+' '+SURNAME) AS 'SELLER', tbCorporateCustomers.NAME, SALEPRICE,TOTAL, BILLID,DATE 
From tbCorporateSalesTracking
inner join
tbProducts
on
tbCorporateSalesTracking.PRODUCTID = tbProducts.ID
inner join
tbEmployees
on
tbCorporateSalesTracking.EMPLOYEEID = tbEmployees.ID
inner join
tbCorporateCustomers
on
tbCorporateSalesTracking.CUSTOMERID = tbCorporateCustomers.ID
GO
/****** Object:  StoredProcedure [dbo].[RecentCorporateSales]    Script Date: 10/07/2021 18:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[RecentCorporateSales]
as
Select TYPE, COUNT, SALEPRICE,TOTAL,DATE 
From tbCorporateSalesTracking
inner join
tbProducts
on
tbCorporateSalesTracking.PRODUCTID = tbProducts.ID
inner join
tbCorporateCustomers
on
tbCorporateSalesTracking.CUSTOMERID = tbCorporateCustomers.ID
GO
/****** Object:  StoredProcedure [dbo].[RecentRetailSales]    Script Date: 10/07/2021 18:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[RecentRetailSales]
as
Select TYPE, AMOUNT, PRICE, TOTAL, DATE
From tbRetailSalesTracking
inner join
tbProducts
on
tbRetailSalesTracking.PRODUCTID = tbProducts.ID
GO
/****** Object:  StoredProcedure [dbo].[RetailTracking]    Script Date: 10/07/2021 18:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[RetailTracking]
as
Select TRACKID, TYPE, AMOUNT, (tbEmployees.NAME + ' ' + tbEmployees.SURNAME) as 'SELLER', (tbRetailCustomers.NAME+' '+tbRetailCustomers.SURNAME) as CUSTOMER, PRICE,TOTAL,BILLID,DATE
From tbRetailSalesTracking
inner join
tbProducts
on
tbRetailSalesTracking.PRODUCTID = tbProducts.ID
inner join tbEmployees
on 
tbRetailSalesTracking.EMPLOYEEID = tbEmployees.ID
inner join tbRetailCustomers
on
tbRetailSalesTracking.CUSTOMERID = tbRetailCustomers.ID
GO
USE [master]
GO
ALTER DATABASE [dbTheTechnoMarket] SET  READ_WRITE 
GO
