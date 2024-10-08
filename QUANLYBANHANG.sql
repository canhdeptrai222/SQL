USE [master]
GO
/****** Object:  Database [QUANLYBANHANG]    Script Date: 28/06/2024 10:48:28 AM ******/
CREATE DATABASE [QUANLYBANHANG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYBANHANG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANLYBANHANG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYBANHANG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANLYBANHANG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLYBANHANG] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYBANHANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYBANHANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYBANHANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYBANHANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANLYBANHANG] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYBANHANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYBANHANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYBANHANG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYBANHANG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYBANHANG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLYBANHANG', N'ON'
GO
ALTER DATABASE [QUANLYBANHANG] SET QUERY_STORE = OFF
GO
USE [QUANLYBANHANG]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 28/06/2024 10:48:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MAHD] [varchar](10) NOT NULL,
	[MAVT] [varchar](10) NOT NULL,
	[SL] [int] NULL,
	[KHUYENMAI] [float] NULL,
	[GIABAN] [float] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 28/06/2024 10:48:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [varchar](10) NOT NULL,
	[NGAY] [date] NOT NULL,
	[MAKH] [varchar](10) NOT NULL,
	[TONGTG] [float] NULL,
 CONSTRAINT [PK_HOADON_1] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 28/06/2024 10:48:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [varchar](10) NOT NULL,
	[TENKH] [nvarchar](30) NOT NULL,
	[DIACHI] [nvarchar](50) NULL,
	[DT] [varchar](11) NULL,
	[EMAIL] [varchar](30) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VATTU]    Script Date: 28/06/2024 10:48:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATTU](
	[MAVT] [varchar](10) NOT NULL,
	[TENVT] [nvarchar](30) NULL,
	[DVT] [nvarchar](20) NULL,
	[GIAMUA] [money] NULL,
	[SLTON] [int] NULL,
 CONSTRAINT [PK_VATTU] PRIMARY KEY CLUSTERED 
(
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD001 ', N'VT01 ', 5, NULL, 52000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD001 ', N'VT05 ', 10, NULL, 30000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD002 ', N'VT03 ', 10000, NULL, 150)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD003 ', N'VT02 ', 20, NULL, 55000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD004 ', N'VT03 ', 50000, NULL, 150)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD004 ', N'VT04 ', 20000, NULL, 120)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD005 ', N'VT05 ', 10, NULL, 30000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD005 ', N'VT06 ', 15, NULL, 35000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD005 ', N'VT07 ', 20, NULL, 17000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD006 ', N'VT04 ', 10000, NULL, 120)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD007 ', N'VT04 ', 20000, NULL, 125)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD008 ', N'VT01 ', 100, NULL, 55000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD008 ', N'VT02 ', 20, NULL, 47000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD009 ', N'VT02 ', 25, NULL, 48000)
INSERT [dbo].[CTHD] ([MAHD], [MAVT], [SL], [KHUYENMAI], [GIABAN]) VALUES (N'HD010 ', N'VT01 ', 25, NULL, 57000)
GO
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD001 ', CAST(N'2010-05-12' AS Date), N'KH01 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD002 ', CAST(N'2010-05-25' AS Date), N'KH02 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD003 ', CAST(N'2010-05-25' AS Date), N'KH01 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD004 ', CAST(N'2010-05-25' AS Date), N'KH04 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD005 ', CAST(N'2010-05-26' AS Date), N'KH04 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD006 ', CAST(N'2010-06-02' AS Date), N'KH03 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD007 ', CAST(N'2010-06-22' AS Date), N'KH04 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD008 ', CAST(N'2010-06-25' AS Date), N'KH03 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD009 ', CAST(N'2010-08-15' AS Date), N'KH04 ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [NGAY], [MAKH], [TONGTG]) VALUES (N'HD010 ', CAST(N'2010-09-30' AS Date), N'KH01 ', NULL)
GO
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DT], [EMAIL]) VALUES (N'KH01 ', N'Nguyễn Thị Bé ', N'Tân Bình ', N'0913457895', N'bnt@yahoo.com')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DT], [EMAIL]) VALUES (N'KH02 ', N'Lê Hoàng Nam ', N'Bình Chánh ', N'0939878987', N'namlehoang@gmail.co
m')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DT], [EMAIL]) VALUES (N'KH03 ', N'Trần Thị Chiêu ', N'Tân Bình ', N'0738457895', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DT], [EMAIL]) VALUES (N'KH04 ', N'Mai Thị Quế Anh ', N'Bình Chánh ', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DT], [EMAIL]) VALUES (N'KH05 ', N'Lê Văn Sáng ', N'Quận 10 ', NULL, N'sanglv@hcm.vnn.vn')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DT], [EMAIL]) VALUES (N'KH06 ', N'Trần Hoàng ', N'Tân Bình ', N'0903457897', NULL)
GO
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [GIAMUA], [SLTON]) VALUES (N'VT01 ', N'Xi măng ', N'Bao ', 50000.0000, 5000)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [GIAMUA], [SLTON]) VALUES (N'VT02 ', N'Cát ', N'Khối ', 45000.0000, 50000)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [GIAMUA], [SLTON]) VALUES (N'VT03 ', N'Gạch ống ', N'Viên ', 120.0000, 800000)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [GIAMUA], [SLTON]) VALUES (N'VT04 ', N'Gạch thẻ ', N'Viên ', 110.0000, 800000)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [GIAMUA], [SLTON]) VALUES (N'VT05 ', N'Đá lớn ', N'Khối ', 25000.0000, 1000)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [GIAMUA], [SLTON]) VALUES (N'VT06 ', N'Đá nhỏ ', N'Khối ', 33000.0000, 5000)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [GIAMUA], [SLTON]) VALUES (N'VT07 ', N'Lam gió ', N'Cái ', 15000.0000, 10000)
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HOADON]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_VATTU] FOREIGN KEY([MAVT])
REFERENCES [dbo].[VATTU] ([MAVT])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_VATTU]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
USE [master]
GO
ALTER DATABASE [QUANLYBANHANG] SET  READ_WRITE 
GO
