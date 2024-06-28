USE [master]
GO
/****** Object:  Database [QLThueSan]    Script Date: 28/06/2024 9:35:31 AM ******/
CREATE DATABASE [QLThueSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLThueSan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLThueSan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLThueSan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLThueSan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLThueSan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLThueSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLThueSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLThueSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLThueSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLThueSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLThueSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLThueSan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLThueSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLThueSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLThueSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLThueSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLThueSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLThueSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLThueSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLThueSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLThueSan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLThueSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLThueSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLThueSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLThueSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLThueSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLThueSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLThueSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLThueSan] SET RECOVERY FULL 
GO
ALTER DATABASE [QLThueSan] SET  MULTI_USER 
GO
ALTER DATABASE [QLThueSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLThueSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLThueSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLThueSan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLThueSan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLThueSan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLThueSan', N'ON'
GO
ALTER DATABASE [QLThueSan] SET QUERY_STORE = OFF
GO
USE [QLThueSan]
GO
/****** Object:  Table [dbo].[KHÁCH HÀNG]    Script Date: 28/06/2024 9:35:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHÁCH HÀNG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[diaChi] [nvarchar](100) NULL,
	[SĐT] [nvarchar](12) NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_KHÁCH HÀNG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SÂN]    Script Date: 28/06/2024 9:35:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SÂN](
	[MaSan] [char](10) NOT NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[giaThue] [decimal](8, 2) NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_SÂN] PRIMARY KEY CLUSTERED 
(
	[MaSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUÊ SÂN]    Script Date: 28/06/2024 9:35:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUÊ SÂN](
	[MaKH] [int] NOT NULL,
	[MaSan] [char](10) NOT NULL,
	[NgayThue] [datetime] NOT NULL,
	[NgayTra] [datetime] NULL,
	[soTienThu] [decimal](8, 2) NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_THUÊ SÂN] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaSan] ASC,
	[NgayThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KHÁCH HÀNG] ON 

INSERT [dbo].[KHÁCH HÀNG] ([MaKH], [TenKH], [diaChi], [SĐT], [ghiChu]) VALUES (1, N'1', N'1', N'1', N'1')
INSERT [dbo].[KHÁCH HÀNG] ([MaKH], [TenKH], [diaChi], [SĐT], [ghiChu]) VALUES (2, N'2', N'2', N'2', N'2')
INSERT [dbo].[KHÁCH HÀNG] ([MaKH], [TenKH], [diaChi], [SĐT], [ghiChu]) VALUES (3, N'3', N'3', N'3', N'3')
SET IDENTITY_INSERT [dbo].[KHÁCH HÀNG] OFF
GO
INSERT [dbo].[SÂN] ([MaSan], [TinhTrang], [giaThue], [ghiChu]) VALUES (N'1         ', N'1', CAST(1.00 AS Decimal(8, 2)), N'1')
INSERT [dbo].[SÂN] ([MaSan], [TinhTrang], [giaThue], [ghiChu]) VALUES (N'2         ', N'2', CAST(2.00 AS Decimal(8, 2)), N'2')
INSERT [dbo].[SÂN] ([MaSan], [TinhTrang], [giaThue], [ghiChu]) VALUES (N'3         ', N'3', CAST(3.00 AS Decimal(8, 2)), N'3')
GO
INSERT [dbo].[THUÊ SÂN] ([MaKH], [MaSan], [NgayThue], [NgayTra], [soTienThu], [ghiChu]) VALUES (1, N'1         ', CAST(N'2024-01-01T00:00:00.000' AS DateTime), NULL, CAST(1.00 AS Decimal(8, 2)), NULL)
INSERT [dbo].[THUÊ SÂN] ([MaKH], [MaSan], [NgayThue], [NgayTra], [soTienThu], [ghiChu]) VALUES (2, N'2         ', CAST(N'2024-02-02T00:00:00.000' AS DateTime), NULL, CAST(2.00 AS Decimal(8, 2)), NULL)
INSERT [dbo].[THUÊ SÂN] ([MaKH], [MaSan], [NgayThue], [NgayTra], [soTienThu], [ghiChu]) VALUES (3, N'3         ', CAST(N'2024-03-03T00:00:00.000' AS DateTime), NULL, CAST(3.00 AS Decimal(8, 2)), NULL)
GO
ALTER TABLE [dbo].[THUÊ SÂN]  WITH CHECK ADD  CONSTRAINT [FK_THUÊ SÂN_KHÁCH HÀNG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHÁCH HÀNG] ([MaKH])
GO
ALTER TABLE [dbo].[THUÊ SÂN] CHECK CONSTRAINT [FK_THUÊ SÂN_KHÁCH HÀNG]
GO
ALTER TABLE [dbo].[THUÊ SÂN]  WITH CHECK ADD  CONSTRAINT [FK_THUÊ SÂN_SÂN] FOREIGN KEY([MaSan])
REFERENCES [dbo].[SÂN] ([MaSan])
GO
ALTER TABLE [dbo].[THUÊ SÂN] CHECK CONSTRAINT [FK_THUÊ SÂN_SÂN]
GO
USE [master]
GO
ALTER DATABASE [QLThueSan] SET  READ_WRITE 
GO
