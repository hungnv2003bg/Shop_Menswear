USE [master]
GO
/****** Object:  Database [djxuyen1_itlab1]    Script Date: 14/12/2023 17:46:30 ******/
CREATE DATABASE [djxuyen1_itlab1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'djxuyen1_itlab1', FILENAME = N'D:\mssql\djxuyen1_itlab1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'djxuyen1_itlab1_log', FILENAME = N'D:\mssql\djxuyen1_itlab1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [djxuyen1_itlab1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [djxuyen1_itlab1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [djxuyen1_itlab1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET ARITHABORT OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [djxuyen1_itlab1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [djxuyen1_itlab1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [djxuyen1_itlab1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [djxuyen1_itlab1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [djxuyen1_itlab1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [djxuyen1_itlab1] SET  MULTI_USER 
GO
ALTER DATABASE [djxuyen1_itlab1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [djxuyen1_itlab1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [djxuyen1_itlab1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [djxuyen1_itlab1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [djxuyen1_itlab1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [djxuyen1_itlab1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [djxuyen1_itlab1] SET QUERY_STORE = OFF
GO
USE [djxuyen1_itlab1]
GO
/****** Object:  User [djxuyen1_qa]    Script Date: 14/12/2023 17:46:30 ******/
CREATE USER [djxuyen1_qa] FOR LOGIN [djxuyen1_qa] WITH DEFAULT_SCHEMA=[djxuyen1_qa]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [djxuyen1_qa]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [djxuyen1_qa]
GO
ALTER ROLE [db_datareader] ADD MEMBER [djxuyen1_qa]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [djxuyen1_qa]
GO
/****** Object:  Schema [djxuyen1_qa]    Script Date: 14/12/2023 17:46:30 ******/
CREATE SCHEMA [djxuyen1_qa]
GO
/****** Object:  Schema [djxuyen1_qa1]    Script Date: 14/12/2023 17:46:30 ******/
CREATE SCHEMA [djxuyen1_qa1]
GO
/****** Object:  Schema [djxuyen1_quan1]    Script Date: 14/12/2023 17:46:30 ******/
CREATE SCHEMA [djxuyen1_quan1]
GO
/****** Object:  Table [djxuyen1_qa1].[binhluandanhgia]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[binhluandanhgia](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[binhluan] [nvarchar](max) NULL,
	[hinhanh] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[so_sao] [int] NULL,
	[hoadonid] [bigint] NULL,
	[nguoidungid] [bigint] NULL,
	[sanphamchitietid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[chatlieu]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[chatlieu](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[machatlieu] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenchatlieu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[diachi]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[diachi](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[chitietdiachi] [nvarchar](max) NULL,
	[honguoinhan] [nvarchar](max) NULL,
	[huyen] [nvarchar](max) NULL,
	[huyenid] [varchar](255) NULL,
	[ladiachichinh] [bit] NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[nguoinhan] [nvarchar](max) NULL,
	[sodienthoai] [varchar](255) NULL,
	[tinh] [nvarchar](max) NULL,
	[tinhid] [varchar](255) NULL,
	[trangthai] [smallint] NULL,
	[xa] [nvarchar](max) NULL,
	[xaid] [varchar](255) NULL,
	[nguoidungid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[giohang]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[giohang](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[soluong] [int] NULL,
	[nguoimuaid] [bigint] NULL,
	[sanphamchitietid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[hinhanhsanpham]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[hinhanhsanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[linkhinhanh] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[sanphamid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[hoadon]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[hoadon](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ghichu] [nvarchar](max) NULL,
	[giatrihd] [float] NULL,
	[lydotuchoitra] [nvarchar](max) NULL,
	[mahoadon] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaygiao] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[phigiaohang] [float] NULL,
	[trangthai] [smallint] NULL,
	[diachigiaoid] [bigint] NULL,
	[nguoimuaid] [bigint] NULL,
	[nhanvienid] [bigint] NULL,
	[phuongthucthanhtoan] [bigint] NULL,
	[phuongthucvanchuyen] [bigint] NULL,
	[vouchergiamid] [bigint] NULL,
	[vouchergiaohangid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[hoadonchitiet]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[hoadonchitiet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dongia] [float] NULL,
	[ghichu] [nvarchar](max) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[soluong] [int] NULL,
	[soluongdoitra] [int] NULL,
	[trangthai] [int] NULL,
	[hoadonid] [bigint] NULL,
	[sanphamchitietid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[kichthuoc]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[kichthuoc](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[makichthuoc] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenkichthuoc] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[mausac]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[mausac](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[mamau] [varchar](255) NULL,
	[mamaucss] [nvarchar](max) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenmau] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[nguoidung]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[nguoidung](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[anhdaidien] [varchar](255) NULL,
	[diem] [int] NULL,
	[email] [nvarchar](max) NULL,
	[gioitinh] [bit] NULL,
	[ho] [nvarchar](max) NULL,
	[manguoidung] [varchar](255) NULL,
	[matkhau] [nvarchar](max) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[sodienthoai] [varchar](255) NULL,
	[ten] [nvarchar](max) NULL,
	[trangthai] [smallint] NULL,
	[rankkhachhang] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[nguoidungvoucher]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[nguoidungvoucher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[giatrigiam] [float] NULL,
	[hansudung] [datetime2](6) NULL,
	[loaigiam] [smallint] NULL,
	[trangthai] [smallint] NULL,
	[nguoidungid] [bigint] NULL,
	[voucherid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[nhomsanpham]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[nhomsanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[maloai] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenthietke] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[phuongthucthanhtoan]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[phuongthucthanhtoan](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[maphuongthuc] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenphuongthuc] [nvarchar](max) NULL,
	[trangthai] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[phuongthucvanchuyen]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[phuongthucvanchuyen](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[maphuongthuc] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenphuongthuc] [nvarchar](max) NULL,
	[trangthai] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[quyen]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[quyen](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[maquyen] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenquyen] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[quyennguoidung]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[quyennguoidung](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[nguoidungid] [bigint] NULL,
	[quyenid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[rankkhachhang]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[rankkhachhang](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[marank] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[phantramgiam] [float] NULL,
	[tenrank] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[sanpham]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[sanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[giaban] [float] NULL,
	[gianhap] [float] NULL,
	[hinhanh1] [varchar](255) NULL,
	[hinhanh2] [varchar](255) NULL,
	[masanpham] [varchar](255) NULL,
	[mota] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[soluongdaban] [int] NULL,
	[soluongloi] [int] NULL,
	[soluongton] [int] NULL,
	[soluongtrahang] [int] NULL,
	[tensanpham] [nvarchar](max) NULL,
	[trangthai] [smallint] NULL,
	[chatlieuid] [bigint] NULL,
	[nhomsanphamid] [bigint] NULL,
	[thietkeid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[sanphamchitiet]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[sanphamchitiet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[giaban] [float] NULL,
	[gianhap] [float] NULL,
	[hinhanh] [varchar](255) NULL,
	[masanpham] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[soluongdaban] [int] NULL,
	[soluongloi] [int] NULL,
	[soluongton] [int] NULL,
	[soluongtrahang] [int] NULL,
	[tensanpham] [nvarchar](max) NULL,
	[trangthai] [smallint] NULL,
	[kichthuocid] [bigint] NULL,
	[mausacid] [bigint] NULL,
	[sanphamid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[sanphamsukien]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[sanphamsukien](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[sanphamid] [bigint] NULL,
	[sukiengiamgiaid] [bigint] NULL,
	[trangthai] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[sanphamyeuthich]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[sanphamyeuthich](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[nguoidungid] [bigint] NULL,
	[sanphamchitietid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[sukiengiamgia]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[sukiengiamgia](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[giatrigiam] [float] NULL,
	[logosukien] [varchar](255) NULL,
	[mota] [nvarchar](max) NULL,
	[ngaybatdau] [datetime2](6) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngayketthuc] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tensukien] [nvarchar](max) NULL,
	[trangthai] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[thietke]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[thietke](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[mathietke] [varchar](255) NULL,
	[ngaycapnhat] [datetime2](6) NULL,
	[ngaytao] [datetime2](6) NULL,
	[tenthietke] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [djxuyen1_qa1].[voucher]    Script Date: 14/12/2023 17:46:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [djxuyen1_qa1].[voucher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[giatrigiam] [float] NULL,
	[loaigiam] [smallint] NULL,
	[mavoucher] [varchar](255) NULL,
	[ngaycapnhat] [date] NULL,
	[ngayketthuc] [datetime2](6) NULL,
	[ngaytao] [date] NULL,
	[soluong] [int] NULL,
	[tenvoucher] [nvarchar](max) NULL,
	[trangthai] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_r2wwiw77ho35yrdkqowt0uv2j]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_r2wwiw77ho35yrdkqowt0uv2j] ON [djxuyen1_qa1].[hoadon]
(
	[mahoadon] ASC
)
WHERE ([mahoadon] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_jqpv4jwmraft2ltoef2oer5v7]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_jqpv4jwmraft2ltoef2oer5v7] ON [djxuyen1_qa1].[kichthuoc]
(
	[makichthuoc] ASC
)
WHERE ([makichthuoc] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ee30ljuyo1ua5mkr831aq24fu]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_ee30ljuyo1ua5mkr831aq24fu] ON [djxuyen1_qa1].[mausac]
(
	[mamau] ASC
)
WHERE ([mamau] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_lod8o3evosk7dk1ebr4etf5kh]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_lod8o3evosk7dk1ebr4etf5kh] ON [djxuyen1_qa1].[nguoidung]
(
	[manguoidung] ASC
)
WHERE ([manguoidung] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_71oxhyxms8x9x90m2hv50v6qo]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_71oxhyxms8x9x90m2hv50v6qo] ON [djxuyen1_qa1].[phuongthucthanhtoan]
(
	[maphuongthuc] ASC
)
WHERE ([maphuongthuc] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_kc9e7ui585f3yb3q8qqesf7s9]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_kc9e7ui585f3yb3q8qqesf7s9] ON [djxuyen1_qa1].[phuongthucvanchuyen]
(
	[maphuongthuc] ASC
)
WHERE ([maphuongthuc] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_79hh334rg067o8jax8b6fkste]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_79hh334rg067o8jax8b6fkste] ON [djxuyen1_qa1].[quyen]
(
	[maquyen] ASC
)
WHERE ([maquyen] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_1upujjlofr94jfmn9jc1abwii]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_1upujjlofr94jfmn9jc1abwii] ON [djxuyen1_qa1].[rankkhachhang]
(
	[marank] ASC
)
WHERE ([marank] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_44kgwuma162pst827ol5ewoo7]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_44kgwuma162pst827ol5ewoo7] ON [djxuyen1_qa1].[sanpham]
(
	[masanpham] ASC
)
WHERE ([masanpham] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_1p5orb8qxhntrdpcw4tfu10g3]    Script Date: 14/12/2023 17:46:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_1p5orb8qxhntrdpcw4tfu10g3] ON [djxuyen1_qa1].[voucher]
(
	[mavoucher] ASC
)
WHERE ([mavoucher] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [djxuyen1_qa1].[binhluandanhgia]  WITH CHECK ADD  CONSTRAINT [FK4ynwvs7cqusvxv5jd8x6qc35g] FOREIGN KEY([hoadonid])
REFERENCES [djxuyen1_qa1].[hoadon] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[binhluandanhgia] CHECK CONSTRAINT [FK4ynwvs7cqusvxv5jd8x6qc35g]
GO
ALTER TABLE [djxuyen1_qa1].[binhluandanhgia]  WITH CHECK ADD  CONSTRAINT [FKg05kqj25bpsek8c41xf0x5xnk] FOREIGN KEY([nguoidungid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[binhluandanhgia] CHECK CONSTRAINT [FKg05kqj25bpsek8c41xf0x5xnk]
GO
ALTER TABLE [djxuyen1_qa1].[binhluandanhgia]  WITH CHECK ADD  CONSTRAINT [FKsi5y24dxvs9k9pda0u04c34cq] FOREIGN KEY([sanphamchitietid])
REFERENCES [djxuyen1_qa1].[sanphamchitiet] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[binhluandanhgia] CHECK CONSTRAINT [FKsi5y24dxvs9k9pda0u04c34cq]
GO
ALTER TABLE [djxuyen1_qa1].[diachi]  WITH CHECK ADD  CONSTRAINT [FKa24t4sr6o4f2kbc84c81h4rfh] FOREIGN KEY([nguoidungid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[diachi] CHECK CONSTRAINT [FKa24t4sr6o4f2kbc84c81h4rfh]
GO
ALTER TABLE [djxuyen1_qa1].[giohang]  WITH CHECK ADD  CONSTRAINT [FKeauefvq1ujedyk94gk8ukdare] FOREIGN KEY([sanphamchitietid])
REFERENCES [djxuyen1_qa1].[sanphamchitiet] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[giohang] CHECK CONSTRAINT [FKeauefvq1ujedyk94gk8ukdare]
GO
ALTER TABLE [djxuyen1_qa1].[giohang]  WITH CHECK ADD  CONSTRAINT [FKofc2hnv6mlvfoimkicn2obobo] FOREIGN KEY([nguoimuaid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[giohang] CHECK CONSTRAINT [FKofc2hnv6mlvfoimkicn2obobo]
GO
ALTER TABLE [djxuyen1_qa1].[hinhanhsanpham]  WITH CHECK ADD  CONSTRAINT [FKpbjf5rmk9ddn7dcjmfdsd68d0] FOREIGN KEY([sanphamid])
REFERENCES [djxuyen1_qa1].[sanpham] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hinhanhsanpham] CHECK CONSTRAINT [FKpbjf5rmk9ddn7dcjmfdsd68d0]
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK15333u12lwcn494ljbic0o3qu] FOREIGN KEY([diachigiaoid])
REFERENCES [djxuyen1_qa1].[diachi] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadon] CHECK CONSTRAINT [FK15333u12lwcn494ljbic0o3qu]
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK2ouduaqu8jad6mon2e8p0c9d0] FOREIGN KEY([vouchergiamid])
REFERENCES [djxuyen1_qa1].[nguoidungvoucher] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadon] CHECK CONSTRAINT [FK2ouduaqu8jad6mon2e8p0c9d0]
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK7mt1jb1ccii5nm4qd2j1feggl] FOREIGN KEY([nguoimuaid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadon] CHECK CONSTRAINT [FK7mt1jb1ccii5nm4qd2j1feggl]
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK8cttgxvuv0ejnqa3tke18alrg] FOREIGN KEY([nhanvienid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadon] CHECK CONSTRAINT [FK8cttgxvuv0ejnqa3tke18alrg]
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD  CONSTRAINT [FKcoxjvstgiw1i2c6w14cbt7ct6] FOREIGN KEY([phuongthucvanchuyen])
REFERENCES [djxuyen1_qa1].[phuongthucvanchuyen] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadon] CHECK CONSTRAINT [FKcoxjvstgiw1i2c6w14cbt7ct6]
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD  CONSTRAINT [FKi1sx8e09wy8ihc23bd7h2jj2m] FOREIGN KEY([phuongthucthanhtoan])
REFERENCES [djxuyen1_qa1].[phuongthucthanhtoan] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadon] CHECK CONSTRAINT [FKi1sx8e09wy8ihc23bd7h2jj2m]
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD  CONSTRAINT [FKnko4iwsmexqxn3g1yfryxcknr] FOREIGN KEY([vouchergiaohangid])
REFERENCES [djxuyen1_qa1].[nguoidungvoucher] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadon] CHECK CONSTRAINT [FKnko4iwsmexqxn3g1yfryxcknr]
GO
ALTER TABLE [djxuyen1_qa1].[hoadonchitiet]  WITH CHECK ADD  CONSTRAINT [FK12vjk4o824bhfmyamr5tqgykg] FOREIGN KEY([hoadonid])
REFERENCES [djxuyen1_qa1].[hoadon] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadonchitiet] CHECK CONSTRAINT [FK12vjk4o824bhfmyamr5tqgykg]
GO
ALTER TABLE [djxuyen1_qa1].[hoadonchitiet]  WITH CHECK ADD  CONSTRAINT [FK5yijkobdxarutpee9jyr1ctj5] FOREIGN KEY([sanphamchitietid])
REFERENCES [djxuyen1_qa1].[sanphamchitiet] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[hoadonchitiet] CHECK CONSTRAINT [FK5yijkobdxarutpee9jyr1ctj5]
GO
ALTER TABLE [djxuyen1_qa1].[nguoidung]  WITH CHECK ADD  CONSTRAINT [FKe4ubbcnmrm149up3pq05u0csk] FOREIGN KEY([rankkhachhang])
REFERENCES [djxuyen1_qa1].[rankkhachhang] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[nguoidung] CHECK CONSTRAINT [FKe4ubbcnmrm149up3pq05u0csk]
GO
ALTER TABLE [djxuyen1_qa1].[nguoidungvoucher]  WITH CHECK ADD  CONSTRAINT [FK34uviboggtrd90jdylcm8l737] FOREIGN KEY([voucherid])
REFERENCES [djxuyen1_qa1].[voucher] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[nguoidungvoucher] CHECK CONSTRAINT [FK34uviboggtrd90jdylcm8l737]
GO
ALTER TABLE [djxuyen1_qa1].[nguoidungvoucher]  WITH CHECK ADD  CONSTRAINT [FK50y4l9ey7kv7pqojrbrgb18kj] FOREIGN KEY([nguoidungid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[nguoidungvoucher] CHECK CONSTRAINT [FK50y4l9ey7kv7pqojrbrgb18kj]
GO
ALTER TABLE [djxuyen1_qa1].[quyennguoidung]  WITH CHECK ADD  CONSTRAINT [FK14g08erxuq9b8rh3y302coudy] FOREIGN KEY([quyenid])
REFERENCES [djxuyen1_qa1].[quyen] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[quyennguoidung] CHECK CONSTRAINT [FK14g08erxuq9b8rh3y302coudy]
GO
ALTER TABLE [djxuyen1_qa1].[quyennguoidung]  WITH CHECK ADD  CONSTRAINT [FKl6vgl1y8idpgb9u2ox3p9blrs] FOREIGN KEY([nguoidungid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[quyennguoidung] CHECK CONSTRAINT [FKl6vgl1y8idpgb9u2ox3p9blrs]
GO
ALTER TABLE [djxuyen1_qa1].[sanpham]  WITH CHECK ADD  CONSTRAINT [FKf15d9oo8x2j6lo4hgwn0i6xpo] FOREIGN KEY([chatlieuid])
REFERENCES [djxuyen1_qa1].[chatlieu] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanpham] CHECK CONSTRAINT [FKf15d9oo8x2j6lo4hgwn0i6xpo]
GO
ALTER TABLE [djxuyen1_qa1].[sanpham]  WITH CHECK ADD  CONSTRAINT [FKfc4px4o7twe3n9gxq0m63pwh1] FOREIGN KEY([nhomsanphamid])
REFERENCES [djxuyen1_qa1].[nhomsanpham] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanpham] CHECK CONSTRAINT [FKfc4px4o7twe3n9gxq0m63pwh1]
GO
ALTER TABLE [djxuyen1_qa1].[sanpham]  WITH CHECK ADD  CONSTRAINT [FKom3mqb43jp5lmavo1l1kcjfwy] FOREIGN KEY([thietkeid])
REFERENCES [djxuyen1_qa1].[thietke] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanpham] CHECK CONSTRAINT [FKom3mqb43jp5lmavo1l1kcjfwy]
GO
ALTER TABLE [djxuyen1_qa1].[sanphamchitiet]  WITH CHECK ADD  CONSTRAINT [FK39gtj21t270x3y9tbsj89bfcd] FOREIGN KEY([sanphamid])
REFERENCES [djxuyen1_qa1].[sanpham] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanphamchitiet] CHECK CONSTRAINT [FK39gtj21t270x3y9tbsj89bfcd]
GO
ALTER TABLE [djxuyen1_qa1].[sanphamchitiet]  WITH CHECK ADD  CONSTRAINT [FKkb8vvbnnh7uhd0tyiw5u3e97p] FOREIGN KEY([kichthuocid])
REFERENCES [djxuyen1_qa1].[kichthuoc] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanphamchitiet] CHECK CONSTRAINT [FKkb8vvbnnh7uhd0tyiw5u3e97p]
GO
ALTER TABLE [djxuyen1_qa1].[sanphamchitiet]  WITH CHECK ADD  CONSTRAINT [FKs7dpxb5o45wjvslo6uxfbkg5o] FOREIGN KEY([mausacid])
REFERENCES [djxuyen1_qa1].[mausac] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanphamchitiet] CHECK CONSTRAINT [FKs7dpxb5o45wjvslo6uxfbkg5o]
GO
ALTER TABLE [djxuyen1_qa1].[sanphamsukien]  WITH CHECK ADD  CONSTRAINT [FKblhcuourtqujxv4aw9aanr6d4] FOREIGN KEY([sanphamid])
REFERENCES [djxuyen1_qa1].[sanpham] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanphamsukien] CHECK CONSTRAINT [FKblhcuourtqujxv4aw9aanr6d4]
GO
ALTER TABLE [djxuyen1_qa1].[sanphamsukien]  WITH CHECK ADD  CONSTRAINT [FKjj2ra0t2k5c0k2pryc4ji70ev] FOREIGN KEY([sukiengiamgiaid])
REFERENCES [djxuyen1_qa1].[sukiengiamgia] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanphamsukien] CHECK CONSTRAINT [FKjj2ra0t2k5c0k2pryc4ji70ev]
GO
ALTER TABLE [djxuyen1_qa1].[sanphamyeuthich]  WITH CHECK ADD  CONSTRAINT [FK2jaa6scfmv6lovhl75sbk2msx] FOREIGN KEY([sanphamchitietid])
REFERENCES [djxuyen1_qa1].[sanphamchitiet] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanphamyeuthich] CHECK CONSTRAINT [FK2jaa6scfmv6lovhl75sbk2msx]
GO
ALTER TABLE [djxuyen1_qa1].[sanphamyeuthich]  WITH CHECK ADD  CONSTRAINT [FKqwramfgpqinix3s2fojyv9wbb] FOREIGN KEY([nguoidungid])
REFERENCES [djxuyen1_qa1].[nguoidung] ([id])
GO
ALTER TABLE [djxuyen1_qa1].[sanphamyeuthich] CHECK CONSTRAINT [FKqwramfgpqinix3s2fojyv9wbb]
GO
ALTER TABLE [djxuyen1_qa1].[diachi]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(1)))
GO
ALTER TABLE [djxuyen1_qa1].[hoadon]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(10)))
GO
ALTER TABLE [djxuyen1_qa1].[nguoidung]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(1)))
GO
ALTER TABLE [djxuyen1_qa1].[nguoidungvoucher]  WITH CHECK ADD CHECK  (([loaigiam]>=(0) AND [loaigiam]<=(1)))
GO
ALTER TABLE [djxuyen1_qa1].[nguoidungvoucher]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(2)))
GO
ALTER TABLE [djxuyen1_qa1].[phuongthucthanhtoan]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(2)))
GO
ALTER TABLE [djxuyen1_qa1].[phuongthucvanchuyen]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(2)))
GO
ALTER TABLE [djxuyen1_qa1].[sanpham]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(3)))
GO
ALTER TABLE [djxuyen1_qa1].[sanphamchitiet]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(1)))
GO
ALTER TABLE [djxuyen1_qa1].[sanphamsukien]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(1)))
GO
ALTER TABLE [djxuyen1_qa1].[sukiengiamgia]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(2)))
GO
ALTER TABLE [djxuyen1_qa1].[voucher]  WITH CHECK ADD CHECK  (([loaigiam]>=(0) AND [loaigiam]<=(1)))
GO
ALTER TABLE [djxuyen1_qa1].[voucher]  WITH CHECK ADD CHECK  (([trangthai]>=(0) AND [trangthai]<=(1)))
GO
USE [master]
GO
ALTER DATABASE [djxuyen1_itlab1] SET  READ_WRITE 
GO
