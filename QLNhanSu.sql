USE [master]
GO
/****** Object:  Database [QLNhanSu]    Script Date: 28/06/2024 11:27:21 AM ******/
CREATE DATABASE [QLNhanSu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNhanSu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLNhanSu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNhanSu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLNhanSu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLNhanSu] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNhanSu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNhanSu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNhanSu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNhanSu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNhanSu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNhanSu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNhanSu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNhanSu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNhanSu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNhanSu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNhanSu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNhanSu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNhanSu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNhanSu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNhanSu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNhanSu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNhanSu] SET RECOVERY FULL 
GO
ALTER DATABASE [QLNhanSu] SET  MULTI_USER 
GO
ALTER DATABASE [QLNhanSu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNhanSu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNhanSu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNhanSu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNhanSu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNhanSu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLNhanSu', N'ON'
GO
ALTER DATABASE [QLNhanSu] SET QUERY_STORE = OFF
GO
USE [QLNhanSu]
GO
/****** Object:  Table [dbo].[DuAn]    Script Date: 28/06/2024 11:27:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuAn](
	[MaDA] [int] NOT NULL,
	[TenDA] [nvarchar](50) NOT NULL,
	[NgayDuKienBD] [datetime] NULL,
	[NgayBD] [datetime] NOT NULL,
	[NgayDuKienKT] [datetime] NULL,
	[NgayKT] [datetime] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DuAn_1] PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 28/06/2024 11:27:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](30) NULL,
	[Certificate] [nvarchar](50) NULL,
	[NamSinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 28/06/2024 11:27:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaDA] [int] NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[NgayBD] [datetime] NOT NULL,
	[NgayKT] [datetime] NULL,
 CONSTRAINT [PK_PhanCong_1] PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC,
	[MaNV] ASC,
	[NgayBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DuAn] ([MaDA], [TenDA], [NgayDuKienBD], [NgayBD], [NgayDuKienKT], [NgayKT], [GhiChu]) VALUES (1, N'1', CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-01-01T12:00:00.000' AS DateTime), CAST(N'2024-02-02T00:00:00.000' AS DateTime), CAST(N'2024-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[DuAn] ([MaDA], [TenDA], [NgayDuKienBD], [NgayBD], [NgayDuKienKT], [NgayKT], [GhiChu]) VALUES (2, N'2', CAST(N'2024-02-02T00:00:00.000' AS DateTime), CAST(N'2024-02-02T00:00:00.000' AS DateTime), CAST(N'2024-03-03T00:00:00.000' AS DateTime), CAST(N'2024-03-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[DuAn] ([MaDA], [TenDA], [NgayDuKienBD], [NgayBD], [NgayDuKienKT], [NgayKT], [GhiChu]) VALUES (3, N'3', CAST(N'2024-03-03T00:00:00.000' AS DateTime), CAST(N'2024-03-03T00:00:00.000' AS DateTime), CAST(N'2024-04-04T00:00:00.000' AS DateTime), CAST(N'2024-04-04T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Certificate], [NamSinh], [DiaChi], [ChucVu]) VALUES (N'1         ', N'canh', N'no', CAST(N'2005-01-01' AS Date), N'no', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Certificate], [NamSinh], [DiaChi], [ChucVu]) VALUES (N'2         ', N'ronaldo', N'no', CAST(N'1996-01-01' AS Date), N'no', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Certificate], [NamSinh], [DiaChi], [ChucVu]) VALUES (N'3         ', N'messi', N'no', CAST(N'1998-02-01' AS Date), N'no', NULL)
GO
INSERT [dbo].[PhanCong] ([MaDA], [MaNV], [NgayBD], [NgayKT]) VALUES (1, N'1         ', CAST(N'2024-02-02T00:00:00.000' AS DateTime), CAST(N'2024-04-04T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_DuAn1] FOREIGN KEY([MaDA])
REFERENCES [dbo].[DuAn] ([MaDA])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_DuAn1]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NHANVIEN]
GO
USE [master]
GO
ALTER DATABASE [QLNhanSu] SET  READ_WRITE 
GO
