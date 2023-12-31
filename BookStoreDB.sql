USE [master]
GO
/****** Object:  Database [BOOK_STORE]    Script Date: 11/4/2023 2:10:07 PM ******/
CREATE DATABASE [BOOK_STORE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BOOK_STORE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BOOK_STORE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BOOK_STORE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BOOK_STORE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BOOK_STORE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BOOK_STORE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BOOK_STORE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BOOK_STORE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BOOK_STORE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BOOK_STORE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BOOK_STORE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BOOK_STORE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BOOK_STORE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BOOK_STORE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BOOK_STORE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BOOK_STORE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BOOK_STORE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BOOK_STORE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BOOK_STORE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BOOK_STORE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BOOK_STORE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BOOK_STORE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BOOK_STORE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BOOK_STORE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BOOK_STORE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BOOK_STORE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BOOK_STORE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BOOK_STORE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BOOK_STORE] SET RECOVERY FULL 
GO
ALTER DATABASE [BOOK_STORE] SET  MULTI_USER 
GO
ALTER DATABASE [BOOK_STORE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BOOK_STORE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BOOK_STORE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BOOK_STORE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BOOK_STORE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BOOK_STORE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BOOK_STORE', N'ON'
GO
ALTER DATABASE [BOOK_STORE] SET QUERY_STORE = OFF
GO
USE [BOOK_STORE]
GO
/****** Object:  Default [default_Status]    Script Date: 11/4/2023 2:10:07 PM ******/
CREATE DEFAULT [dbo].[default_Status] 
AS
0
GO
/****** Object:  Default [default_Status1]    Script Date: 11/4/2023 2:10:07 PM ******/
CREATE DEFAULT [dbo].[default_Status1] 
AS
1
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[IDChiTietGioHang] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[IDSach] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaBanSp] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDChiTietGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[IDSach] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NOT NULL,
	[Gia] [money] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Img1] [nvarchar](max) NOT NULL,
	[Img2] [nvarchar](max) NULL,
	[Img3] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[IDTacGia] [int] NOT NULL,
	[IDTheLoai] [int] NOT NULL,
	[IDNXB] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[IDTacGia] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
	[NoiBat] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[GioHangView]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[GioHangView] 
as
select c.UserID, s.Img1, s.Gia, c.GiaBanSp, c.SoLuong,t.TenTG  from ChiTietGioHang c
inner join Sach s on s.IDSach = c.IDSach
inner join TacGia t on t.IDTacGia = s.IDTacGia 
GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[IDCauHoi] [int] NOT NULL,
	[stt] [int] NOT NULL,
	[cauhoi] [nvarchar](4000) NULL,
 CONSTRAINT [PK__CauHoi__3214EC072D1EC0A7] PRIMARY KEY CLUSTERED 
(
	[IDCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauTraLoi]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauTraLoi](
	[IDCauTraLoi] [int] NOT NULL,
	[IDCauHoi] [int] NOT NULL,
	[CauTraLoi] [nvarchar](4000) NULL,
	[stt] [int] NULL,
 CONSTRAINT [PK__CauTraLo__D128B440E4B396B3] PRIMARY KEY CLUSTERED 
(
	[IDCauTraLoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[IDChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[IDDonHang] [int] NOT NULL,
	[IDSach] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[IDDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[Noidung] [nvarchar](max) NULL,
	[ThoiGian] [nvarchar](10) NOT NULL,
	[DanhGiaSP] [int] NULL,
	[UserID] [int] NOT NULL,
	[IDSach] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[IDDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[NgayGiao] [date] NULL,
	[UserID] [int] NOT NULL,
	[TongTien] [money] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](12) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[IDNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[IDTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](5) NULL,
 CONSTRAINT [PK__TheLoai__B353B8746F86CD9A] PRIMARY KEY CLUSTERED 
(
	[IDTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_CauTraLoi]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_CauTraLoi](
	[UCId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CauTraLoiId] [int] NOT NULL,
	[SttAns] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/4/2023 2:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Avatar] [nvarchar](500) NULL,
	[RoleID] [int] NOT NULL,
	[DeXuat] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CauHoi] ([IDCauHoi], [stt], [cauhoi]) VALUES (1, 1, N'Độ tuổi của bạn là bao nhiêu?')
INSERT [dbo].[CauHoi] ([IDCauHoi], [stt], [cauhoi]) VALUES (2, 2, N'Lĩnh vực bạn đang làm việc ?')
INSERT [dbo].[CauHoi] ([IDCauHoi], [stt], [cauhoi]) VALUES (3, 3, N'Sở thích của bạn là gì ?')
INSERT [dbo].[CauHoi] ([IDCauHoi], [stt], [cauhoi]) VALUES (4, 4, N'Mục đích đọc sách của bạn là gì ?')
INSERT [dbo].[CauHoi] ([IDCauHoi], [stt], [cauhoi]) VALUES (5, 5, N'Bạn đã chi bao nhiêu tiền cho việc mua sách trong năm vừa rồi ?')
INSERT [dbo].[CauHoi] ([IDCauHoi], [stt], [cauhoi]) VALUES (6, 6, N'Đâu là mô tả đúng về thời gian bạn dành cho việc đọc sách mỗi tuần ?')
INSERT [dbo].[CauHoi] ([IDCauHoi], [stt], [cauhoi]) VALUES (7, 7, N'Bạn ấn tượng với tựa sách nào ?')
GO
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (11, 1, N'Dưới 20', 1)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (12, 1, N'21-30', 2)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (13, 1, N'31-40', 3)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (14, 1, N'41-50', 4)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (15, 1, N'51-60', 5)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (16, 1, N'Trên 60', 6)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (21, 2, N'Kinh tế', 1)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (22, 2, N'Công nghệ', 2)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (23, 2, N'Báo chí', 3)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (24, 2, N'Giáo dục', 4)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (25, 2, N'Thể thao', 5)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (26, 2, N'Khác', 6)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (31, 3, N'Thể thao', 1)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (32, 3, N'Nghiên cứu tìm tòi', 2)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (33, 3, N'Nghệ thuật', 3)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (34, 3, N'Phiêu lưu, khám phá', 4)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (35, 3, N'Âm nhạc', 5)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (36, 3, N'Học kỹ năng mới', 6)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (41, 4, N'Giải trí', 1)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (42, 4, N'Kiến thức và học tập', 2)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (43, 4, N'Phát triển bản thân', 3)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (44, 4, N'Giải quyết vấn đề', 4)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (45, 4, N'Tìm hiểu lịch sử và văn hóa', 5)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (46, 4, N'Giết thời gian', 6)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (51, 5, N'Khoảng 500.000', 1)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (52, 5, N'500.000-1.000.000', 2)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (53, 5, N'1.000.000-2.000.000', 3)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (54, 5, N'2.000.000-5.000.000', 4)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (55, 5, N'5.000.000-10.000.000', 5)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (56, 5, N'Trên 10.000.000', 6)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (61, 6, N'1 ngày', 1)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (62, 6, N'2 ngày', 2)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (63, 6, N'3 ngày', 3)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (64, 6, N'4 ngày', 4)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (65, 6, N'5 ngày', 5)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (66, 6, N'6 ngày', 6)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (71, 7, N'To Kill a Mockingbird', 1)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (72, 7, N'DUNE', 2)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (73, 7, N'A Peoples History of the United States', 3)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (74, 7, N'How to Win Friends and Influence People', 4)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (75, 7, N'Never eat alone ', 5)
INSERT [dbo].[CauTraLoi] ([IDCauTraLoi], [IDCauHoi], [CauTraLoi], [stt]) VALUES (76, 7, N'The Art and Science of Technical Analysis', 6)
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (5, 13, 2, 1, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (6, 13, 1, 1, 15.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (7, 13, 4, 1, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (8, 13, 3, 2, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (9, 14, 1, 1, 15.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (10, 14, 2, 1, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (11, 15, 3, 2, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (12, 15, 4, 2, 60.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (16, 17, 2, 1, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (17, 17, 3, 1, 15.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (18, 18, 2, 1, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (19, 19, 3, 1, 15.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (20, 20, 4, 1, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (21, 21, 2, 1, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (22, 22, 3, 2, 30.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (23, 22, 4, 2, 60.0000)
INSERT [dbo].[ChiTietDonHang] ([IDChiTiet], [IDDonHang], [IDSach], [SoLuong], [GiaBan]) VALUES (24, 23, 4, 1, 30.0000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] ON 

INSERT [dbo].[ChiTietGioHang] ([IDChiTietGioHang], [UserID], [IDSach], [SoLuong], [GiaBanSp]) VALUES (37, 2, 1, 1, 15.0000)
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (1, N'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam.', N'2023-10-21', 0, 2, 2)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (2, N'xin chao', N'2023-10-21', 0, 2, 2)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (3, N'Sản Phẩm Tốt', N'2023-10-21', 0, 2, 2)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (4, N'Sản phẩm tốt', N'2023-10-21', 0, 2, 1)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (5, NULL, N'11/1/2023', 7, 38, 693)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (6, NULL, N'11/1/2023', 10, 9, 703)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (7, NULL, N'11/1/2023', 7, 40, 645)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (8, NULL, N'11/1/2023', 7, 7, 714)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (9, NULL, N'11/1/2023', 2, 13, 671)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (11, NULL, N'11/1/2023', 8, 8, 649)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (12, NULL, N'11/1/2023', 4, 32, 645)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (13, NULL, N'11/1/2023', 2, 9, 672)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (14, NULL, N'11/1/2023', 10, 30, 639)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (15, NULL, N'11/1/2023', 8, 31, 671)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (16, NULL, N'11/1/2023', 1, 33, 679)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (18, NULL, N'11/1/2023', 4, 30, 647)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (19, NULL, N'11/1/2023', 2, 36, 667)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (20, NULL, N'11/1/2023', 9, 37, 702)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (21, NULL, N'11/1/2023', 10, 15, 698)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (22, NULL, N'11/1/2023', 9, 28, 699)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (24, NULL, N'11/1/2023', 2, 8, 634)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (25, NULL, N'11/1/2023', 8, 29, 705)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (28, NULL, N'11/1/2023', 4, 13, 631)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (29, NULL, N'11/1/2023', 1, 29, 644)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (31, NULL, N'11/1/2023', 10, 23, 648)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (33, NULL, N'11/1/2023', 8, 28, 668)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (34, NULL, N'11/1/2023', 8, 21, 713)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (35, NULL, N'11/1/2023', 8, 32, 671)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (37, NULL, N'11/1/2023', 6, 13, 666)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (39, NULL, N'11/1/2023', 8, 7, 637)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (40, NULL, N'11/1/2023', 1, 15, 686)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (41, NULL, N'11/1/2023', 9, 14, 695)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (42, NULL, N'11/1/2023', 2, 36, 694)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (43, NULL, N'11/1/2023', 1, 40, 701)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (44, NULL, N'11/1/2023', 9, 37, 701)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (45, NULL, N'11/1/2023', 10, 11, 691)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (46, NULL, N'11/1/2023', 4, 11, 645)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (48, NULL, N'11/1/2023', 7, 41, 655)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (50, NULL, N'11/1/2023', 4, 37, 698)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (51, NULL, N'11/1/2023', 6, 14, 656)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (52, NULL, N'11/1/2023', 1, 7, 678)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (53, NULL, N'11/1/2023', 3, 36, 648)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (54, NULL, N'11/1/2023', 8, 39, 631)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (55, NULL, N'11/1/2023', 3, 12, 715)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (56, NULL, N'11/1/2023', 2, 41, 643)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (57, NULL, N'11/1/2023', 7, 37, 690)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (59, NULL, N'11/1/2023', 8, 7, 701)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (60, NULL, N'11/1/2023', 4, 29, 681)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (61, NULL, N'11/1/2023', 1, 38, 701)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (62, NULL, N'11/1/2023', 2, 21, 668)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (63, NULL, N'11/1/2023', 0, 36, 649)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (65, NULL, N'11/1/2023', 1, 15, 664)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (66, NULL, N'11/1/2023', 8, 21, 641)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (67, NULL, N'11/1/2023', 8, 32, 685)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (68, NULL, N'11/1/2023', 0, 22, 663)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (69, NULL, N'11/1/2023', 9, 25, 618)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (70, NULL, N'11/1/2023', 4, 34, 686)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (71, NULL, N'11/1/2023', 1, 39, 653)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (72, NULL, N'11/1/2023', 2, 19, 698)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (73, NULL, N'11/1/2023', 8, 30, 716)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (74, NULL, N'11/1/2023', 6, 40, 662)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (75, NULL, N'11/1/2023', 5, 31, 717)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (76, NULL, N'11/1/2023', 6, 8, 716)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (80, NULL, N'11/1/2023', 5, 9, 631)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (81, NULL, N'11/1/2023', 7, 13, 675)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (82, NULL, N'11/1/2023', 1, 15, 712)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (83, NULL, N'11/1/2023', 0, 7, 671)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (84, NULL, N'11/1/2023', 4, 37, 634)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (86, NULL, N'11/1/2023', 4, 14, 679)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (87, NULL, N'11/1/2023', 1, 25, 694)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (88, NULL, N'11/1/2023', 4, 29, 693)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (90, NULL, N'11/1/2023', 5, 31, 694)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (91, NULL, N'11/1/2023', 5, 30, 637)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (92, NULL, N'11/1/2023', 0, 19, 685)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (93, NULL, N'11/1/2023', 1, 6, 712)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (94, NULL, N'11/1/2023', 0, 17, 699)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (95, NULL, N'11/1/2023', 4, 17, 632)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (96, NULL, N'11/1/2023', 8, 7, 634)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (97, NULL, N'11/1/2023', 4, 39, 639)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (98, NULL, N'11/1/2023', 3, 26, 692)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (99, NULL, N'11/1/2023', 2, 11, 632)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (100, NULL, N'11/1/2023', 2, 31, 699)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (101, NULL, N'11/1/2023', 8, 41, 702)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (102, NULL, N'11/1/2023', 6, 18, 632)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (103, NULL, N'11/1/2023', 6, 12, 668)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (104, NULL, N'11/1/2023', 9, 13, 632)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (105, NULL, N'11/1/2023', 5, 38, 678)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (106, NULL, N'11/1/2023', 8, 36, 637)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (107, NULL, N'11/1/2023', 5, 32, 698)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (108, NULL, N'11/1/2023', 4, 11, 715)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (109, NULL, N'11/1/2023', 2, 18, 677)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (110, NULL, N'11/1/2023', 6, 6, 633)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (112, NULL, N'11/1/2023', 0, 11, 640)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (113, NULL, N'11/1/2023', 3, 14, 674)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (114, NULL, N'11/1/2023', 2, 17, 688)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (115, NULL, N'11/1/2023', 1, 41, 687)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (116, NULL, N'11/1/2023', 6, 25, 653)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (117, NULL, N'11/1/2023', 9, 35, 661)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (119, NULL, N'11/1/2023', 1, 37, 717)
GO
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (120, NULL, N'11/1/2023', 7, 16, 657)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (121, NULL, N'11/1/2023', 3, 38, 714)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (122, NULL, N'11/1/2023', 5, 9, 691)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (124, NULL, N'11/1/2023', 1, 18, 700)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (125, NULL, N'11/1/2023', 8, 23, 676)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (126, NULL, N'11/1/2023', 2, 7, 700)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (127, NULL, N'11/1/2023', 9, 8, 657)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (128, NULL, N'11/1/2023', 4, 32, 632)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (130, NULL, N'11/1/2023', 0, 14, 659)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (131, NULL, N'11/1/2023', 1, 12, 658)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (132, NULL, N'11/1/2023', 9, 6, 711)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (133, NULL, N'11/1/2023', 10, 19, 706)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (136, NULL, N'11/1/2023', 2, 38, 646)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (137, NULL, N'11/1/2023', 10, 34, 714)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (138, NULL, N'11/1/2023', 6, 23, 647)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (139, NULL, N'11/1/2023', 3, 39, 684)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (140, NULL, N'11/1/2023', 5, 34, 642)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (141, NULL, N'11/1/2023', 8, 37, 651)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (142, NULL, N'11/1/2023', 5, 19, 704)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (143, NULL, N'11/1/2023', 1, 18, 714)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (144, NULL, N'11/1/2023', 10, 20, 658)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (145, NULL, N'11/1/2023', 0, 24, 696)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (146, NULL, N'11/1/2023', 8, 26, 617)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (147, NULL, N'11/1/2023', 10, 12, 661)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (149, NULL, N'11/1/2023', 1, 38, 706)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (150, NULL, N'11/1/2023', 10, 28, 646)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (151, NULL, N'11/1/2023', 0, 10, 669)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (152, NULL, N'11/1/2023', 10, 10, 666)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (153, NULL, N'11/1/2023', 8, 21, 684)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (154, NULL, N'11/1/2023', 6, 31, 687)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (155, NULL, N'11/1/2023', 1, 13, 640)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (157, NULL, N'11/1/2023', 6, 23, 631)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (158, NULL, N'11/1/2023', 6, 8, 682)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (159, NULL, N'11/1/2023', 5, 29, 678)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (160, NULL, N'11/1/2023', 4, 34, 647)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (161, NULL, N'11/1/2023', 10, 41, 645)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (162, NULL, N'11/1/2023', 10, 23, 692)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (163, NULL, N'11/1/2023', 4, 37, 696)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (164, NULL, N'11/1/2023', 0, 12, 690)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (165, NULL, N'11/1/2023', 7, 28, 652)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (166, NULL, N'11/1/2023', 10, 6, 644)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (167, NULL, N'11/1/2023', 1, 36, 686)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (168, NULL, N'11/1/2023', 9, 34, 634)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (169, NULL, N'11/1/2023', 5, 6, 650)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (170, NULL, N'11/1/2023', 10, 22, 654)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (171, NULL, N'11/1/2023', 9, 18, 646)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (172, NULL, N'11/1/2023', 9, 33, 668)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (173, NULL, N'11/1/2023', 9, 37, 674)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (174, NULL, N'11/1/2023', 9, 41, 1)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (175, NULL, N'11/1/2023', 6, 37, 2)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (176, NULL, N'11/1/2023', 8, 17, 3)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (177, NULL, N'11/1/2023', 7, 21, 4)
INSERT [dbo].[DanhGia] ([IDDanhGia], [Noidung], [ThoiGian], [DanhGiaSP], [UserID], [IDSach]) VALUES (178, NULL, N'11/1/2023', 2, 18, 4)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (13, CAST(N'2023-10-23' AS Date), CAST(N'2023-10-31' AS Date), 2, 105.0000, N'dăk song', N'+84337873884', 1)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (14, CAST(N'2023-10-26' AS Date), CAST(N'2023-10-30' AS Date), 2, 45.0000, N'dăk song', N'+84337873884', 3)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (15, CAST(N'2023-10-26' AS Date), CAST(N'2023-10-31' AS Date), 2, 90.0000, N'dăk song', N'+84337873884', 3)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (17, CAST(N'2023-10-27' AS Date), CAST(N'2023-10-31' AS Date), 2, 45.0000, N'dăk song', N'+84337873884', 3)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (18, CAST(N'2023-10-30' AS Date), CAST(N'2023-10-29' AS Date), 3, 30.0000, N'dăk song', N'+84337873884', 0)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (19, CAST(N'2023-10-30' AS Date), CAST(N'2023-10-30' AS Date), 3, 15.0000, N'Đăk Nồng', N'215485689', 2)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (20, CAST(N'2023-10-30' AS Date), CAST(N'2023-10-31' AS Date), 3, 30.0000, N'dăk song', N'+84337873884', 3)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (21, CAST(N'2023-10-30' AS Date), CAST(N'2023-10-31' AS Date), 3, 30.0000, N'dăk song', N'+84337873884', 1)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (22, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date), 2, 90.0000, N'dăk song', N'+84337873884', 2)
INSERT [dbo].[DonHang] ([IDDonHang], [NgayDat], [NgayGiao], [UserID], [TongTien], [DiaChi], [SDT], [TrangThai]) VALUES (23, CAST(N'2023-11-01' AS Date), NULL, 3, 30.0000, N'dăk song', N'+84337873884', 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (1, N'NXB Kim Đồng', N'55 Quang Trung, Hai Bà Trưng, Hà Nội', N'1900571595')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (2, N'NXB Trẻ', N'161B Lý Chính Thắng, Phường Võ Thị Sáu, Quận 3 , TP. Hồ Chí Minh', N'02839316289')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (4, N'NXB Tư Pháp', N'Số 35 Trần Quốc Toản, Hoàn Kiếm, Hà Nội', N'02862909088')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (5, N'NXB Lao Động', N'175 Giảng Võ, Đống Đa, Hà Nội', N'02438515380')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (6, N'NXB Dân Trí', N'Số 9, ngõ 26, phố Hoàng Cầu, phường Ô Chợ Dừa, quận Đống Đa, Hà Nội', N'02466860753')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (7, N'NXB Hồng Đức', N'Số 65, phố Tràng Thi, Phường Hàng Bông, Quận Hoàn Kiếm, Hà Nội.', N'0439260024')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (10, N'NXB Tổng Hợp', N'62 Nguyễn Thị Minh Khai, phường Đa Kao, quận 1, TPHCM', N'02838296764')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (14, N'NXB Kim Đồng', N'55 Quang Trung, Hai Bà Trưng, Hà Nội', N'1900571595')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (15, N'NXB Trẻ', N'161B Lý Chính Thắng, Phường Võ Thị Sáu, Quận 3 , TP. Hồ Chí Minh', N'2839316289')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (16, N'NXB Tư Pháp', N'Số 35 Trần Quốc Toản, Hoàn Kiếm, Hà Nội', N'2862909088')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (17, N'NXB Lao Động', N'175 Giảng Võ, Đống Đa, Hà Nội', N'2438515380')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (18, N'NXB Dân Trí', N'Số 9, ngõ 26, phố Hoàng Cầu, phường Ô Chợ Dừa, quận Đống Đa, Hà Nội', N'2466860753')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (19, N'NXB Hồng Đức', N'Số 65, phố Tràng Thi, Phường Hàng Bông, Quận Hoàn Kiếm, Hà Nội.', N'439260024')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (20, N'NXB Tổng Hợp', N'62 Nguyễn Thị Minh Khai, phường Đa Kao, quận 1, TPHCM', N'2838296764')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (21, N'HarperPerennial', N'nyc, new york, usa', N'10000000000')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (22, N'Farrar Straus Giroux', N'stockton, california, usa', N'10000000001')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (23, N'W. W. Norton &amp; Company', N'moscow, yukon territory, russia', N'10000000002')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (24, N'Putnam Pub Group', N'porto, v.n.gaia, portugal', N'10000000003')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (25, N'Berkley Publishing Group', N'farnborough, hants, united kingdom', N'10000000004')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (26, N'Audioworks', N'santa monica, california, usa', N'10000000005')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (27, N'Random House', N'washington, dc, usa', N'10000000006')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (28, N'Scribner', N'timmins, ontario, canada', N'10000000007')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (29, N'Emblem Editions', N'germantown, tennessee, usa', N'10000000008')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (30, N'Citadel Press', N'albacete, wisconsin, spain', N'10000000009')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (31, N'House of Anansi Press', N'melbourne, victoria, australia', N'10000000010')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (32, N'Mira Books', N'fort bragg, california, usa', N'10000000011')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (33, N'Health Communications', N'barcelona, barcelona, spain', N'10000000012')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (34, N'Brilliance Audio - Trade', N'mediapolis, iowa, usa', N'10000000013')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (35, N'Kensington Publishing Corp.', N'calgary, alberta, canada', N'10000000014')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (36, N'River City Pub', N'albuquerque, new mexico, usa', N'10000000015')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (37, N'Dell', N'chesapeake, virginia, usa', N'10000000016')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (38, N'Plume', N'rio de janeiro, rio de janeiro, brazil', N'10000000017')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (39, N'Three Rivers Press', N'weston, ,', N'10000000018')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (40, N'Ryland Peters &amp; Small Ltd', N'langhorne, pennsylvania, usa', N'10000000019')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (41, N'Cypress House', N'ferrol / spain, alabama, spain', N'10000000020')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (42, N'HarperEntertainment', N'erfurt, thueringen, germany', N'10000000021')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (43, N'Scholastic', N'philadelphia, pennsylvania, usa', N'10000000022')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (44, N'Aladdin', N'cologne, nrw, germany', N'10000000023')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (45, N'Too Far', N'oakland, california, usa', N'10000000024')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (46, N'Ballantine Books', N'bellevue, washington, usa', N'10000000025')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (47, N'Random House Trade Paperbacks', N'chicago, illinois, usa', N'10000000026')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (48, N'Laaabbe', N'freiburg, baden-wuerttemberg, germany', N'10000000027')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (49, N'Goldmann', N'cuernavaca, alabama, mexico', N'10000000028')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (50, N'Alfred A. Knopf', N'anchorage, alaska, usa', N'10000000029')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (51, N'Little Brown &amp; Company', N'shanghai, n/a, china', N'10000000030')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (52, N'Harpercollins', N'portland, oregon, usa', N'10000000031')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (53, N'Avon', N'costa mesa, california, usa', N'10000000032')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (54, N'Bantam', N'london, england, united kingdom', N'10000000033')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (55, N'Fireside', N'grafton, wisconsin, usa', N'10000000034')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (56, N'HarperTorch', N'montreal, quebec, canada', N'10000000035')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (57, N'Bantam Books', N'san sebastian, n/a, spain', N'10000000036')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (58, N'Pocket', N'viterbo, lazio, italy', N'10000000037')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (59, N'Tor Books', N'cary, north carolina, usa', N'10000000038')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (60, N'Tyndale House Publishers', N'tonawanda, new york, usa', N'10000000039')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (61, N'HarperCollins Publishers', N'santee, california, usa', N'10000000040')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (62, N'Harvest Books', N'appleton, wisconsin, usa', N'10000000041')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (63, N'Chambers Harrap Publishers Ltd', N'méxico, méxico city, distrito federal', N'10000000042')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (64, N'Avon Books', N'black mountain, north carolina, usa', N'10000000043')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (65, N'Speed Graphics', N'berlin, n/a, germany', N'10000000044')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (66, N'Sunflower Press', N'heidelberg, baden-wuerttemberg, germany', N'10000000045')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (67, N'Laurel Leaf', N'vicenza, veneto, italy', N'10000000046')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (68, N'Gallimard', N'chicago, illinois, usa', N'10000000047')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (69, N'Prentice Hall (K-12)', N'rome, rome, italy', N'10000000048')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (70, N'NTC/Contemporary Publishing Company', N'london, england, united kingdom', N'10000000049')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (71, N'St. Martin''s Press', N'renton, washington, usa', N'10000000050')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (72, N'1stBooks Library', N'braunschweig, niedersachsen, germany', N'10000000051')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (73, N'Avon Trade', N'tacoma, washington, usa', N'10000000052')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (74, N'Penguin Books', N'eubank, kentucky, usa', N'10000000053')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (75, N'Signet Book', N'calgary, alberta, canada', N'10000000054')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (76, N'Thomas Nelson', N'cheyenne, wyoming, usa', N'10000000055')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (77, N'Ace Books', N'roma, lazio, italy', N'10000000056')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (78, N'Landoll', N'edmonton, alberta, canada', N'10000000057')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (79, N'Knopf', N'asheville, north carolina, usa', N'10000000058')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (80, N'Andrew Scott Publishers', N'trieste, friuli venezia giulia, italy', N'10000000059')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (81, N'Atlantic Monthly Press', N'winfield, alabama, usa', N'10000000060')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (82, N'Hodder &amp; Stoughton General Division', N'kennewick, washington, usa', N'10000000061')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (83, N'Simon &amp; Schuster (Trade Division)', N'nyack, new york, usa', N'10000000062')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (84, N'Perennial', N'lyon, rhone, france', N'10000000063')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (85, N'McGraw-Hill', N'n/a, n/a, australia', N'10000000064')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (86, N'Bantam Doubleday Dell', N'warman, saskatchewan, canada', N'10000000065')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (87, N'Little, Brown', N'framingham, massachusetts, usa', N'10000000066')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (88, N'Minotauro', N'montreal, quebec, canada', N'10000000067')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (89, N'Distribooks', N'vancouver, british columbia, canada', N'10000000068')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (90, N'Back Bay Books', N'rochester, new york, usa', N'10000000069')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (91, N'Doubleday Books', N'toronto, ontario, canada', N'10000000070')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (92, N'Warner Books', N'gloucester, england, united kingdom', N'10000000071')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (93, N'Vintage', N'wentzville, missouri, usa', N'10000000072')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (94, N'Hyperion', N'amsterdam, n/a, netherlands', N'10000000073')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (95, N'Tusquets', N'long beach, california, usa', N'10000000074')
INSERT [dbo].[NhaXuatBan] ([IDNXB], [TenNXB], [DiaChi], [SDT]) VALUES (96, N'Star Trek', N'charleston, south carolina, usa', N'10000000075')
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (1, N'Vũ Trụ Trong Vỏ Hạt Dẻ', 15.0000, N'Vũ trụ trong vỏ hạt dẻ (The Universe in a Nutshell) 
là một trong những đầu sách do Stephen Hawking viết về chủ đề vật lý lý thuyết. Nó giải thích cho người đọc về
nhiều vấn đề liên quan tới các nghiên cứu của các Giáo sư Toán học Lucas trong quá khứ, tỉ như Thuyết không đầy 
đủ của Gödel và màng P (một phần của thuyết siêu dây trong vật lý lượng tử). Nó cũng mô tả về lịch sử hình thành 
và các nguyên lý của vật lý hiện đại. Ông dẫn dắt người đọc đến những sự kiện xảy ra đằng sau những most intellectual
tales khi ông cố gắng "kết hợp thuyết tương đối rộng của Einstein và các ý tưởng của Richard Feynman về đa lịch sử thành
một thuyết thống nhất hoàn chỉnh mô tả mọi thứ xảy ra trong vũ trụ." Vũ trụ trong vỏ hạt dẻ là tác phẩm đạt Giải Aventis
dành cho Sách Khoa học năm 2002 và đã bán được hơn 10 triệu ấn bản trên thế giới. Nó thường được xem là phần tiếp theo của
tác phẩm nổi tiếng Lược sử thời gian (A Brief History of Time) được ấn hành năm 1988.', N'https://www.netabooks.vn/Data/Sites/1/Product/23855/vu-tru-trong-vo-hat-de-5.jpg', N'https://salt.tikicdn.com/cache/w1200/ts/product/cf/f1/88/12a7dc6e639e2c8fcec6ccf9a3bc69c4.jpg', N'https://www.netabooks.vn/Data/Sites/1/Product/23855/vu-tru-trong-vo-hat-de-2.jpg', 5, 1, 1, 2)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (2, N'Nhà Giả Kim', 30.0000, N'Nhà giả kim (tựa gốc tiếng Bồ Đào Nha: O Alquimista) 
là tiểu thuyết được xuất bản lần đầu ở Brasil năm 1988, và là cuốn sách nổi tiếng nhất của nhà văn Paulo Coelho. 
Tác phẩm đã được dịch ra 67 ngôn ngữ và bán ra tới 95 triệu bản (theo thống kê ngày 19 tháng 5 năm 2008), 
trở thành một trong những cuốn sách bán chạy nhất mọi thời đại.[1]', N'https://nxbhcm.com.vn/Image/Biasach/nhagiakimTB2020.jpg', N'https://cf.shopee.vn/file/8928e5e671e19206cc3050f3ae4d1a7c', N'https://sachxua.vn/wp-content/uploads/2020/01/sach-nha-gia-kim.jpg', 10, 2, 3, 2)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (3, N'Thao Túng Tâm Lý', 15.0000, N'Thao túng tâm lý là một loại ảnh hưởng xã hội nhằm mục đích thay đổi hành vi hoặc nhận thức của người khác thông qua các chiến thuật gián tiếp, lừa đảo hoặc âm thầm.[1] Bằng cách thúc đẩy lợi ích của người thao túng, thường bằng chi phí của người khác, các phương pháp như vậy có thể bị coi là bóc lột và sai lệch.
Ảnh hưởng xã hội không nhất thiết là tiêu cực. Ví dụ, những người như bạn bè, gia đình và bác sĩ, có thể cố gắng thuyết phục để thay đổi rõ ràng những thói quen và hành vi không có ích. Ảnh hưởng xã hội thường được coi là vô hại khi nó tôn trọng quyền của người bị ảnh hưởng chấp nhận hoặc từ chối nó, và không bị ép buộc quá mức. Tùy thuộc vào bối cảnh và động lực, ảnh hưởng xã hội có thể tạo thành thao túng âm thầm.', N'https://product.hstatic.net/1000290493/product/8936066696456_d62072c5fef64f9cb42c9de85ac42ef8.jpg', N'https://bizweb.dktcdn.net/thumb/grande/100/469/746/products/image-1687233166613.png?v=1687849800110', N'https://salt.tikicdn.com/cache/w1200/ts/product/f8/19/be/225aff44a56972bb4f90ce31a44c6ca5.jpg', 4, 3, 4, 6)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (4, N'Đắc Nhân Tâm', 30.0000, N'Đắc nhân tâm của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh 
hưởng nhất của mọi thời đại. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia. Đây 
là quyển sách duy nhất về thể loại self-help liên tục đứng đầu danh mục sách bán chạy nhất (best-selling Books) do báo The New York Times 
bình chọn suốt 10 năm liền.', N'https://salt.tikicdn.com/cache/w1200/ts/product/df/7d/da/d340edda2b0eacb7ddc47537cddb5e08.jpg', N'https://cf.shopee.vn/file/ebbac279e7d5834df97ca2416fe6abd6', N'https://www.netabooks.vn/Data/Sites/1/Product/2626/dac-nhan-tam-kho-lon-3.jpg', 4, 4, 4, 7)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (617, N'Classical Mythology', 15000.0000, NULL, N'https://images-na.ssl-images-amazon.com/images/I/61W71eeOqnL._AC_UL600_SR600,600_.jpg', N'https://images-na.ssl-images-amazon.com/images/I/61W71eeOqnL._AC_UL600_SR600,600_.jpg', N'https://images-na.ssl-images-amazon.com/images/I/61W71eeOqnL._AC_UL600_SR600,600_.jpg', 100, 1, 5, 1)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (618, N'Clara Callan', 30000.0000, NULL, N'https://m.media-amazon.com/images/I/51r-m5gK-+L._AC_UF1000,1000_QL80_.jpg', N'https://m.media-amazon.com/images/I/51r-m5gK-+L._AC_UF1000,1000_QL80_.jpg', N'https://m.media-amazon.com/images/I/51r-m5gK-+L._AC_UF1000,1000_QL80_.jpg', 100, 2, 1, 2)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (619, N'Decision in Normandy', 15000.0000, NULL, N'https://images-eu.ssl-images-amazon.com/images/I/91payQgc-EL._AC_UL600_SR600,600_.jpg', N'https://images-eu.ssl-images-amazon.com/images/I/91payQgc-EL._AC_UL600_SR600,600_.jpg', N'https://images-eu.ssl-images-amazon.com/images/I/91payQgc-EL._AC_UL600_SR600,600_.jpg', 100, 3, 6, 4)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (631, N'The Testament', 30000.0000, NULL, N'https://m.media-amazon.com/images/I/51KyDUocvmL.jpg', N'https://m.media-amazon.com/images/I/51KyDUocvmL.jpg', N'https://m.media-amazon.com/images/I/51KyDUocvmL.jpg', 100, 1, 6, 18)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (632, N'Prague : A Novel', 30000.0000, NULL, N'https://pic.ebid.net/upload_big/6/5/0/uo_1663090880-14419-752.jpg', N'https://pic.ebid.net/upload_big/6/5/0/uo_1663090880-14419-752.jpg', N'https://pic.ebid.net/upload_big/6/5/0/uo_1663090880-14419-752.jpg', 100, 2, 3, 19)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (633, N'More Cunning Than Man: A Social History of Rats and Man', 30000.0000, NULL, N'https://images-na.ssl-images-amazon.com/images/I/21AQJV3HK6L._AC_UL600_SR600,600_.jpg', N'http://images.amazon.com/images/P/1575663937.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1575663937.01.LZZZZZZZ.jpg', 100, 3, 4, 20)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (634, N'Goodbye to the Buttermilk Sky', 30000.0000, NULL, N'http://images.amazon.com/images/P/1881320189.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1881320189.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1881320189.01.LZZZZZZZ.jpg', 100, 4, 2, 21)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (635, N'The Testament', 30000.0000, NULL, N'http://images.amazon.com/images/P/0440234743.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0440234743.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0440234743.01.LZZZZZZZ.jpg', 100, 4, 3, 22)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (636, N'Beloved (Plume Contemporary Fiction)', 30000.0000, NULL, N'https://images-na.ssl-images-amazon.com/images/I/A1xy-S6LdxL._AC_UL600_SR600,600_.jpg', N'https://images-na.ssl-images-amazon.com/images/I/A1xy-S6LdxL._AC_UL600_SR600,600_.jpg', N'https://images-na.ssl-images-amazon.com/images/I/A1xy-S6LdxL._AC_UL600_SR600,600_.jpg', 100, 20, 6, 23)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (637, N'Our Dumb Century: The Onion Presents 100 Years of Headlines from America''s Finest News Source', 30000.0000, NULL, N'http://images.amazon.com/images/P/0609804618.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0609804618.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0609804618.01.LZZZZZZZ.jpg', 100, 21, 4, 24)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (638, N'New Vegetarian: Bold and Beautiful Recipes for Every Occasion', 30000.0000, NULL, N'http://images.amazon.com/images/P/1841721522.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1841721522.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1841721522.01.LZZZZZZZ.jpg', 100, 22, 1, 25)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (639, N'If I''d Known Then What I Know Now: Why Not Learn from the Mistakes of Others? : You Can''t Afford to Make Them All Yourself', 30000.0000, NULL, N'http://images.amazon.com/images/P/1879384493.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1879384493.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1879384493.01.LZZZZZZZ.jpg', 100, 23, 5, 26)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (640, N'Mary-Kate &amp; Ashley Switching Goals (Mary-Kate and Ashley Starring in)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0061076031.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0061076031.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0061076031.01.LZZZZZZZ.jpg', 100, 24, 1, 27)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (641, N'Tell Me This Isn''t Happening', 30000.0000, NULL, N'http://images.amazon.com/images/P/0439095026.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0439095026.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0439095026.01.LZZZZZZZ.jpg', 100, 25, 4, 28)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (642, N'Flood : Mississippi 1927', 30000.0000, NULL, N'http://images.amazon.com/images/P/0689821166.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0689821166.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0689821166.01.LZZZZZZZ.jpg', 100, 26, 3, 29)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (643, N'Wild Animus', 30000.0000, NULL, N'https://shop11861.sfstatic.io/upload_dir/shop/_thumbs/34711_38090.w610.h610.backdrop.jpg', N'https://shop11861.sfstatic.io/upload_dir/shop/_thumbs/34711_38090.w610.h610.backdrop.jpg', N'https://shop11861.sfstatic.io/upload_dir/shop/_thumbs/34711_38090.w610.h610.backdrop.jpg', 100, 27, 6, 30)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (644, N'Airframe', 30000.0000, NULL, N'http://images.amazon.com/images/P/0345402871.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0345402871.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0345402871.01.LZZZZZZZ.jpg', 100, 28, 5, 31)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (645, N'Timeline', 30000.0000, NULL, N'https://bookshopapocalypse.com/cdn/shop/products/timeline-1sqsig_300x300.jpg?v=1673561742', N'https://bookshopapocalypse.com/cdn/shop/products/timeline-1sqsig_300x300.jpg?v=1673561742', N'https://bookshopapocalypse.com/cdn/shop/products/timeline-1sqsig_300x300.jpg?v=1673561742', 100, 29, 6, 32)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (646, N'OUT OF THE SILENT PLANET', 30000.0000, NULL, N'http://images.amazon.com/images/P/0684823802.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0684823802.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0684823802.01.LZZZZZZZ.jpg', 100, 30, 2, 33)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (647, N'Prague : A Novel', 30000.0000, NULL, N'http://images.amazon.com/images/P/0375759778.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0375759778.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0375759778.01.LZZZZZZZ.jpg', 100, 31, 2, 34)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (648, N'Chocolate Jesus', 30000.0000, NULL, N'http://images.amazon.com/images/P/0425163091.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0425163091.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0425163091.01.LZZZZZZZ.jpg', 100, 32, 5, 35)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (649, N'Wie Barney es sieht.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3404921038.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3404921038.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3404921038.01.LZZZZZZZ.jpg', 100, 33, 4, 36)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (650, N'Der Fluch der Kaiserin. Ein Richter- Di- Roman.', 30000.0000, NULL, N'https://www.krimi-forum.net/Datenbank/Bilder/cooney_fluch_152_250.jpg', N'http://images.amazon.com/images/P/3442353866.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3442353866.01.LZZZZZZZ.jpg', 100, 34, 5, 37)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (651, N'Sturmzeit. Roman.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3442410665.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3442410665.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3442410665.01.LZZZZZZZ.jpg', 100, 35, 1, 38)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (652, N'Tage der Unschuld.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3442446937.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3442446937.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3442446937.01.LZZZZZZZ.jpg', 100, 36, 4, 39)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (653, N'Lying Awake', 30000.0000, NULL, N'http://images.amazon.com/images/P/0375406328.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0375406328.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0375406328.01.LZZZZZZZ.jpg', 100, 37, 4, 40)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (654, N'To Kill a Mockingbird', 30000.0000, NULL, N'https://i0.wp.com/www.scribblewhatever.com/wp-content/uploads/2020/10/To-kill-a-mockingbird-2.jpg?fit=700%2C700ssl=1', N'https://i0.wp.com/www.scribblewhatever.com/wp-content/uploads/2020/10/To-kill-a-mockingbird-2.jpg?fit=700%2C700ssl=1', N'https://i0.wp.com/www.scribblewhatever.com/wp-content/uploads/2020/10/To-kill-a-mockingbird-2.jpg?fit=700%2C700ssl=1', 100, 38, 6, 41)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (655, N'Seabiscuit: An American Legend', 30000.0000, NULL, N'http://images.amazon.com/images/P/0449005615.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0449005615.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0449005615.01.LZZZZZZZ.jpg', 100, 39, 5, 42)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (656, N'Pigs in Heaven', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060168013.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060168013.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060168013.01.LZZZZZZZ.jpg', 100, 40, 4, 43)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (657, N'Miss Zukas and the Raven''s Dance', 30000.0000, NULL, N'https://images-na.ssl-images-amazon.com/images/I/61BFKCNgMIL._AC_UL600_SR600,600_.jpg', N'https://images-na.ssl-images-amazon.com/images/I/61BFKCNgMIL._AC_UL600_SR600,600_.jpg', N'https://images-na.ssl-images-amazon.com/images/I/61BFKCNgMIL._AC_UL600_SR600,600_.jpg', 100, 41, 6, 44)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (658, N'Pride and Prejudice', 30000.0000, NULL, N'https://images.booksense.com/images/185/812/9781398812185.jpg', N'https://images.booksense.com/images/185/812/9781398812185.jpg', N'https://images.booksense.com/images/185/812/9781398812185.jpg', 100, 42, 6, 45)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (659, N'The Therapeutic Touch: How to Use Your Hands to Help or to Heal', 30000.0000, NULL, N'http://images.amazon.com/images/P/067176537X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/067176537X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/067176537X.01.LZZZZZZZ.jpg', 100, 43, 5, 46)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (660, N'Downtown', 30000.0000, NULL, N'http://images.amazon.com/images/P/0061099686.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0061099686.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0061099686.01.LZZZZZZZ.jpg', 100, 44, 4, 47)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (661, N'Icebound', 30000.0000, NULL, N'http://images.amazon.com/images/P/0553582909.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0553582909.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0553582909.01.LZZZZZZZ.jpg', 100, 45, 1, 48)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (662, N'I''ll Be Seeing You', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671888587.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671888587.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671888587.01.LZZZZZZZ.jpg', 100, 46, 3, 49)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (663, N'From the Corner of His Eye', 30000.0000, NULL, N'http://images.amazon.com/images/P/0553582747.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0553582747.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0553582747.01.LZZZZZZZ.jpg', 100, 47, 1, 50)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (664, N'Isle of Dogs', 30000.0000, NULL, N'https://i.etsystatic.com/32917608/r/il/7ff814/3707978270/il_300x300.3707978270_7s53.jpg', N'https://i.etsystatic.com/32917608/r/il/7ff814/3707978270/il_300x300.3707978270_7s53.jpg', N'https://i.etsystatic.com/32917608/r/il/7ff814/3707978270/il_300x300.3707978270_7s53.jpg', 100, 48, 6, 51)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (665, N'Purity in Death', 30000.0000, NULL, N'http://images.amazon.com/images/P/042518630X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/042518630X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/042518630X.01.LZZZZZZZ.jpg', 100, 49, 2, 52)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (666, N'This Year It Will Be Different: And Other Stories', 30000.0000, NULL, N'http://images.amazon.com/images/P/0440223571.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0440223571.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0440223571.01.LZZZZZZZ.jpg', 100, 50, 3, 53)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (667, N'Proxies', 30000.0000, NULL, N'http://images.amazon.com/images/P/0812523873.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0812523873.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0812523873.01.LZZZZZZZ.jpg', 100, 51, 3, 54)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (668, N'Left Behind: A Novel of the Earth''s Last Days (Left Behind #1)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0842342702.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0842342702.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0842342702.01.LZZZZZZZ.jpg', 100, 52, 4, 55)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (669, N'The Street Lawyer', 30000.0000, NULL, N'http://images.amazon.com/images/P/0440225701.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0440225701.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0440225701.01.LZZZZZZZ.jpg', 100, 53, 3, 56)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (670, N'Love, Medicine and Miracles', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060914068.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060914068.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060914068.01.LZZZZZZZ.jpg', 100, 54, 4, 57)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (671, N'All the King''s Men', 30000.0000, NULL, N'http://images.amazon.com/images/P/0156047624.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0156047624.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0156047624.01.LZZZZZZZ.jpg', 100, 55, 1, 58)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (672, N'Pacific Northwest', 30000.0000, NULL, N'http://images.amazon.com/images/P/0245542957.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0245542957.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0245542957.01.LZZZZZZZ.jpg', 100, 56, 2, 59)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (673, N'A Soldier of the Great War', 30000.0000, NULL, N'http://images.amazon.com/images/P/0380715899.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0380715899.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0380715899.01.LZZZZZZZ.jpg', 100, 57, 2, 60)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (674, N'Getting Well Again', 30000.0000, NULL, N'http://images.amazon.com/images/P/0553280333.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0553280333.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0553280333.01.LZZZZZZZ.jpg', 100, 58, 4, 61)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (675, N'Northwest Wines and Wineries', 30000.0000, NULL, N'http://images.amazon.com/images/P/0961769947.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0961769947.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0961769947.01.LZZZZZZZ.jpg', 100, 59, 6, 62)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (676, N'An Atmosphere of Eternity: Stories of India', 30000.0000, NULL, N'http://images.amazon.com/images/P/0964778319.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0964778319.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0964778319.01.LZZZZZZZ.jpg', 100, 60, 4, 63)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (677, N'LONESOME DOVE', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671623249.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671623249.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671623249.01.LZZZZZZZ.jpg', 100, 61, 3, 64)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (678, N'Shabanu: Daughter of the Wind (Border Trilogy)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0679810307.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0679810307.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0679810307.01.LZZZZZZZ.jpg', 100, 62, 2, 65)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (679, N'Haveli (Laurel Leaf Books)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0679865691.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0679865691.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0679865691.01.LZZZZZZZ.jpg', 100, 63, 1, 66)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (680, N'Lieux dits', 30000.0000, NULL, N'http://images.amazon.com/images/P/2070423204.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/2070423204.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/2070423204.01.LZZZZZZZ.jpg', 100, 64, 2, 67)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (681, N'The Dragons of Eden: Speculations on the Evolution of Human Intelligence', 30000.0000, NULL, N'http://images.amazon.com/images/P/0345260317.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0345260317.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0345260317.01.LZZZZZZZ.jpg', 100, 65, 2, 68)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (682, N'The yawning heights', 30000.0000, NULL, N'http://images.amazon.com/images/P/0394743741.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0394743741.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0394743741.01.LZZZZZZZ.jpg', 100, 66, 2, 69)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (683, N'Breathing Lessons', 30000.0000, NULL, N'http://images.amazon.com/images/P/042511774X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/042511774X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/042511774X.01.LZZZZZZZ.jpg', 100, 67, 5, 70)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (684, N'The Joy Luck Club', 30000.0000, NULL, N'http://images.amazon.com/images/P/0804106304.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0804106304.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0804106304.01.LZZZZZZZ.jpg', 100, 68, 2, 71)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (685, N'Heart of Darkness (Wordsworth Collection)', 30000.0000, NULL, N'http://images.amazon.com/images/P/1853262404.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1853262404.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1853262404.01.LZZZZZZZ.jpg', 100, 69, 4, 72)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (686, N'The Angel Is Near', 30000.0000, NULL, N'http://images.amazon.com/images/P/0312970242.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0312970242.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0312970242.01.LZZZZZZZ.jpg', 100, 70, 2, 73)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (687, N'Tess of the D''Urbervilles (Wordsworth Classics)', 30000.0000, NULL, N'http://images.amazon.com/images/P/1853260053.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1853260053.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1853260053.01.LZZZZZZZ.jpg', 100, 71, 4, 74)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (688, N'The Adventures of Drew and Ellie: The Magical Dress', 30000.0000, NULL, N'http://images.amazon.com/images/P/1414035004.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1414035004.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1414035004.01.LZZZZZZZ.jpg', 100, 72, 1, 75)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (689, N'The Accidental Virgin', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060938412.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060938412.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060938412.01.LZZZZZZZ.jpg', 100, 73, 4, 76)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (690, N'The Tao of Pooh', 30000.0000, NULL, N'http://images.amazon.com/images/P/0140067477.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0140067477.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0140067477.01.LZZZZZZZ.jpg', 100, 74, 2, 77)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (691, N'Seabiscuit', 30000.0000, NULL, N'http://images.amazon.com/images/P/0345465083.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0345465083.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0345465083.01.LZZZZZZZ.jpg', 100, 75, 5, 78)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (692, N'The Prince', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451625889.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451625889.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451625889.01.LZZZZZZZ.jpg', 100, 76, 4, 79)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (693, N'Life''s Little Instruction Book (Life''s Little Instruction Books (Paperback))', 30000.0000, NULL, N'http://images.amazon.com/images/P/1558531025.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1558531025.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1558531025.01.LZZZZZZZ.jpg', 100, 77, 5, 80)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (694, N'Starship Troopers', 30000.0000, NULL, N'http://images.amazon.com/images/P/0441783589.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0441783589.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0441783589.01.LZZZZZZZ.jpg', 100, 78, 5, 81)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (695, N'The Ruby in the Smoke (Sally Lockhart Trilogy, Book 1)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0394895894.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0394895894.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0394895894.01.LZZZZZZZ.jpg', 100, 79, 3, 82)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (696, N'Black Beauty (Illustrated Classics)', 30000.0000, NULL, N'http://images.amazon.com/images/P/1569871213.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1569871213.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1569871213.01.LZZZZZZZ.jpg', 100, 80, 6, 83)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (697, N'Anil''s Ghost', 30000.0000, NULL, N'http://images.amazon.com/images/P/0375410538.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0375410538.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0375410538.01.LZZZZZZZ.jpg', 100, 81, 5, 84)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (698, N'Prescription for Terror', 30000.0000, NULL, N'http://images.amazon.com/images/P/0966986105.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0966986105.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0966986105.01.LZZZZZZZ.jpg', 100, 82, 1, 85)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (699, N'Modern Manners: An Etiquette Book for Rude People', 30000.0000, NULL, N'http://images.amazon.com/images/P/087113375X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/087113375X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/087113375X.01.LZZZZZZZ.jpg', 100, 83, 6, 86)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (700, N'Turning Thirty', 30000.0000, NULL, N'http://images.amazon.com/images/P/0340767936.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0340767936.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0340767936.01.LZZZZZZZ.jpg', 100, 84, 5, 1)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (701, N'Decipher', 30000.0000, NULL, N'http://images.amazon.com/images/P/0743403843.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0743403843.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0743403843.01.LZZZZZZZ.jpg', 100, 85, 5, 2)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (702, N'My First Cousin Once Removed: Money, Madness, and the Family of Robert Lowell', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060930365.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060930365.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060930365.01.LZZZZZZZ.jpg', 100, 86, 4, 4)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (703, N'Standing Firm: A Vice-Presidential Memoir', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060177586.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060177586.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060177586.01.LZZZZZZZ.jpg', 100, 87, 3, 5)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (704, N'Team Bush : Leadership Lessons from the Bush White House', 30000.0000, NULL, N'http://images.amazon.com/images/P/0071416331.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0071416331.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0071416331.01.LZZZZZZZ.jpg', 100, 88, 5, 6)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (705, N'The Right Man : The Surprise Presidency of George W. Bush', 30000.0000, NULL, N'http://images.amazon.com/images/P/0375509038.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0375509038.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0375509038.01.LZZZZZZZ.jpg', 100, 89, 2, 7)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (706, N'Daybreakers Louis Lamour Collection', 30000.0000, NULL, N'http://images.amazon.com/images/P/0553062042.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0553062042.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0553062042.01.LZZZZZZZ.jpg', 100, 90, 6, 10)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (710, N'El Senor De Los Anillos: El Retorno Del Rey (Tolkien, J. R. R. Lord of the Rings. 3.)', 30000.0000, NULL, N'http://images.amazon.com/images/P/8445071777.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/8445071777.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/8445071777.01.LZZZZZZZ.jpg', 100, 94, 3, 14)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (711, N'Midnight in the Garden of Good and Evil: A Savannah Story', 30000.0000, NULL, N'http://images.amazon.com/images/P/0679429220.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0679429220.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0679429220.01.LZZZZZZZ.jpg', 100, 95, 2, 15)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (712, N'Pretend You Don''t See Her', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671867156.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671867156.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671867156.01.LZZZZZZZ.jpg', 100, 96, 6, 16)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (713, N'Fast Women', 30000.0000, NULL, N'http://images.amazon.com/images/P/0312252617.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0312252617.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0312252617.01.LZZZZZZZ.jpg', 100, 97, 5, 17)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (714, N'Female Intelligence', 30000.0000, NULL, N'http://images.amazon.com/images/P/0312261594.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0312261594.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0312261594.01.LZZZZZZZ.jpg', 100, 98, 5, 18)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (715, N'Pasquale''s Nose: Idle Days in an Italian Town', 30000.0000, NULL, N'http://images.amazon.com/images/P/0316748641.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0316748641.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0316748641.01.LZZZZZZZ.jpg', 100, 99, 4, 19)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (716, N'The Gospel of Judas: A Novel', 30000.0000, NULL, N'http://images.amazon.com/images/P/0316973742.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0316973742.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0316973742.01.LZZZZZZZ.jpg', 100, 100, 1, 20)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (717, N'Prize Stories, 1987: The O''Henry Awards', 30000.0000, NULL, N'http://images.amazon.com/images/P/0385235941.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0385235941.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0385235941.01.LZZZZZZZ.jpg', 100, 101, 3, 21)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (718, N'Rich Dad, Poor Dad: What the Rich Teach Their Kids About Money--That the Poor and Middle Class Do Not!', 30000.0000, NULL, N'http://images.amazon.com/images/P/0446677450.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0446677450.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0446677450.01.LZZZZZZZ.jpg', 100, 102, 2, 22)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (719, N'The Pillars of the Earth', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451166892.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451166892.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451166892.01.LZZZZZZZ.jpg', 100, 103, 4, 23)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (720, N'McDonald''s: Behind the Arches', 30000.0000, NULL, N'http://images.amazon.com/images/P/0553347594.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0553347594.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0553347594.01.LZZZZZZZ.jpg', 100, 104, 4, 24)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (721, N'Creating Wealth : Retire in Ten Years Using Allen''s Seven Principles of Wealth!', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671621009.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671621009.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671621009.01.LZZZZZZZ.jpg', 100, 105, 3, 25)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (722, N'Corelli''s Mandolin : A Novel', 30000.0000, NULL, N'http://images.amazon.com/images/P/067976397X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/067976397X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/067976397X.01.LZZZZZZZ.jpg', 100, 106, 5, 26)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (723, N'Love, Miracles, and Animal Healing : A heartwarming look at the spiritual bond between animals and humans', 30000.0000, NULL, N'http://images.amazon.com/images/P/0684822733.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0684822733.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0684822733.01.LZZZZZZZ.jpg', 100, 107, 4, 27)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (724, N'The Five People You Meet in Heaven', 30000.0000, NULL, N'http://images.amazon.com/images/P/0786868716.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0786868716.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0786868716.01.LZZZZZZZ.jpg', 100, 108, 4, 28)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (725, N'Tu Nombre Escrito En El Agua (La Sonrisa Vertical)', 30000.0000, NULL, N'http://images.amazon.com/images/P/8472238822.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/8472238822.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/8472238822.01.LZZZZZZZ.jpg', 100, 109, 2, 29)
GO
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (726, N'Relics (Star Trek: The Next Generation)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671864769.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671864769.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671864769.01.LZZZZZZZ.jpg', 100, 110, 4, 30)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (727, N'Bless The Beasts And Children : Bless The Beasts And Children', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671521519.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671521519.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671521519.01.LZZZZZZZ.jpg', 100, 111, 6, 31)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (728, N'The Touch of Your Shadow, the Whisper of Your Name (Babylon 5, Book 5)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0440222303.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0440222303.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0440222303.01.LZZZZZZZ.jpg', 100, 112, 3, 32)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (729, N'Blood Oath', 30000.0000, NULL, N'http://images.amazon.com/images/P/0312953453.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0312953453.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0312953453.01.LZZZZZZZ.jpg', 100, 113, 4, 33)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (730, N'The Alibi', 30000.0000, NULL, N'http://images.amazon.com/images/P/0446608653.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0446608653.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0446608653.01.LZZZZZZZ.jpg', 100, 114, 6, 34)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (731, N'The Beach House', 30000.0000, NULL, N'http://images.amazon.com/images/P/0446612545.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0446612545.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0446612545.01.LZZZZZZZ.jpg', 100, 115, 1, 35)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (732, N'A Kiss Remembered', 30000.0000, NULL, N'http://images.amazon.com/images/P/0446612618.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0446612618.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0446612618.01.LZZZZZZZ.jpg', 100, 116, 3, 36)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (733, N'The Short Forever', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451208080.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451208080.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451208080.01.LZZZZZZZ.jpg', 100, 117, 6, 37)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (734, N'Dead Aim', 30000.0000, NULL, N'http://images.amazon.com/images/P/0553584383.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0553584383.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0553584383.01.LZZZZZZZ.jpg', 100, 118, 6, 38)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (735, N'Angels &amp; Demons', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671027360.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671027360.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671027360.01.LZZZZZZZ.jpg', 100, 119, 3, 39)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (736, N'The Deal', 30000.0000, NULL, N'http://images.amazon.com/images/P/0812575954.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0812575954.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0812575954.01.LZZZZZZZ.jpg', 100, 120, 5, 40)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (737, N'All He Ever Wanted: A Novel', 30000.0000, NULL, N'http://images.amazon.com/images/P/0316735736.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0316735736.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0316735736.01.LZZZZZZZ.jpg', 100, 121, 2, 41)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (738, N'Every Breath You Take : A True Story of Obsession, Revenge, and Murder', 30000.0000, NULL, N'http://images.amazon.com/images/P/0743439740.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0743439740.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0743439740.01.LZZZZZZZ.jpg', 100, 122, 4, 42)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (739, N'If I Ever Get Back to Georgia, I''m Gonna Nail My Feet to the Ground', 30000.0000, NULL, N'http://images.amazon.com/images/P/0345372700.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0345372700.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0345372700.01.LZZZZZZZ.jpg', 100, 123, 3, 43)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (740, N'The Mosquito Coast', 30000.0000, NULL, N'http://images.amazon.com/images/P/0380619458.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0380619458.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0380619458.01.LZZZZZZZ.jpg', 100, 124, 5, 44)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (741, N'If Love Were Oil, I''d Be About a Quart Low', 30000.0000, NULL, N'http://images.amazon.com/images/P/0446325805.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0446325805.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0446325805.01.LZZZZZZZ.jpg', 100, 125, 3, 45)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (742, N'Goodbye, My Little Ones: The True Story of a Murderous Mother and Five Innocent Victims', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451406923.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451406923.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451406923.01.LZZZZZZZ.jpg', 100, 126, 3, 46)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (743, N'The Girl Who Loved Tom Gordon', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671042858.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671042858.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671042858.01.LZZZZZZZ.jpg', 100, 127, 2, 47)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (744, N'Bringing Down the House: The Inside Story of Six M.I.T. Students Who Took Vegas for Millions', 30000.0000, NULL, N'http://images.amazon.com/images/P/0743249992.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0743249992.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0743249992.01.LZZZZZZZ.jpg', 100, 128, 6, 48)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (745, N'The Oneprince (The Redaemian Chronicles, Book 1)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0840734530.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0840734530.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0840734530.01.LZZZZZZZ.jpg', 100, 129, 2, 49)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (746, N'The Sum of All Fears', 30000.0000, NULL, N'http://images.amazon.com/images/P/0425184226.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0425184226.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0425184226.01.LZZZZZZZ.jpg', 100, 130, 2, 50)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (747, N'Care Packages : Letters to Christopher Reeve from Strangers and Other Friends', 30000.0000, NULL, N'http://images.amazon.com/images/P/0375500766.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0375500766.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0375500766.01.LZZZZZZZ.jpg', 100, 131, 1, 51)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (748, N'O Deus Das Pequenas Coisas', 30000.0000, NULL, N'http://images.amazon.com/images/P/9724119378.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/9724119378.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/9724119378.01.LZZZZZZZ.jpg', 100, 132, 6, 52)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (749, N'Lady in Green/Minor Indiscretions (Signet Regency Romance)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451205197.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451205197.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451205197.01.LZZZZZZZ.jpg', 100, 133, 5, 53)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (750, N'One Hundred Years of Solitude', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060929790.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060929790.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060929790.01.LZZZZZZZ.jpg', 100, 134, 1, 54)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (751, N'Little Altars Everywhere: A Novel', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060976845.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060976845.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060976845.01.LZZZZZZZ.jpg', 100, 135, 2, 55)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (752, N'Coyote Waits (Joe Leaphorn/Jim Chee Novels)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0061099325.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0061099325.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0061099325.01.LZZZZZZZ.jpg', 100, 136, 1, 56)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (753, N'Before I Say Good-Bye', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671004573.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671004573.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671004573.01.LZZZZZZZ.jpg', 100, 137, 5, 57)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (754, N'Slow Waltz in Cedar Bend', 30000.0000, NULL, N'http://images.amazon.com/images/P/0446601640.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0446601640.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0446601640.01.LZZZZZZZ.jpg', 100, 138, 4, 58)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (755, N'Twenty Minute Retreats: Revive Your Spirits in Just Minutes a Day (A Pan Self-discovery Title)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0330484516.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0330484516.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0330484516.01.LZZZZZZZ.jpg', 100, 139, 6, 59)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (756, N'Atonement : A Novel', 30000.0000, NULL, N'http://images.amazon.com/images/P/038572179X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/038572179X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/038572179X.01.LZZZZZZZ.jpg', 100, 140, 3, 60)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (757, N'Next: The Future Just Happened', 30000.0000, NULL, N'http://images.amazon.com/images/P/0393020371.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0393020371.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0393020371.01.LZZZZZZZ.jpg', 100, 141, 2, 61)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (758, N'The Angelic Darkness', 30000.0000, NULL, N'http://images.amazon.com/images/P/1900850303.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1900850303.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1900850303.01.LZZZZZZZ.jpg', 100, 142, 3, 62)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (759, N'The Soulbane Stratagem', 30000.0000, NULL, N'http://images.amazon.com/images/P/1903019699.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/1903019699.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/1903019699.01.LZZZZZZZ.jpg', 100, 143, 3, 63)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (760, N'Gangster', 30000.0000, NULL, N'http://images.amazon.com/images/P/0345425294.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0345425294.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0345425294.01.LZZZZZZZ.jpg', 100, 144, 4, 64)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (761, N'Hush', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451410319.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451410319.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451410319.01.LZZZZZZZ.jpg', 100, 145, 4, 65)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (762, N'Whisper of Evil (Hooper, Kay. Evil Trilogy.)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0553583468.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0553583468.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0553583468.01.LZZZZZZZ.jpg', 100, 146, 4, 66)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (763, N'Temor y Temblor', 30000.0000, NULL, N'http://images.amazon.com/images/P/8420639133.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/8420639133.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/8420639133.01.LZZZZZZZ.jpg', 100, 147, 6, 67)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (764, N'Estudios sobre el amor', 30000.0000, NULL, N'http://images.amazon.com/images/P/8476409419.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/8476409419.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/8476409419.01.LZZZZZZZ.jpg', 100, 148, 1, 68)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (765, N'Rebecca', 30000.0000, NULL, N'http://images.amazon.com/images/P/0380778556.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0380778556.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0380778556.01.LZZZZZZZ.jpg', 100, 149, 5, 69)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (766, N'Scarlet Letter', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451525221.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451525221.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451525221.01.LZZZZZZZ.jpg', 100, 150, 1, 70)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (767, N'Keep It Simple: And Get More Out of Life', 30000.0000, NULL, N'http://images.amazon.com/images/P/0002740230.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0002740230.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0002740230.01.LZZZZZZZ.jpg', 100, 151, 6, 71)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (768, N'Diary of a Mad Mom-To-Be', 30000.0000, NULL, N'http://images.amazon.com/images/P/0385336772.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0385336772.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0385336772.01.LZZZZZZZ.jpg', 100, 152, 2, 72)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (769, N'Locked in Time (Laurel Leaf Books)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0440949424.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0440949424.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0440949424.01.LZZZZZZZ.jpg', 100, 153, 1, 73)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (770, N'Contact', 30000.0000, NULL, N'http://images.amazon.com/images/P/0505524996.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0505524996.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0505524996.01.LZZZZZZZ.jpg', 100, 154, 6, 74)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (771, N'The Brimstone Wedding', 30000.0000, NULL, N'http://images.amazon.com/images/P/0140252800.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0140252800.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0140252800.01.LZZZZZZZ.jpg', 100, 155, 3, 75)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (772, N'The Catswold Portal', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451452755.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451452755.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451452755.01.LZZZZZZZ.jpg', 100, 156, 3, 76)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (773, N'Through Wolf''s Eyes (Wolf)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0812575482.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0812575482.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0812575482.01.LZZZZZZZ.jpg', 100, 157, 2, 77)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (774, N'Puerto Vallarta Squeeze', 30000.0000, NULL, N'http://images.amazon.com/images/P/044651747X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/044651747X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/044651747X.01.LZZZZZZZ.jpg', 100, 158, 6, 78)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (775, N'Tree Grows In Brooklyn', 30000.0000, NULL, N'http://images.amazon.com/images/P/0060801263.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0060801263.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0060801263.01.LZZZZZZZ.jpg', 100, 159, 6, 79)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (776, N'Cybill Disobedience: How I Survived Beauty Pageants, Elvis, Sex, Bruce Willis, Lies, Marriage, Motherhood, Hollywood, and the Irrepressible Urge to Say What I Think', 30000.0000, NULL, N'http://images.amazon.com/images/P/0061030147.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0061030147.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0061030147.01.LZZZZZZZ.jpg', 100, 160, 6, 80)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (777, N'Snow Angels', 30000.0000, NULL, N'http://images.amazon.com/images/P/0140250964.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0140250964.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0140250964.01.LZZZZZZZ.jpg', 100, 161, 5, 81)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (778, N'Wish You Well', 30000.0000, NULL, N'http://images.amazon.com/images/P/0446527165.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0446527165.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0446527165.01.LZZZZZZZ.jpg', 100, 162, 5, 82)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (779, N'The Hitchhiker''s Guide to the Galaxy', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671461494.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671461494.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671461494.01.LZZZZZZZ.jpg', 100, 163, 4, 83)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (780, N'Crow Lake (Today Show Book Club #7)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0385337639.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0385337639.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0385337639.01.LZZZZZZZ.jpg', 100, 164, 4, 84)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (781, N'My Antonia', 30000.0000, NULL, N'http://images.amazon.com/images/P/039575514X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/039575514X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/039575514X.01.LZZZZZZZ.jpg', 100, 165, 1, 85)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (782, N'Pen Pals', 30000.0000, NULL, N'http://images.amazon.com/images/P/0451206673.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0451206673.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0451206673.01.LZZZZZZZ.jpg', 100, 166, 3, 86)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (783, N'Bridget Jones''s Diary', 30000.0000, NULL, N'http://images.amazon.com/images/P/0330332775.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0330332775.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0330332775.01.LZZZZZZZ.jpg', 100, 167, 5, 1)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (784, N'Pride and Prejudice (Dover Thrift Editions)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0486284735.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0486284735.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0486284735.01.LZZZZZZZ.jpg', 100, 168, 4, 2)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (785, N'EYE ON CRIME: HARDY BOYS #153', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671021745.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671021745.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671021745.01.LZZZZZZZ.jpg', 100, 169, 6, 4)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (786, N'Skin And Bones', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671047612.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671047612.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671047612.01.LZZZZZZZ.jpg', 100, 170, 2, 5)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (787, N'LAW OF THE JUNGLE (HARDY BOYS CASE FILE 105) : LAW OF THE JUNGLE (Hardy Boys, The)', 30000.0000, NULL, N'http://images.amazon.com/images/P/0671504282.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0671504282.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0671504282.01.LZZZZZZZ.jpg', 100, 171, 3, 6)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (788, N'The Cat Who Came to Breakfast (Cat Who... (Hardcover))', 30000.0000, NULL, N'http://images.amazon.com/images/P/0399138684.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0399138684.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0399138684.01.LZZZZZZZ.jpg', 100, 172, 2, 7)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (789, N'If Singleness Is a Gift, What''s the Return Policy?', 30000.0000, NULL, N'http://images.amazon.com/images/P/0785263292.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/0785263292.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/0785263292.01.LZZZZZZZ.jpg', 100, 173, 3, 10)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (793, N'Kabale Und Liebe', 30000.0000, NULL, N'http://images.amazon.com/images/P/3150000335.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3150000335.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3150000335.01.LZZZZZZZ.jpg', 100, 177, 2, 14)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (794, N'Der illustrierte Mann. ErzÃ?Â¤hlungen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257203659.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257203659.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257203659.01.LZZZZZZZ.jpg', 100, 178, 3, 15)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (795, N'Der KÃ?Â¶nig in Gelb.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257207522.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257207522.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257207522.01.LZZZZZZZ.jpg', 100, 179, 5, 16)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (796, N'Fahrenheit 451', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257208626.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257208626.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257208626.01.LZZZZZZZ.jpg', 100, 180, 3, 17)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (797, N'Die Mars- Chroniken. Roman in ErzÃ?Â¤hlungen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257208634.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257208634.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257208634.01.LZZZZZZZ.jpg', 100, 181, 6, 18)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (798, N'Das BÃ?Â¶se kommt auf leisen Sohlen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257208669.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257208669.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257208669.01.LZZZZZZZ.jpg', 100, 182, 1, 19)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (799, N'LÃ?Â¶wenzahnwein. Roman.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257210450.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257210450.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257210450.01.LZZZZZZZ.jpg', 100, 183, 1, 20)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (800, N'Das Kind von morgen. ErzÃ?Â¤hlungen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257212054.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257212054.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257212054.01.LZZZZZZZ.jpg', 100, 184, 2, 21)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (801, N'Die Mechanismen der Freude. ErzÃ?Â¤hlungen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257212429.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257212429.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257212429.01.LZZZZZZZ.jpg', 100, 185, 5, 22)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (802, N'Familientreffen. ErzÃ?Â¤hlungen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257214154.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257214154.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257214154.01.LZZZZZZZ.jpg', 100, 186, 2, 23)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (803, N'Der Tod kommt schnell in Mexico. ErzÃ?Â¤hlungen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257216416.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257216416.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257216416.01.LZZZZZZZ.jpg', 100, 187, 3, 24)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (804, N'Veronika Deschliesst Zu Sterben / Vernika Decides to Die', 30000.0000, NULL, N'http://images.amazon.com/images/P/3257233051.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3257233051.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3257233051.01.LZZZZZZZ.jpg', 100, 188, 5, 25)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (805, N'Die Liebe in Den Zelten', 30000.0000, NULL, N'http://images.amazon.com/images/P/342311360X.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/342311360X.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/342311360X.01.LZZZZZZZ.jpg', 100, 189, 4, 26)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (806, N'Die Klone der Joanna May. Roman.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3423116714.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3423116714.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3423116714.01.LZZZZZZZ.jpg', 100, 190, 5, 27)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (807, N'Ist mein Hintern wirklich so dick? Tagebuch einer empfindsamen Frau.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3423241489.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3423241489.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3423241489.01.LZZZZZZZ.jpg', 100, 191, 6, 28)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (808, N'Haifischfrauen.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3426605686.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3426605686.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3426605686.01.LZZZZZZZ.jpg', 100, 192, 6, 29)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (809, N'Die Cappuccino- Jahre. Aus dem Tagebuch des Adrian Mole.', 30000.0000, NULL, N'http://images.amazon.com/images/P/3453212150.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3453212150.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3453212150.01.LZZZZZZZ.jpg', 100, 193, 1, 30)
INSERT [dbo].[Sach] ([IDSach], [TieuDe], [Gia], [MoTa], [Img1], [Img2], [Img3], [SoLuong], [IDTacGia], [IDTheLoai], [IDNXB]) VALUES (810, N'Schwarzer Tee mit drei StÃ¼ck Zucker', 30000.0000, NULL, N'http://images.amazon.com/images/P/3462021095.01.THUMBZZZ.jpg', N'http://images.amazon.com/images/P/3462021095.01.MZZZZZZZ.jpg', N'http://images.amazon.com/images/P/3462021095.01.LZZZZZZZ.jpg', 100, 194, 4, 31)
SET IDENTITY_INSERT [dbo].[Sach] OFF
GO
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (1, N'Stephen Hawking', N'Cuộc sống sẽ là thảm họa nếu thiếu tiếng cười', N'https://imagenes.elpais.com/resizer/oI71NWyUsqBmaNUmMs59UXlmyJg=/980x980/ep01.epimg.net/elpais/imagenes/2018/03/14/icon/1521018215_095622_1521027358_noticia_fotograma.jpg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (2, N'Paulo Coelho', N'Cơn bão càng dữ dội thì nó càng qua nhanh.', N'https://www.sachkhaitri.com/data/author/5144/logo-paulo-coelho.jpg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (3, N'Shannon Thomas', N'Shannon Thomas', N'https://www.netabooks.vn/data/author/19597/logo-shannon-thomas.jpg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (4, N'Dale Carnegie', N'Sợ hãi không nằm ở đâu ngoài trí óc.', N'https://flymacmarketing.files.wordpress.com/2018/10/dale-carnegie-9238769-1-402.jpg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (19, N'Mark P. O. Morford', N'Classical Mythology', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (20, N'Richard Bruce Wright', N'Clara Callan', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (21, N'Carlo D''Este', N'Decision in Normandy', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (22, N'Gina Bari Kolata', N'Flu: The Story of the Great Influenza Pandemic of 1918 and the Search for the Virus That Caused It', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (23, N'E. J. W. Barber', N'The Mummies of Urumchi', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (24, N'Amy Tan', N'The Kitchen God''s Wife', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (25, N'Robert Cowley', N'What If?: The World''s Foremost Military Historians Imagine What Might Have Been', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (26, N'Scott Turow', N'PLEADING GUILTY', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (27, N'David Cordingly', N'Under the Black Flag: The Romance and the Reality of Life Among the Pirates', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (28, N'Ann Beattie', N'Where You''ll Find Me: And Other Stories', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (29, N'David Adams Richards', N'Nights Below Station Street', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (30, N'Adam Lebor', N'Hitler''s Secret Bankers: The Myth of Swiss Neutrality During the Holocaust', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (31, N'Sheila Heti', N'The Middle Stories', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (32, N'R. J. Kaiser', N'Jane Doe', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (33, N'Jack Canfield', N'A Second Chicken Soup for the Woman''s Soul (Chicken Soup for the Soul Series)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (34, N'Loren D. Estleman', N'The Witchfinder (Amos Walker Mystery Series)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (35, N'Robert Hendrickson', N'More Cunning Than Man: A Social History of Rats and Man', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (36, N'Julia Oliver', N'Goodbye to the Buttermilk Sky', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (37, N'John Grisham', N'The Testament', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (38, N'Toni Morrison', N'Beloved (Plume Contemporary Fiction)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (39, N'The Onion', N'Our Dumb Century: The Onion Presents 100 Years of Headlines from America''s Finest News Source', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (40, N'Celia Brooks Brown', N'New Vegetarian: Bold and Beautiful Recipes for Every Occasion', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (41, N'J. R. Parrish', N'If I''d Known Then What I Know Now: Why Not Learn from the Mistakes of Others? : You Can''t Afford to Make Them All Yourself', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (42, N'Mary-Kate &amp; Ashley Olsen', N'Mary-Kate &amp; Ashley Switching Goals (Mary-Kate and Ashley Starring in)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (43, N'Robynn Clairday', N'Tell Me This Isn''t Happening', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (44, N'Kathleen Duey', N'Flood : Mississippi 1927', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (45, N'Rich Shapero', N'Wild Animus', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (46, N'Michael Crichton', N'Airframe', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (47, N'MICHAEL CRICHTON', N'Timeline', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (48, N'C.S. Lewis', N'OUT OF THE SILENT PLANET', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (49, N'ARTHUR PHILLIPS', N'Prague : A Novel', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (50, N'Stephan Jaramillo', N'Chocolate Jesus', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (51, N'Mordecai Richler', N'Wie Barney es sieht.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (52, N'Eleanor Cooney', N'Der Fluch der Kaiserin. Ein Richter- Di- Roman.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (53, N'Charlotte Link', N'Sturmzeit. Roman.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (54, N'Richard North Patterson', N'Tage der Unschuld.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (55, N'Mark Salzman', N'Lying Awake', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (56, N'Harper Lee', N'To Kill a Mockingbird', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (57, N'LAURA HILLENBRAND', N'Seabiscuit: An American Legend', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (58, N'Barbara Kingsolver', N'Pigs in Heaven', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (59, N'Jo Dereske', N'Miss Zukas and the Raven''s Dance', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (60, N'Jane Austen', N'Pride and Prejudice', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (61, N'Dolores Krieger', N'The Therapeutic Touch: How to Use Your Hands to Help or to Heal', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (62, N'Anne Rivers Siddons', N'Downtown', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (63, N'Dean R. Koontz', N'Icebound', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (64, N'Mary Higgins Clark', N'I''ll Be Seeing You', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (65, N'Dean Koontz', N'From the Corner of His Eye', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (66, N'Patricia Cornwell', N'Isle of Dogs', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (67, N'J.D. Robb', N'Purity in Death', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (68, N'Maeve Binchy', N'This Year It Will Be Different: And Other Stories', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (69, N'Laura J. Mixon', N'Proxies', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (70, N'Tim Lahaye', N'Left Behind: A Novel of the Earth''s Last Days (Left Behind #1)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (71, N'JOHN GRISHAM', N'The Street Lawyer', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (72, N'M.D. Bernie S. Siegel', N'Love, Medicine and Miracles', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (73, N'Robert Penn Warren', N'All the King''s Men', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (74, N'Hans Johannes Hoefer', N'Pacific Northwest', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (75, N'Mark Helprin', N'A Soldier of the Great War', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (76, N'O. Carol Simonton Md', N'Getting Well Again', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (77, N'Chuck Hill', N'Northwest Wines and Wineries', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (78, N'David Iglehart', N'An Atmosphere of Eternity: Stories of India', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (79, N'Larry McMurtry', N'LONESOME DOVE', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (80, N'SUZANNE FISHER STAPLES', N'Shabanu: Daughter of the Wind (Border Trilogy)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (81, N'SUZANNE FISHER STAPLES', N'Haveli (Laurel Leaf Books)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (82, N'Michel Tournier', N'Lieux dits', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (83, N'Carl Sagan', N'The Dragons of Eden: Speculations on the Evolution of Human Intelligence', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (84, N'Aleksandr Zinoviev', N'The yawning heights', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (85, N'Anne Tyler', N'Breathing Lessons', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (86, N'Amy Tan', N'The Joy Luck Club', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (87, N'Joseph Conrad', N'Heart of Darkness (Wordsworth Collection)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (88, N'Deepak Chopra', N'The Angel Is Near', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (89, N'Thomas Hardy', N'Tess of the D''Urbervilles (Wordsworth Classics)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (90, N'Charles Noland', N'The Adventures of Drew and Ellie: The Magical Dress', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (91, N'Valerie Frankel', N'The Accidental Virgin', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (92, N'Benjamin Hoff', N'The Tao of Pooh', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (93, N'LAURA HILLENBRAND', N'Seabiscuit', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (94, N'Niccolo Machiavelli', N'The Prince', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (95, N'H. Jackson Brown', N'Life''s Little Instruction Book (Life''s Little Instruction Books (Paperback))', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (96, N'Robert A. Heinlein', N'Starship Troopers', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (97, N'PHILIP PULLMAN', N'The Ruby in the Smoke (Sally Lockhart Trilogy, Book 1)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (98, N'Anna Sewell', N'Black Beauty (Illustrated Classics)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (99, N'MICHAEL ONDAATJE', N'Anil''s Ghost', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (100, N'Sandra Levy Ceren', N'Prescription for Terror', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (101, N'P.J. O''Rourke', N'Modern Manners: An Etiquette Book for Rude People', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (102, N'Mike Gayle', N'Turning Thirty', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (103, N'Stel Pavlou', N'Decipher', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (104, N'Sarah Payne Stuart', N'My First Cousin Once Removed: Money, Madness, and the Family of Robert Lowell', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (105, N'Dan Quayle', N'Standing Firm: A Vice-Presidential Memoir', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (106, N'Donald F. Kettl', N'Team Bush : Leadership Lessons from the Bush White House', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (107, N'DAVID FRUM', N'The Right Man : The Surprise Presidency of George W. Bush', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (108, N'Louis Lamour', N'Daybreakers Louis Lamour Collection', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (109, N'J.D. Salinger', N'The Catcher in the Rye', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (110, N'J. R. R. Tolkien', N'El Senor De Los Anillos: LA Comunidad Del Anillo (Lord of the Rings (Spanish))', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (111, N'J. R. R. Tolkien', N'El Senor De Los Anillos: Las DOS Torres (Lord of the Rings (Paperback))', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (112, N'J. R. R. Tolkien', N'El Senor De Los Anillos: El Retorno Del Rey (Tolkien, J. R. R. Lord of the Rings. 3.)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (113, N'John Berendt', N'Midnight in the Garden of Good and Evil: A Savannah Story', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
GO
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (114, N'Mary Higgins Clark', N'Pretend You Don''t See Her', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (115, N'Jennifer Crusie', N'Fast Women', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (116, N'Jane Heller', N'Female Intelligence', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (117, N'Michael Rips', N'Pasquale''s Nose: Idle Days in an Italian Town', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (118, N'Simon Mawer', N'The Gospel of Judas: A Novel', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (119, N'William Abrahams', N'Prize Stories, 1987: The O''Henry Awards', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (120, N'Robert T. Kiyosaki', N'Rich Dad, Poor Dad: What the Rich Teach Their Kids About Money--That the Poor and Middle Class Do Not!', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (121, N'Ken Follett', N'The Pillars of the Earth', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (122, N'John F. Love', N'McDonald''s: Behind the Arches', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (123, N'Robert G. Allen', N'Creating Wealth : Retire in Ten Years Using Allen''s Seven Principles of Wealth!', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (124, N'LOUIS DE BERNIERES', N'Corelli''s Mandolin : A Novel', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (125, N'Pam Proctor', N'Love, Miracles, and Animal Healing : A heartwarming look at the spiritual bond between animals and humans', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (126, N'Mitch Albom', N'The Five People You Meet in Heaven', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (127, N'Irene Gonzalez Frei', N'Tu Nombre Escrito En El Agua (La Sonrisa Vertical)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (128, N'Michael Jan Friedman', N'Relics (Star Trek: The Next Generation)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (129, N'Glendon Swarthout', N'Bless The Beasts And Children : Bless The Beasts And Children', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (130, N'Neal Barrett Jr.', N'The Touch of Your Shadow, the Whisper of Your Name (Babylon 5, Book 5)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (131, N'David Morrell', N'Blood Oath', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (132, N'Sandra Brown', N'The Alibi', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (133, N'James Patterson', N'The Beach House', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (134, N'Sandra Brown', N'A Kiss Remembered', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (135, N'Stuart Woods', N'The Short Forever', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (136, N'IRIS JOHANSEN', N'Dead Aim', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (137, N'Dan Brown', N'Angels &amp; Demons', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (138, N'Joe Hutsko', N'The Deal', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (139, N'Anita Shreve', N'All He Ever Wanted: A Novel', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (140, N'Ann Rule', N'Every Breath You Take : A True Story of Obsession, Revenge, and Murder', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (141, N'LEWIS GRIZZARD', N'If I Ever Get Back to Georgia, I''m Gonna Nail My Feet to the Ground', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (142, N'Paul Theroux', N'The Mosquito Coast', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (143, N'Lewis Grizzard', N'If Love Were Oil, I''d Be About a Quart Low', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (144, N'Charles Hickey', N'Goodbye, My Little Ones: The True Story of a Murderous Mother and Five Innocent Victims', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (145, N'Stephen King', N'The Girl Who Loved Tom Gordon', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (146, N'Ben Mezrich', N'Bringing Down the House: The Inside Story of Six M.I.T. Students Who Took Vegas for Millions', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (147, N'Bill Hand', N'The Oneprince (The Redaemian Chronicles, Book 1)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (148, N'Tom Clancy', N'The Sum of All Fears', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (149, N'DANA REEVE', N'Care Packages : Letters to Christopher Reeve from Strangers and Other Friends', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (150, N'Roy', N'O Deus Das Pequenas Coisas', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (151, N'Barbara Metzger', N'Lady in Green/Minor Indiscretions (Signet Regency Romance)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (152, N'Gabriel Garcia Marquez', N'One Hundred Years of Solitude', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (153, N'Rebecca Wells', N'Little Altars Everywhere: A Novel', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (154, N'Tony Hillerman', N'Coyote Waits (Joe Leaphorn/Jim Chee Novels)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (155, N'Mary Higgins Clark', N'Before I Say Good-Bye', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (156, N'Robert James Waller', N'Slow Waltz in Cedar Bend', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (157, N'Rachel Harris', N'Twenty Minute Retreats: Revive Your Spirits in Just Minutes a Day (A Pan Self-discovery Title)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (158, N'IAN MCEWAN', N'Atonement : A Novel', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (159, N'Michael Lewis', N'Next: The Future Just Happened', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (160, N'Richard Zimler', N'The Angelic Darkness', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (161, N'Norman Jetmundsen', N'The Soulbane Stratagem', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (162, N'Lorenzo Carcaterra', N'Gangster', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (163, N'Anne Frasier', N'Hush', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (164, N'Kay Hooper', N'Whisper of Evil (Hooper, Kay. Evil Trilogy.)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (165, N'Soren Kierkegaard', N'Temor y Temblor', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (166, N'Jose Ortega Y Gaset', N'Estudios sobre el amor', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (167, N'Daphne Du Maurier', N'Rebecca', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (168, N'Nathaniel Hawthorne', N'Scarlet Letter', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (169, N'Nick Page', N'Keep It Simple: And Get More Out of Life', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (170, N'Laura Wolf', N'Diary of a Mad Mom-To-Be', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (171, N'LOIS DUNCAN', N'Locked in Time (Laurel Leaf Books)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (172, N'Susan Grant', N'Contact', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeghttps://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (173, N'Barbara Vine', N'The Brimstone Wedding', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (174, N'Shirley Rousseau Murphy', N'The Catswold Portal', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (175, N'Jane Lindskold', N'Through Wolf''s Eyes (Wolf)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (176, N'Robert James Waller', N'Puerto Vallarta Squeeze', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (177, N'Betty Smith', N'Tree Grows In Brooklyn', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (178, N'Cybill Shepherd', N'Cybill Disobedience: How I Survived Beauty Pageants, Elvis, Sex, Bruce Willis, Lies, Marriage, Motherhood, Hollywood, and the Irrepressible Urge to Say What I Think', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (179, N'Stewart O''Nan', N'Snow Angels', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (180, N'David Baldacci', N'Wish You Well', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (181, N'Douglas Adams', N'The Hitchhiker''s Guide to the Galaxy', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (182, N'Mary Lawson', N'Crow Lake (Today Show Book Club #7)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (183, N'Willa Cather', N'My Antonia', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (184, N'Olivia Goldsmith', N'Pen Pals', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (185, N'Helen Fielding', N'Bridget Jones''s Diary', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (186, N'Jane Austen', N'Pride and Prejudice (Dover Thrift Editions)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (187, N'Franklin W. Dixon', N'EYE ON CRIME: HARDY BOYS #153', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (188, N'Franklin W. Dixon', N'Skin And Bones', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (189, N'Franklin W. Dixon', N'LAW OF THE JUNGLE (HARDY BOYS CASE FILE 105) : LAW OF THE JUNGLE (Hardy Boys, The)', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (190, N'Lilian Jackson Braun', N'The Cat Who Came to Breakfast (Cat Who... (Hardcover))', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (191, N'Holly Virden', N'If Singleness Is a Gift, What''s the Return Policy?', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (192, N'H. Norman Wright', N'Always Daddy''s Girl: Understanding Your Father''s Impact on Who You Are', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (193, N'Piers Anthony', N'Night Mare (Xanth Novels (Paperback))', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (194, N'RAY BRADBURY', N'The Martian Chronicles', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (195, N'Schiller', N'Kabale Und Liebe', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (196, N'Ray Bradbury', N'Der illustrierte Mann. ErzÃ?Â¤hlungen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (197, N'Raymond Chandler', N'Der KÃ?Â¶nig in Gelb.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (198, N'Ray Bradbury', N'Fahrenheit 451', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (199, N'Ray Bradbury', N'Die Mars- Chroniken. Roman in ErzÃ?Â¤hlungen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (200, N'Ray Bradbury', N'Das BÃ?Â¶se kommt auf leisen Sohlen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (201, N'Ray Bradbury', N'LÃ?Â¶wenzahnwein. Roman.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (202, N'Ray Bradbury', N'Das Kind von morgen. ErzÃ?Â¤hlungen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (203, N'Ray Bradbury', N'Die Mechanismen der Freude. ErzÃ?Â¤hlungen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (204, N'Ray Bradbury', N'Familientreffen. ErzÃ?Â¤hlungen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (205, N'Ray Bradbury', N'Der Tod kommt schnell in Mexico. ErzÃ?Â¤hlungen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (206, N'Paolo Coelho', N'Veronika Deschliesst Zu Sterben / Vernika Decides to Die', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (207, N'Gabriel Garcia Marquez', N'Die Liebe in Den Zelten', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (208, N'Fay Weldon', N'Die Klone der Joanna May. Roman.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (209, N'Arabella Weir', N'Ist mein Hintern wirklich so dick? Tagebuch einer empfindsamen Frau.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (210, N'Kiana Davenport', N'Haifischfrauen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (211, N'Sue Townsend', N'Die Cappuccino- Jahre. Aus dem Tagebuch des Adrian Mole.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (212, N'Renan Demirkan', N'Schwarzer Tee mit drei StÃ¼ck Zucker', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (213, N'Michael Moore', N'QuerschÃ?Â¼sse - Downsize This!', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
GO
INSERT [dbo].[TacGia] ([IDTacGia], [TenTG], [NoiBat], [Img]) VALUES (214, N'Jonathan Franzen', N'Die Korrekturen.', N'https://anhdep123.com/wp-content/uploads/2020/11/avatar-facebook-mac-dinh-nam.jpeg')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([IDTheLoai], [TenTheLoai], [Label]) VALUES (1, N'Khoa Học Viễn Tưởng', N'A')
INSERT [dbo].[TheLoai] ([IDTheLoai], [TenTheLoai], [Label]) VALUES (2, N'Tiểu Thuyết', N'B')
INSERT [dbo].[TheLoai] ([IDTheLoai], [TenTheLoai], [Label]) VALUES (3, N'Lịch Sử - Chính Trị', N'C')
INSERT [dbo].[TheLoai] ([IDTheLoai], [TenTheLoai], [Label]) VALUES (4, N'Kinh doanh', N'D')
INSERT [dbo].[TheLoai] ([IDTheLoai], [TenTheLoai], [Label]) VALUES (5, N'Kĩ thuật', N'E')
INSERT [dbo].[TheLoai] ([IDTheLoai], [TenTheLoai], [Label]) VALUES (6, N'Tâm lí - Kĩ Năng', N'F')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
SET IDENTITY_INSERT [dbo].[User_CauTraLoi] ON 

INSERT [dbo].[User_CauTraLoi] ([UCId], [UserID], [CauTraLoiId], [SttAns]) VALUES (169, 2, 16, 6)
INSERT [dbo].[User_CauTraLoi] ([UCId], [UserID], [CauTraLoiId], [SttAns]) VALUES (170, 2, 26, 6)
INSERT [dbo].[User_CauTraLoi] ([UCId], [UserID], [CauTraLoiId], [SttAns]) VALUES (171, 2, 36, 6)
INSERT [dbo].[User_CauTraLoi] ([UCId], [UserID], [CauTraLoiId], [SttAns]) VALUES (172, 2, 46, 6)
INSERT [dbo].[User_CauTraLoi] ([UCId], [UserID], [CauTraLoiId], [SttAns]) VALUES (173, 2, 56, 6)
INSERT [dbo].[User_CauTraLoi] ([UCId], [UserID], [CauTraLoiId], [SttAns]) VALUES (174, 2, 66, 6)
INSERT [dbo].[User_CauTraLoi] ([UCId], [UserID], [CauTraLoiId], [SttAns]) VALUES (175, 2, 76, 6)
SET IDENTITY_INSERT [dbo].[User_CauTraLoi] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (1, N'dutran3802', N'$2a$10$92Edk4hEgR/11ueZKgpdxeFVLiLYfi.XbHAtl1pYVieuSDLdUmWpi', N'Tran Du', N'03/08/2002', N'trandu3802@gmail.com', N'0337873884', N'Dak Song', N'https://haycafe.vn/wp-content/uploads/2021/11/Anh-avatar-dep-chat-lam-hinh-dai-dien.jpg', 1, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (2, N'dutran123', N'$2a$10$/WxxUvC0o9kHJ0JkpNn8/.wT.NXmhnoo9MaELgzsJKE1vEVp915gm', N'Trần Duu', N'08/09/2002', N'trandu3802@gmail.com', N'0337873884', N'Dak Song, Dak Nongg', N'https://haycafe.vn/wp-content/uploads/2021/11/Anh-avatar-dep-chat-lam-hinh-dai-dien.jpg', 2, N'F')
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (3, N'trandu3802', N'$2a$10$9WxzUe4glqSfNcC5mZObVO7gtq5pRTQ58/oDfpXWcurzalDuaWq6m', N'Tran Van Du', N'2023-10-19', N'trandu3802@gmail.com', N'0215485', N'', NULL, 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (6, N'bao126', N'$2a$10$YaGI.fSdVqrM38w3ru5j6ewPbarhnsZorpMhozRZ9eHo8JNaVj68C', N'bao126', NULL, NULL, N'944750240', N'bloomington, minnesota, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (7, N'david5', N'123', N'David 5', NULL, NULL, N'5', N'nyc, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (8, N'david6', N'123', N'David 6', N'2006', NULL, N'6', N'stockton, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (9, N'david7', N'123', N'David 7', NULL, NULL, N'7', N'moscow, yukon territory, russia', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (10, N'david8', N'123', N'David 8', N'2005', NULL, N'8', N'porto, v.n.gaia, portugal', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (11, N'david9', N'123', N'David 9', NULL, NULL, N'9', N'porto, v.n.gaia, portugal', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (12, N'beck1', N'123', N'Beck 1', N'1977', NULL, N'10', N'farnborough, hants, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (13, N'beck2', N'123', N'Beck 2', NULL, NULL, N'11', N'santa monica, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (14, N'beck3', N'123', N'Beck 3', N'2009', NULL, N'12', N'ferrol / spain, alabama, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (15, N'beck4', N'123', N'Beck 4', N'1962', NULL, N'13', N'tonawanda, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (16, N'beck5', N'123', N'Beck 5', N'2000', NULL, N'14', N'cheyenne, wyoming, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (17, N'Beck 6', N'123', N'Beck 6', N'1999', NULL, N'15', N'trieste, friuli venezia giulia, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (18, N'Beck 7', N'123', N'Beck 7', N'2009', NULL, N'16', N'cheyenne, wyoming, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (19, N'beck8', N'123', N'Beck 8', N'2001', NULL, N'17', N'chicago, illinois, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (20, N'beck9', N'123', N'Beck 9', N'1993', NULL, N'18', N'winfield, alabama, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (21, N'beck10', N'123', N'Beck 10', N'1995', NULL, N'19', N'lyon, rhone, france', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (22, N'gullit1', N'123', N'Gullit 1', N'2005', NULL, N'20', N'calgary, alberta, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (23, N'gullit2', N'123', N'Gullit 2', N'1979', NULL, N'21', N'oakland, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (24, N'gullit3', N'123', N'Gullit3', NULL, NULL, N'22', N'san diago, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (25, N'gullit4', N'123', N'Gullit 4', NULL, NULL, N'23', N'plano, texas, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (26, N'gullit5', N'123', N'Gullit 5', N'2002', NULL, N'24', N'madrid, n/a, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (27, N'gullit6', N'123', N'Gulit 6', N'1999', NULL, N'25', N'litchfield park, arizona, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (28, N'gullit7', N'123', N'Gullit 7', N'2009', NULL, N'26', N'pukekohe, auckland, new zealand', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (29, N'gullit8', N'123', N'Gullit 8', N'2004', NULL, N'27', N'tehran, tehran, iraq', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (30, N'gullit9', N'123', N'Gullit 9', N'1987', NULL, N'28', N'silver spring, maryland, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (31, N'gullit10', N'123', N'Gullit 10', N'2000', NULL, N'29', N'kronberg, hessen, ghana', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (32, N'nesta1', N'123', N'Nesta 1', N'1999', NULL, N'30', N'roma, lazio, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (33, N'nesta2', N'123', N'Nesta 2', N'1977', NULL, N'31', N'derby, kansas, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (34, N'nesta3', N'123', N'Nesta 3', N'2001', NULL, N'32', N'berkshire, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (35, N'nesta4', N'123', N'Nesta 4', N'1965', NULL, N'33', N'west haverstraw, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (36, N'nesta5', N'123', N'Nesta 5', N'1985', NULL, N'34', N'roswell, georgia, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (37, N'nesta6', N'123', N'Nesta 6', NULL, NULL, N'35', N'ames, iowa, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (38, N'nesta7', N'123', N'Nesta 7', N'2003', NULL, N'36', N'seattle, washington, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (39, N'nesta8', N'123', N'Nesta 8', NULL, NULL, N'37', N'mcas futenma fpo ap okinawa, n/a, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (40, N'nesta9', N'123', N'Nesta 9', N'1999', NULL, N'38', N'baton rouge, louisiana, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (41, N'nesta10', N'123', N'Nesta 10', NULL, NULL, N'39', N'kandy, central, sri lanka', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (42, N'kaka1', N'123', N'Kaka 1', N'2000', NULL, N'40', N'porto, porto, portugal', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (43, N'kaka2', N'123', N'Kaka 2', N'1988', NULL, N'41', N'turner, oregon, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (44, N'kaka3', N'123', N'Kaka 3', N'2001', NULL, N'42', N'augsburg, bayern, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (45, N'kaka4', N'123', N'Kaka 4', N'1999', NULL, N'43', N'lleida, lleida, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (46, N'kaka5', N'123', N'Kaka 5', N'1961', NULL, N'44', N'elgin, texas, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (47, N'kaka6', N'123', N'Kaka 6', N'1999', NULL, N'45', N'mumbai, maharashtra, india', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (48, N'kaka7', N'123', N'Kaka 7', N'2010', NULL, N'46', N'tananger, rogaland, norway', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (49, N'kaka8', N'123', N'Kaka 8', N'2000', NULL, N'47', N'boston, massachusetts, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (50, N'kaka9', N'123', N'Kaka 9', NULL, NULL, N'48', N'kalgary, alberta, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (51, N'kaka10', N'123', N'Kaka 10', NULL, NULL, N'49', N'snohomish, washington, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (52, N'theo1', N'123', N'Theo 1', N'1999', NULL, N'50', N'victoria, british columbia, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (53, N'theo2', N'123', N'Theo 2', NULL, NULL, N'51', N'chicago, illinois, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (54, N'theo3', N'123', N'Theo 3', NULL, NULL, N'52', N'nyc, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (55, N'theo4', N'123', N'Theo 4', N'2005', NULL, N'53', N'stockton, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (56, N'theo5', N'123', N'Theo 5', NULL, NULL, N'54', N'moscow, yukon territory, russia', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (57, N'theo6', N'123', N'Theo 6', N'2006', NULL, N'55', N'porto, v.n.gaia, portugal', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (58, N'theo7', N'123', N'Theo 7', NULL, NULL, N'56', N'farnborough, hants, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (59, N'theo8', N'123', N'Theo 8', N'1962', NULL, N'57', N'santa monica, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (60, N'theo9', N'123', N'Theo 9', NULL, NULL, N'58', N'washington, dc, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (61, N'theo10', N'123', N'Theo 10', NULL, NULL, N'59', N'timmins, ontario, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (62, N'theo11', N'123', N'Theo 11', NULL, NULL, N'60', N'germantown, tennessee, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (63, N'theo12', N'123', N'Theo 12', N'1997', NULL, N'61', N'albacete, wisconsin, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (64, N'theo13', N'123', N'Theo 13', N'2009', NULL, N'62', N'melbourne, victoria, australia', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (65, N'theo14', N'123', N'Theo 14', NULL, NULL, N'63', N'fort bragg, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (66, N'theo15', N'123', N'Theo 15', N'1997', NULL, N'64', N'barcelona, barcelona, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (67, N'theo16', N'123', N'Theo 16', NULL, NULL, N'65', N'mediapolis, iowa, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (68, N'theo17', N'123', N'Theo 17', NULL, NULL, N'66', N'calgary, alberta, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (69, N'theo18', N'123', N'Theo 18', NULL, NULL, N'67', N'albuquerque, new mexico, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (70, N'theo19', N'123', N'Theo 19', NULL, NULL, N'68', N'chesapeake, virginia, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (71, N'theo20', N'123', N'Theo 20', N'1998', NULL, N'69', N'rio de janeiro, rio de janeiro, brazil', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (72, N'theo21', N'123', N'Theo 21', N'2009', NULL, N'70', N'weston, ,', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (73, N'theo22', N'123', N'Theo 22', N'2004', NULL, N'71', N'langhorne, pennsylvania, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (74, N'theo23', N'123', N'Theo 23', N'1977', NULL, N'72', N'ferrol / spain, alabama, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (75, N'theo24', N'123', N'Theo 24', NULL, NULL, N'73', N'erfurt, thueringen, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (76, N'theo25', N'123', N'Theo 25', NULL, NULL, N'74', N'philadelphia, pennsylvania, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (77, N'theo26', N'123', N'Theo 26', N'2004', NULL, N'75', N'cologne, nrw, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (78, N'theo27', N'123', N'Theo 27', N'1968', NULL, N'76', N'oakland, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (79, N'theo28', N'123', N'Theo 28', NULL, NULL, N'77', N'bellevue, washington, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (80, N'theo29', N'123', N'Theo 29', N'1991', NULL, N'78', N'chicago, illinois, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (81, N'theo30', N'123', N'Theo 30', N'1999', NULL, N'79', N'freiburg, baden-wuerttemberg, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (82, N'theo31', N'123', N'Theo 31', N'2004', NULL, N'80', N'cuernavaca, alabama, mexico', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (83, N'theo32', N'123', N'Theo 32', N'1999', NULL, N'81', N'anchorage, alaska, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (84, N'theo33', N'123', N'Theo 33', N'2003', NULL, N'82', N'shanghai, n/a, china', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (85, N'theo34', N'123', N'Theo 34', NULL, NULL, N'83', N'portland, oregon, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (86, N'theo35', N'123', N'Theo 35', N'1989', NULL, N'84', N'costa mesa, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (87, N'theo36', N'123', N'Theo 36', NULL, NULL, N'85', N'london, england, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (88, N'theo37', N'123', N'Theo 37', N'2006', NULL, N'86', N'grafton, wisconsin, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (89, N'theo38', N'123', N'Theo 38', N'1999', NULL, N'87', N'montreal, quebec, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (90, N'theo39', N'123', N'Theo 39', N'2000', NULL, N'88', N'san sebastian, n/a, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (91, N'theo40', N'123', N'Theo 40', N'1989', NULL, N'89', N'viterbo, lazio, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (92, N'theo41', N'123', N'Theo 41', NULL, NULL, N'90', N'cary, north carolina, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (93, N'theo42', N'123', N'Theo 42', N'1991', NULL, N'91', N'tonawanda, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (94, N'theo43', N'123', N'Theo 43', N'2009', NULL, N'92', N'santee, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (95, N'theo44', N'123', N'Theo 44', N'2006', NULL, N'93', N'appleton, wisconsin, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (96, N'theo45', N'123', N'Theo 45', NULL, NULL, N'94', N'méxico, méxico city, distrito federal', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (97, N'theo46', N'123', N'Theo 46', N'1972', NULL, N'95', N'black mountain, north carolina, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (98, N'theo47', N'123', N'Theo 47', NULL, NULL, N'96', N'berlin, n/a, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (99, N'theo48', N'123', N'Theo 48', N'1992', NULL, N'97', N'heidelberg, baden-wuerttemberg, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (100, N'theo49', N'123', N'Theo 49', N'2002', NULL, N'98', N'vicenza, veneto, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (101, N'theo50', N'123', N'Theo 50', NULL, NULL, N'99', N'chicago, illinois, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (102, N'theo51', N'123', N'Theo 51', NULL, NULL, N'100', N'rome, rome, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (103, N'theo52', N'123', N'Theo 52', N'2006', NULL, N'101', N'london, england, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (104, N'theo53', N'123', N'Theo 53', N'1989', NULL, N'102', N'renton, washington, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (105, N'theo54', N'123', N'Theo 54', NULL, NULL, N'103', N'braunschweig, niedersachsen, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (106, N'theo55', N'123', N'Theo 55', NULL, NULL, N'104', N'tacoma, washington, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (107, N'theo56', N'123', N'Theo 56', N'1979', NULL, N'105', N'eubank, kentucky, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (108, N'theo57', N'123', N'Theo 57', NULL, NULL, N'106', N'calgary, alberta, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (109, N'theo58', N'123', N'Theo 58', N'1999', NULL, N'107', N'cheyenne, wyoming, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (110, N'theo59', N'123', N'Theo 59', NULL, NULL, N'108', N'roma, lazio, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (111, N'theo60', N'123', N'Theo 60', NULL, NULL, N'109', N'edmonton, alberta, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (112, N'theo61', N'123', N'Theo 61', N'2000', NULL, N'110', N'asheville, north carolina, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (113, N'theo62', N'123', N'Theo 62', NULL, NULL, N'111', N'trieste, friuli venezia giulia, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (114, N'theo63', N'123', N'Theo 63', N'1993', NULL, N'112', N'winfield, alabama, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (115, N'theo64', N'123', N'Theo 64', NULL, NULL, N'113', N'kennewick, washington, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (116, N'theo65', N'123', N'Theo 65', N'1966', NULL, N'114', N'nyack, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (117, N'theo66', N'123', N'Theo 66', N'1991', NULL, N'115', N'lyon, rhone, france', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (118, N'theo67', N'123', N'Theo 67', NULL, NULL, N'116', N'n/a, n/a, australia', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (119, N'theo68', N'123', N'Theo 68', N'1993', NULL, N'117', N'warman, saskatchewan, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (120, N'theo69', N'123', N'Theo 69', N'1980', NULL, N'118', N'framingham, massachusetts, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (121, N'theo70', N'123', N'Theo 70', NULL, NULL, N'119', N'montreal, quebec, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (122, N'theo71', N'123', N'Theo 71', NULL, NULL, N'120', N'vancouver, british columbia, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (123, N'theo72', N'123', N'Theo 72', N'1979', NULL, N'121', N'rochester, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (124, N'theo73', N'123', N'Theo 73', N'1999', NULL, N'122', N'toronto, ontario, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (125, N'theo74', N'123', N'Theo 74', N'1989', NULL, N'123', N'gloucester, england, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (126, N'theo75', N'123', N'Theo 75', NULL, NULL, N'124', N'wentzville, missouri, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (127, N'theo76', N'123', N'Theo 76', N'1993', NULL, N'125', N'amsterdam, n/a, netherlands', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (128, N'theo77', N'123', N'Theo 77', N'1986', NULL, N'126', N'long beach, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (129, N'theo78', N'123', N'Theo 78', NULL, NULL, N'127', N'charleston, south carolina, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (130, N'theo79', N'123', N'Theo 79', NULL, NULL, N'128', N'vancouver, british columbia, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (131, N'theo80', N'123', N'Theo 80', N'2005', NULL, N'129', N'oakland, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (132, N'theo81', N'123', N'Theo 81', N'2003', NULL, N'130', N'ottawa, ontario, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (133, N'theo82', N'123', N'Theo 82', NULL, NULL, N'131', N'etobicoke, ontario, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (134, N'theo83', N'123', N'Theo 83', NULL, NULL, N'132', N'santa cruz, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (135, N'theo84', N'123', N'Theo 84', NULL, NULL, N'133', N'del mar, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (136, N'theo85', N'123', N'Theo 85', NULL, NULL, N'134', N'eugene, oregon, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (137, N'theo86', N'123', N'Theo 86', NULL, NULL, N'135', N'san diago, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (138, N'theo87', N'123', N'Theo 87', N'1982', NULL, N'136', N'london, england, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (139, N'theo88', N'123', N'Theo 88', NULL, NULL, N'137', N'los angeles, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (140, N'theo89', N'123', N'Theo 89', NULL, NULL, N'138', N'richardson, texas, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (141, N'theo90', N'123', N'Theo 90', NULL, NULL, N'139', N'fayetteville, georgia, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (142, N'theo91', N'123', N'Theo 91', N'1969', NULL, N'140', N'plano, texas, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (143, N'theo92', N'123', N'Theo 92', N'1981', NULL, N'141', N'powhatan, virginia, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (144, N'theo93', N'123', N'Theo 93', NULL, NULL, N'142', N'toronto/newmarket, ,', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (145, N'theo94', N'123', N'Theo 94', N'2003', NULL, N'143', N'castellar del valles, barcelona, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (146, N'theo95', N'123', N'Theo 95', N'1973', NULL, N'144', N'eden, wisconsin, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (147, N'theo96', N'123', N'Theo 96', N'1984', NULL, N'145', N'tehran, tehran, iraq', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (148, N'theo97', N'123', N'Theo 97', NULL, NULL, N'146', N'grand island, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (149, N'theo98', N'123', N'Theo 98', NULL, NULL, N'147', N'helsinki, alaska, finland', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (150, N'theo99', N'123', N'Theo 99', NULL, NULL, N'148', N'mechanicsburg, pennsylvania, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (151, N'theo100', N'123', N'Theo 100', N'2004', NULL, N'149', N'pukekohe, auckland, new zealand', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (152, N'theo101', N'123', N'Theo 101', N'1981', NULL, N'150', N'franktown, colorado, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (153, N'theo102', N'123', N'Theo 102', N'1979', NULL, N'151', N'madrid, n/a, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (154, N'theo103', N'123', N'Theo 103', N'1997', NULL, N'152', N'nagpur, idaho, india', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (155, N'theo104', N'123', N'Theo 104', NULL, NULL, N'153', N'barcelona, n/a, spain', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (156, N'theo105', N'123', N'Theo 105', N'1970', NULL, N'154', N'litchfield park, arizona, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (157, N'theo106', N'123', N'Theo 106', N'1976', NULL, N'155', N'foxboro, massachusetts, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (158, N'theo107', N'123', N'Theo 107', N'1987', NULL, N'156', N'hull, england, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (159, N'theo108', N'123', N'Theo 108', NULL, NULL, N'157', N'rome, georgia, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (160, N'theo109', N'123', N'Theo 109', NULL, NULL, N'158', N'lethbridge, alberta, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (161, N'theo110', N'123', N'Theo 110', NULL, NULL, N'159', N'claremore, oklahoma, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (162, N'theo111', N'123', N'Theo 111', N'2003', NULL, N'160', N'muncie, indiana, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (163, N'theo112', N'123', N'Theo 112', NULL, NULL, N'161', N'peoira, illinois, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (164, N'theo113', N'123', N'Theo 113', N'1998', NULL, N'162', N'avintes, v.n. gaia, portugal', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (165, N'theo114', N'123', N'Theo 114', N'1991', NULL, N'163', N'mexico city, d.f., mexico', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (166, N'theo115', N'123', N'Theo 115', NULL, NULL, N'164', N'san francisco, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (167, N'theo116', N'123', N'Theo 116', N'1966', NULL, N'165', N'ligonier, pennsylvania, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (168, N'theo117', N'123', N'Theo 117', NULL, NULL, N'166', N'canton, ohio, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (169, N'theo118', N'123', N'Theo 118', NULL, NULL, N'167', N'burien, washington, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (170, N'theo119', N'123', N'Theo 119', N'1966', NULL, N'168', N'ann arbor, michigan, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (171, N'theo120', N'123', N'Theo 120', N'1995', NULL, N'169', N'kronberg, hessen, ghana', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (172, N'theo121', N'123', N'Theo 121', N'1988', NULL, N'170', N'huntington, vermont, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (173, N'theo122', N'123', N'Theo 122', N'2010', NULL, N'171', N'villeneuve d`ascq, nord, france', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (174, N'theo123', N'123', N'Theo 123', NULL, NULL, N'172', N'rochester, minnesota, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (175, N'theo124', N'123', N'Theo 124', NULL, NULL, N'173', N'charlotte, north carolina, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (176, N'theo125', N'123', N'Theo 125', N'1999', NULL, N'174', N'ann arbor, michigan, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (177, N'theo126', N'123', N'Theo 126', N'1965', NULL, N'175', N'papillion, nebraska, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (178, N'theo127', N'123', N'Theo 127', N'1974', NULL, N'176', N'lansing, michigan, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (179, N'theo128', N'123', N'Theo 128', N'1999', NULL, N'177', N'eindhoven, noord-brabant, netherlands', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (180, N'theo129', N'123', N'Theo 129', N'1995', NULL, N'178', N'geneva, ge, switzerland', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (181, N'theo130', N'123', N'Theo 130', NULL, NULL, N'179', N'allison park, pennsylvania, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (182, N'theo131', N'123', N'Theo 131', N'1976', NULL, N'180', N'bloomington, minnesota, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (183, N'theo132', N'123', N'Theo 132', NULL, NULL, N'181', N'roma, lazio, italy', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (184, N'theo133', N'123', N'Theo 133', NULL, NULL, N'182', N'chapel hill, north carolina, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (185, N'theo134', N'123', N'Theo 134', N'1985', NULL, N'183', N'silver spring, maryland, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (186, N'theo135', N'123', N'Theo 135', N'1978', NULL, N'184', N'jacksonville, florida, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (187, N'theo136', N'123', N'Theo 136', NULL, NULL, N'185', N'canberra, australian capital territory, australia', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (188, N'theo137', N'123', N'Theo 137', NULL, NULL, N'186', N'berkshire, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (189, N'theo138', N'123', N'Theo 138', NULL, NULL, N'187', N'sacramento, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (190, N'theo139', N'123', N'Theo 139', NULL, NULL, N'188', N'vancouver, british columbia, canada', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (191, N'theo140', N'123', N'Theo 140', N'1995', NULL, N'189', N'santa, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (192, N'theo141', N'123', N'Theo 141', N'1988', NULL, N'190', N'baltimore, maryland, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (193, N'theo142', N'123', N'Theo 142', N'1999', NULL, N'191', N'kappelrodeck, baden-wuerttemberg, germany', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (194, N'theo143', N'123', N'Theo 143', NULL, NULL, N'192', N'darien, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (195, N'theo144', N'123', N'Theo 144', NULL, NULL, N'193', N'derby, kansas, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (196, N'theo145', N'123', N'Theo 145', N'1997', NULL, N'194', N'san francisco, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (197, N'theo146', N'123', N'Theo 146', N'1961', NULL, N'195', N'cape girardeau, missouri, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (198, N'theo147', N'123', N'Theo 147', NULL, NULL, N'196', N'inverness, scotland, united kingdom', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (199, N'theo148', N'123', N'Theo 148', NULL, NULL, N'197', N'la, california, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Pass], [HoTen], [NgaySinh], [Email], [SDT], [DiaChi], [Avatar], [RoleID], [DeXuat]) VALUES (200, N'theo149', N'123', N'Theo 149', NULL, NULL, N'198', N'west haverstraw, new york, usa', N'https://vnn-imgs-f.vgcloud.vn/2020/03/23/11/trend-avatar-12.jpg', 2, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_default_Status1]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CauTraLoi]  WITH CHECK ADD  CONSTRAINT [FK_CauTraLoi_CauHoi] FOREIGN KEY([IDCauHoi])
REFERENCES [dbo].[CauHoi] ([IDCauHoi])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CauTraLoi] CHECK CONSTRAINT [FK_CauTraLoi_CauHoi]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([IDDonHang])
REFERENCES [dbo].[DonHang] ([IDDonHang])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sach] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Sach] ([IDSach])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sach]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_Sach] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Sach] ([IDSach])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_Sach]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_Users]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Sach] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Sach] ([IDSach])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Sach]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Users]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_Users]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NXB] FOREIGN KEY([IDNXB])
REFERENCES [dbo].[NhaXuatBan] ([IDNXB])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NXB]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([IDTacGia])
REFERENCES [dbo].[TacGia] ([IDTacGia])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([IDTheLoai])
REFERENCES [dbo].[TheLoai] ([IDTheLoai])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
ALTER TABLE [dbo].[User_CauTraLoi]  WITH CHECK ADD  CONSTRAINT [FK_User_CauTraLoi_CauTraLoi] FOREIGN KEY([CauTraLoiId])
REFERENCES [dbo].[CauTraLoi] ([IDCauTraLoi])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[User_CauTraLoi] CHECK CONSTRAINT [FK_User_CauTraLoi_CauTraLoi]
GO
ALTER TABLE [dbo].[User_CauTraLoi]  WITH CHECK ADD  CONSTRAINT [FK_User_CauTraLoi_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[User_CauTraLoi] CHECK CONSTRAINT [FK_User_CauTraLoi_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  StoredProcedure [dbo].[GetChiTietGioHang]    Script Date: 11/4/2023 2:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetChiTietGioHang]
    @userID INT
AS
BEGIN
    SELECT s.Img1, s.Gia, c.GiaBanSp, c.SoLuong, t.TenTG, s.TieuDe, s.IDSach
    FROM ChiTietGioHang c
    INNER JOIN Sach s ON s.IDSach = c.IDSach
    INNER JOIN TacGia t ON t.IDTacGia = s.IDTacGia
    WHERE c.UserID = @userID;
END
GO
USE [master]
GO
ALTER DATABASE [BOOK_STORE] SET  READ_WRITE 
GO
