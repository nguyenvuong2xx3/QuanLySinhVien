USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 03/20/2024 10:34:55 ******/
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLSV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLSV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = OFF
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 03/20/2024 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Gender] [nvarchar](255) NULL,
	[Role] [varchar](10) NULL,
	[MASV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIEMSV]    Script Date: 03/20/2024 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEMSV](
	[MASV] [varchar](10) NOT NULL,
	[MAMH] [varchar](10) NOT NULL,
	[DIEM] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 03/20/2024 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALP] [varchar](10) NOT NULL,
	[TENLP] [varchar](255) NULL,
	[NK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MALP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 03/20/2024 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [varchar](10) NOT NULL,
	[TENMH] [nvarchar](255) NULL,
	[SOTC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 03/20/2024 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [varchar](10) NOT NULL,
	[TENSV] [nvarchar](255) NULL,
	[DCSV] [nvarchar](255) NULL,
	[MALP] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ACCOUNT] ON 

INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (1, N'sv001@example.com', N'123', N'Male', N'Student', N'SV001')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (2, N'sv002@example.com', N'123', N'Female', N'Student', N'SV002')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (3, N'sv003@example.com', N'123', N'Male', N'Student', N'SV003')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (4, N'sv004@example.com', N'123', N'Female', N'Student', N'SV004')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (5, N'sv005@example.com', N'123', N'Male', N'Student', N'SV005')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (6, N'sv006@example.com', N'123', N'Female', N'Student', N'SV006')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (7, N'sv007@example.com', N'123', N'Male', N'Student', N'SV007')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (8, N'sv008@example.com', N'123', N'Female', N'Student', N'SV008')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (9, N'sv009@example.com', N'123', N'Male', N'Student', N'SV009')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (11, N'admin@gmail.com', N'123', N'Male', N'Admin', NULL)
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (12, N'giaovien@gmail.com', N'123', N'Female', N'Teacher', NULL)
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (13, N'nhatht@gmail.com', N'123', N'Male', N'Student', N'SV012')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (14, N'sv014@example.com', N'123', N'Male', N'Student', N'SV014')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (15, N'sv015@example.com', N'123', N'Female', N'Student', N'SV015')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (16, N'sv016@example.com', N'123', N'Male', N'Student', N'SV016')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (17, N'sv017@example.com', N'123', N'Female', N'Student', N'SV017')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (18, N'sv018@example.com', N'123', N'Male', N'Student', N'SV018')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (19, N'sv019@example.com', N'123', N'Female', N'Student', N'SV019')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (20, N'sv020@example.com', N'123', N'Male', N'Student', N'SV020')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (21, N'sv021@example.com', N'123', N'Female', N'Student', N'SV021')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (22, N'sv022@example.com', N'123', N'Male', N'Student', N'SV022')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (23, N'sv023@example.com', N'123', N'Female', N'Student', N'SV023')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (24, N'sv024@example.com', N'123', N'Male', N'Student', N'SV024')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (25, N'sv025@example.com', N'123', N'Female', N'Student', N'SV025')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (26, N'sv026@example.com', N'123', N'Male', N'Student', N'SV026')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (27, N'sv027@example.com', N'123', N'Female', N'Student', N'SV027')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (28, N'sv028@example.com', N'123', N'Male', N'Student', N'SV028')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (29, N'sv029@example.com', N'123', N'Female', N'Student', N'SV029')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (30, N'sv030@example.com', N'123', N'Male', N'Student', N'SV030')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (31, N'sv031@example.com', N'123', N'Female', N'Student', N'SV031')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (32, N'sv032@example.com', N'123', N'Male', N'Student', N'SV032')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (33, N'sv033@example.com', N'123', N'Female', N'Student', N'SV033')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (34, N'sv034@example.com', N'123', N'Male', N'Student', N'SV034')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (35, N'sv035@example.com', N'123', N'Female', N'Student', N'SV035')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (36, N'sv036@example.com', N'123', N'Male', N'Student', N'SV036')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (37, N'sv037@example.com', N'123', N'Female', N'Student', N'SV037')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (38, N'sv038@example.com', N'123', N'Male', N'Student', N'SV038')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (39, N'sv039@example.com', N'123', N'Female', N'Student', N'SV039')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (40, N'sv040@example.com', N'123', N'Male', N'Student', N'SV040')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (41, N'sv041@example.com', N'123', N'Female', N'Student', N'SV041')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (42, N'sv042@example.com', N'123', N'Male', N'Student', N'SV042')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (43, N'sv043@example.com', N'123', N'Female', N'Student', N'SV043')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (44, N'sv044@example.com', N'123', N'Male', N'Student', N'SV044')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (45, N'sv045@example.com', N'123', N'Female', N'Student', N'SV045')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (46, N'sv046@example.com', N'123', N'Male', N'Student', N'SV046')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (47, N'sv047@example.com', N'123', N'Female', N'Student', N'SV047')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (48, N'sv048@example.com', N'123', N'Male', N'Student', N'SV048')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (49, N'sv049@example.com', N'123', N'Female', N'Student', N'SV049')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (50, N'sv050@example.com', N'123', N'Male', N'Student', N'SV050')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (51, N'sv051@example.com', N'123', N'Female', N'Student', N'SV051')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (52, N'sv052@example.com', N'123', N'Male', N'Student', N'SV052')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (53, N'sv053@example.com', N'123', N'Female', N'Student', N'SV053')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (54, N'sv054@example.com', N'123', N'Male', N'Student', N'SV054')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (55, N'sv055@example.com', N'123', N'Female', N'Student', N'SV055')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (56, N'sv056@example.com', N'123', N'Male', N'Student', N'SV056')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (57, N'sv057@example.com', N'123', N'Female', N'Student', N'SV057')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (58, N'sv058@example.com', N'123', N'Male', N'Student', N'SV058')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (59, N'sv059@example.com', N'123', N'Female', N'Student', N'SV059')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (60, N'sv060@example.com', N'123', N'Male', N'Student', N'SV060')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (61, N'sv061@example.com', N'123', N'Female', N'Student', N'SV061')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (62, N'sv062@example.com', N'123', N'Male', N'Student', N'SV062')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (63, N'sv063@example.com', N'123', N'Female', N'Student', N'SV063')
INSERT [dbo].[ACCOUNT] ([Id], [Email], [Password], [Gender], [Role], [MASV]) VALUES (65, N'Nhath@gmail.com', N'123', NULL, N'Student', N'SV065')
SET IDENTITY_INSERT [dbo].[ACCOUNT] OFF
GO
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV001', N'MH001', 10)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV001', N'MH003', 8.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV001', N'MH005', 8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV001', N'MH008', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV001', N'MH011', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV002', N'MH001', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV002', N'MH002', 7.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV003', N'MH001', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV004', N'MH001', 6.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV005', N'MH001', 8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV005', N'MH002', 8.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV005', N'MH005', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV006', N'MH001', 7.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV007', N'MH001', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV008', N'MH001', 8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV009', N'MH001', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV012', N'MH001', 9.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV012', N'MH005', 10)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV013', N'MH001', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV014', N'MH001', 7.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV014', N'MH002', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV014', N'MH003', 8.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV014', N'MH004', 9.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV014', N'MH007', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV014', N'MH008', 8.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV014', N'MH011', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV015', N'MH001', 8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV015', N'MH002', 7.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV015', N'MH004', 6.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV015', N'MH007', 10)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV015', N'MH009', 2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV015', N'MH011', 2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV016', N'MH001', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV016', N'MH003', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV016', N'MH005', 8.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV016', N'MH007', 4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV017', N'MH002', 8.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV017', N'MH004', 7.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV017', N'MH006', 9.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV018', N'MH003', 6.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV018', N'MH005', 8.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV018', N'MH006', 7.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV018', N'MH011', 2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV019', N'MH001', 9.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV019', N'MH003', 8.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV019', N'MH005', 7.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV020', N'MH002', 7.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV020', N'MH004', 6.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV020', N'MH006', 8.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV021', N'MH001', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV021', N'MH002', 8.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV021', N'MH004', 7.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV022', N'MH001', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV022', N'MH003', 8.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV022', N'MH006', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV023', N'MH002', 8.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV023', N'MH005', 9.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV023', N'MH007', 7.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV024', N'MH001', 7.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV024', N'MH002', 8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV024', N'MH004', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV024', N'MH006', 5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV024', N'MH9999', 5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV025', N'MH003', 8.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV025', N'MH005', 7.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV025', N'MH008', 9.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV026', N'MH001', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV026', N'MH004', 7.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV027', N'MH002', 8.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV027', N'MH005', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV027', N'MH010', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV028', N'MH003', 7.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV028', N'MH006', 8.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV028', N'MH011', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV029', N'MH001', 7.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV029', N'MH002', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV029', N'MH003', 8.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV030', N'MH002', 7.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV030', N'MH004', 6.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV030', N'MH005', 8.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV031', N'MH003', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV031', N'MH005', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV031', N'MH006', 8.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV032', N'MH005', 8.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV032', N'MH006', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV032', N'MH010', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV033', N'MH001', 7.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV033', N'MH004', 7.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV033', N'MH006', 9.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV034', N'MH004', 6.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV034', N'MH005', 8.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV035', N'MH005', 8.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV035', N'MH008', 7.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV035', N'MH011', 9.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV036', N'MH001', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV036', N'MH004', 7.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV037', N'MH002', 8.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV037', N'MH005', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV037', N'MH010', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV038', N'MH006', 7.9)
GO
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV038', N'MH010', 8.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV038', N'MH011', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV039', N'MH001', 7.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV039', N'MH002', 8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV039', N'MH004', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV040', N'MH003', 8.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV040', N'MH005', 7.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV040', N'MH008', 9.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV041', N'MH002', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV041', N'MH010', 7.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV042', N'MH007', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV042', N'MH011', 9.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV043', N'MH001', 7.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV043', N'MH002', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV043', N'MH003', 8.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV044', N'MH002', 7.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV044', N'MH004', 6.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV044', N'MH005', 8.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV045', N'MH003', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV045', N'MH005', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV045', N'MH006', 8.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV046', N'MH005', 8.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV046', N'MH006', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV046', N'MH010', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV047', N'MH001', 7.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV047', N'MH004', 7.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV047', N'MH006', 9.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV048', N'MH004', 6.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV048', N'MH005', 8.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV049', N'MH005', 8.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV049', N'MH008', 7.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV049', N'MH011', 9.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV050', N'MH001', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV050', N'MH004', 7.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV051', N'MH002', 8.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV051', N'MH005', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV051', N'MH010', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV052', N'MH006', 7.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV052', N'MH010', 8.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV052', N'MH011', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV053', N'MH001', 7.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV053', N'MH002', 8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV053', N'MH004', 9.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV054', N'MH003', 8.7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV054', N'MH005', 7.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV054', N'MH008', 9.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV055', N'MH002', 7.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV055', N'MH009', 8.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV055', N'MH010', 7.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV056', N'MH007', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV056', N'MH009', 8.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV056', N'MH011', 9.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV057', N'MH001', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV057', N'MH003', 7)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV057', N'MH010', 8.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV058', N'MH002', 8.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV058', N'MH004', 7.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV058', N'MH006', 9.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV059', N'MH003', 6.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV059', N'MH005', 8.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV059', N'MH006', 7.9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV060', N'MH005', 8.3)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV060', N'MH007', 8.2)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV060', N'MH011', 9.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV061', N'MH001', 7.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV061', N'MH004', 6.8)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV061', N'MH006', 8.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV062', N'MH003', 8.6)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV062', N'MH005', 9.4)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV062', N'MH010', 8.1)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV063', N'MH001', 9)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV063', N'MH004', 7.5)
INSERT [dbo].[DIEMSV] ([MASV], [MAMH], [DIEM]) VALUES (N'SV063', N'MH009', 8.8)
GO
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP001', N'K61', 2022)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP002', N'K62', 2023)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP003', N'K63', 2024)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP004', N'K64', 2025)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP005', N'K65', 2026)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP006', N'K66', 2027)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP007', N'K67', 2028)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP008', N'K68', 2029)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP009', N'K69', 2030)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP0099', N'K2456', 2024)
INSERT [dbo].[LOP] ([MALP], [TENLP], [NK]) VALUES (N'LP010', N'K70', 2031)
GO
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH001', N'Toán cao cấp', 4)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH002', N'Lập trình Java', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH003', N'Hệ điều hành', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH004', N'Cơ sở dữ liệu', 4)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH005', N'Mạng máy tính', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH006', N'An toàn thông tin', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH007', N'Tiếng Anh', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH008', N'Triết học', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH009', N'Nhập môn khoa học máy tính', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH010', N'Kỹ thuật lập trình', 4)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH011', N'Khởi nghiệp', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH9999', N'Mon CNPM', 4)
GO
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV001', N'Nguyen Van A', N'123 ABC Street', N'LP001')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV002', N'Tran Thi B', N'456 XYZ Street', N'LP002')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV003', N'Le Van C', N'789 QWE Street', N'LP003')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV004', N'Pham Thi D', N'321 RTY Street', N'LP004')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV005', N'Hoang Van E', N'654 UIO Street', N'LP005')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV006', N'Do Thi F', N'987 JKL Street', N'LP006')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV007', N'Vu Van G', N'147 ASD Street', N'LP007')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV008', N'Nguyen Thi H', N'258 FGH Street', N'LP008')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV009', N'Tran Van I', N'369 ZXC Street', N'LP009')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV0099', N'Nguyen Van AÂ', N'123 ABC Street', N'LP004')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV012', N'Hồ Trịnh Nhật', N'23/6 Võ Duy Dương', N'LP010')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV013', N'Lê Tiến Đạt', N's303', N'LP008')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV014', N'Nguyen Van K', N'111 LMN Street', N'LP001')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV015', N'Tran Thi L', N'222 OPQ Street', N'LP001')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV016', N'Le Van M', N'333 RST Street', N'LP001')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV017', N'Pham Thi N', N'444 UVW Street', N'LP001')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV018', N'Hoang Van O', N'555 XYZ Street', N'LP001')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV019', N'Do Thi P', N'hcm q12', N'LP002')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV020', N'Vu Van Q', N'777 DEF Street', N'LP002')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV021', N'Nguyen Thi R', N'888 GHI Street', N'LP002')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV022', N'Tran Van S', N'999 JKL Street', N'LP002')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV023', N'Hồ Trịnh T', N'123 MNO Street', N'LP002')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV024', N'Lê Tiến U', N'456 PQR Street', N'LP003')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV025', N'Nguyen Van V', N'789 STU Street', N'LP003')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV026', N'Tran Thi W', N'147 VWX Street', N'LP003')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV027', N'Le Van X', N'258 YZS Street', N'LP003')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV028', N'Pham Thi Y', N'369 ASD Street', N'LP003')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV029', N'Nguyen Van Z', N'963 KLM Street', N'LP004')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV030', N'Tran Thi ZZ', N'321 PQR Street', N'LP004')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV031', N'Le Van Y', N'654 MNO Street', N'LP005')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV032', N'Pham Thi YY', N'987 DEF Street', N'LP005')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV033', N'Hoang Van X', N'147 UVW Street', N'LP006')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV034', N'Do Thi XX', N'258 STU Street', N'LP006')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV035', N'Vu Van W', N'369 YZS Street', N'LP007')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV036', N'Nguyen Thi WW', N'111 RTY Street', N'LP007')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV037', N'Tran Van V', N'789 UIO Street', N'LP008')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV038', N'Hồ Trịnh U', N'222 JKL Street', N'LP008')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV039', N'Lê Tiến T', N'555 ASD Street', N'LP009')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV040', N'Nguyen Van S', N'666 FGH Street', N'LP009')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV041', N'Tran Thi R', N'444 VWX Street', N'LP010')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV042', N'Le Van Q', N'963 JKL Street', N'LP010')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV043', N'Pham Thi Q', N'963 MNO Street', N'LP004')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV044', N'Hoang Van P', N'321 PQR Street', N'LP004')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV045', N'Do Thi O', N'654 KLM Street', N'LP004')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV046', N'Vu Van N', N'987 DEF Street', N'LP005')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV047', N'Nguyen Thi M', N'147 UVW Street', N'LP005')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV048', N'Tran Van L', N'258 STU Street', N'LP005')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV049', N'Hồ Trịnh K', N'111 RTY Street', N'LP006')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV050', N'Lê Tiến J', N'222 JKL Street', N'LP006')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV051', N'Nguyen Van I', N'789 UIO Street', N'LP006')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV052', N'Tran Thi H', N'555 ASD Street', N'LP007')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV053', N'Le Van G', N'666 FGH Street', N'LP007')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV054', N'Pham Thi F', N'444 VWX Street', N'LP007')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV055', N'Hoang Van E', N'963 JKL Street', N'LP008')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV056', N'Do Thi D', N'321 PQR Street', N'LP008')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV057', N'Vu Van C', N'654 KLM Street', N'LP008')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV058', N'Nguyen Thi B', N'987 DEF Street', N'LP009')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV059', N'Tran Van A', N'147 UVW Street', N'LP009')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV060', N'Hồ Trịnh AA', N'258 STU Street', N'LP009')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV061', N'Lê Tiến BB', N'111 RTY Street', N'LP010')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV062', N'Nguyen Van CC', N'222 JKL Street', N'LP010')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV063', N'Tran Thi DD', N'789 UIO Street', N'LP010')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [DCSV], [MALP]) VALUES (N'SV065', N'Lê Tiến Đạt', N'12 ', N'LP007')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LOP__603F41549F6890C8]    Script Date: 03/20/2024 10:34:55 ******/
ALTER TABLE [dbo].[LOP] ADD UNIQUE NONCLUSTERED 
(
	[MALP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MONHOC__603F69EA8ACF37B3]    Script Date: 03/20/2024 10:34:55 ******/
ALTER TABLE [dbo].[MONHOC] ADD UNIQUE NONCLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SINHVIEN__60228A296D296E54]    Script Date: 03/20/2024 10:34:55 ******/
ALTER TABLE [dbo].[SINHVIEN] ADD UNIQUE NONCLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
GO
ALTER TABLE [dbo].[DIEMSV]  WITH CHECK ADD FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[DIEMSV]  WITH CHECK ADD FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD FOREIGN KEY([MALP])
REFERENCES [dbo].[LOP] ([MALP])
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO
