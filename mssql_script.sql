USE [master]
GO
/****** Object:  Database [db_oto_servis]    Script Date: 9.11.2021 21:56:41 ******/
CREATE DATABASE [db_oto_servis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_proje2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_proje2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_proje2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_proje2_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_oto_servis] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_oto_servis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_oto_servis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_oto_servis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_oto_servis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_oto_servis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_oto_servis] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_oto_servis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_oto_servis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_oto_servis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_oto_servis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_oto_servis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_oto_servis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_oto_servis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_oto_servis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_oto_servis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_oto_servis] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_oto_servis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_oto_servis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_oto_servis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_oto_servis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_oto_servis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_oto_servis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_oto_servis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_oto_servis] SET RECOVERY FULL 
GO
ALTER DATABASE [db_oto_servis] SET  MULTI_USER 
GO
ALTER DATABASE [db_oto_servis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_oto_servis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_oto_servis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_oto_servis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_oto_servis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_oto_servis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_oto_servis', N'ON'
GO
ALTER DATABASE [db_oto_servis] SET QUERY_STORE = OFF
GO
USE [db_oto_servis]
GO
/****** Object:  User [admin]    Script Date: 9.11.2021 21:56:41 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[tb_Arac_Cinsi]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Arac_Cinsi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Arac_Cinsi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Arac_Foto]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Arac_Foto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Arac_ID] [int] NULL,
	[Fotograf_ad] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Arac_Foto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Arac_Giris_Cikis]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Arac_Giris_Cikis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Giris_Tarih] [nvarchar](50) NULL,
	[Teslim_Eden_Ad] [nvarchar](max) NULL,
	[Teslim_Eden_Tc] [nvarchar](11) NULL,
	[Teslim_Eden_Gsm] [nvarchar](20) NULL,
	[Teslim_Alan_Personel_ID] [int] NULL,
	[Cikis_Tarih] [nvarchar](50) NULL,
	[Teslim_Alan_Ad] [nvarchar](max) NULL,
	[Teslim_Alan_Tc] [nvarchar](11) NULL,
	[Teslim_Alan_Gsm] [nvarchar](20) NULL,
	[Teslim_Eden_Personel_ID] [int] NULL,
	[Arac_ID] [int] NULL,
	[Servis_Tip_ID] [int] NULL,
 CONSTRAINT [PK_tb_Arac_Giris_Cikis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Arac_Karti]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Arac_Karti](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Motor_No] [nvarchar](25) NULL,
	[Sase_No] [nvarchar](25) NULL,
	[Plaka] [nvarchar](15) NULL,
	[Renk] [nvarchar](max) NULL,
	[Arac_Marka] [nvarchar](80) NULL,
	[Arac_Model] [nvarchar](80) NULL,
	[Model_Yil] [nvarchar](100) NULL,
	[Arac_KM] [nvarchar](100) NULL,
	[Sigorta_Bitis] [datetime] NULL,
	[Tr_Cikis_Tarih] [nvarchar](50) NULL,
	[Servis_Durum] [nvarchar](50) NULL,
	[Istek_Sikayet] [nvarchar](max) NULL,
	[Servis_Tipi_ID] [int] NULL,
	[Personel_ID] [int] NULL,
	[Arac_Cinsi_ID] [int] NULL,
	[Cari_ID] [int] NULL,
	[Genel_Bilgiler_ID] [int] NULL,
	[Fason_İscilik_ID] [int] NULL,
	[Vergi_Indırım_ID] [int] NULL,
	[Kalibrasyon_Bilgileri_ID] [int] NULL,
	[LPG_Bilgileri_ID] [int] NULL,
	[Arac_Giris_Cikis_ID] [int] NULL,
	[Stok_ID] [int] NULL,
	[Arac_Tip_ID] [int] NULL,
	[Yakit_Tur_ID] [int] NULL,
	[Servistemi] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Arac_Karti_Giris] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Arac_Tip]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Arac_Tip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Arac_Tip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Arac_Yakit_Tur]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Arac_Yakit_Tur](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Arac_Yakit_Tur] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Cari]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Cari](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
	[Gsm] [nvarchar](20) NULL,
	[Tc] [nvarchar](11) NULL,
	[Vergi_No] [nvarchar](30) NULL,
	[Vergi_Dairesi] [nvarchar](100) NULL,
	[Adres] [nvarchar](max) NULL,
	[Cari_Tur] [nvarchar](30) NULL,
	[Teslim_ID] [int] NULL,
	[Arac_ID] [int] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK__tb_arac__3214EC270F309C84] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Fason_Iscilik]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Fason_Iscilik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fason_Cari_Adi] [nvarchar](max) NULL,
	[Fason_Masraf_Adi] [nvarchar](max) NULL,
	[Net_Fiyat] [int] NULL,
	[Aciklama] [nvarchar](max) NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_tb_Fason_Iscilik] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Genel_Bilgiler]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Genel_Bilgiler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cinsi] [nvarchar](max) NULL,
	[Parca_Iscilik] [nvarchar](max) NULL,
	[Miktar] [nvarchar](max) NULL,
	[Birim_Fiyat] [nvarchar](max) NULL,
	[Tutar] [nvarchar](max) NULL,
	[Acıklama] [nvarchar](max) NULL,
	[Personel] [nvarchar](max) NULL,
	[Ise_Baslama_Tarihi] [nvarchar](max) NULL,
	[Istek_Sikayet] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Genel_Bilgiler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Kalibrasyon_Belge_Tur]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kalibrasyon_Belge_Tur](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Belge_Tur] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Kalibrasyon_Bilgileri]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kalibrasyon_Bilgileri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sertifika_No] [int] NULL,
	[Sensor_No] [int] NULL,
	[Test_Oncesi_KM] [int] NULL,
	[Test_Sonrası_KM] [int] NULL,
	[Uretim_Tarihi] [datetime] NULL,
	[Takograf_ID] [int] NULL,
	[Belge_Tur_ID] [int] NULL,
 CONSTRAINT [PK_tb_Kalibrasyon_Bilgileri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Kalibrasyon_Takograf]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kalibrasyon_Takograf](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Takograf] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Kasa]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kasa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KOD] [nvarchar](max) NULL,
	[Adi] [nvarchar](max) NULL,
	[Cinsi] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[Tarih] [datetime] NULL,
	[Bakiye] [int] NULL,
	[Arac_Karti_Giris_ID] [int] NULL,
 CONSTRAINT [PK_tb_Kasa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Lpg_Bilgileri]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lpg_Bilgileri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Regulator_ID] [int] NULL,
	[Tank_ID] [int] NULL,
	[Diger_ID] [int] NULL,
 CONSTRAINT [PK_tb_Lpg_Bilgileri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Lpg_Cins]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lpg_Cins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Cins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Lpg_Diger]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lpg_Diger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Belge_No] [int] NULL,
	[Gecerlilik_Tarih] [datetime] NULL,
 CONSTRAINT [PK_tb_LPG_Diger] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Lpg_Marka]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lpg_Marka](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Lpg_Marka] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Lpg_Regulator]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lpg_Regulator](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tip_Onay_No] [int] NULL,
	[Seri_No] [int] NULL,
	[İmalat_Tarih] [datetime] NULL,
	[Cins_ID] [int] NULL,
	[Marka_ID] [int] NULL,
	[Tip_ID] [int] NULL,
 CONSTRAINT [PK_tb_Regulator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Lpg_Tank]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lpg_Tank](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Litre] [int] NULL,
	[Cap] [int] NULL,
	[Agirlik] [int] NULL,
	[Seri_No] [int] NULL,
	[Imalat_Tarih] [datetime] NULL,
	[Son_Kullanma_Tarih] [datetime] NULL,
	[Cins_ID] [int] NULL,
	[Tip_ID] [int] NULL,
	[Marka_ID] [int] NULL,
 CONSTRAINT [PK_tb_Tank] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Lpg_Tip]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lpg_Tip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Lpg_Tip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Musteri_Talep]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Musteri_Talep](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_Talep] [nvarchar](max) NULL,
	[Satis__ID] [int] NULL,
 CONSTRAINT [PK_tb_Musteri_Talep] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Personel]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Personel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
	[Gsm] [nvarchar](20) NULL,
	[TC] [nvarchar](11) NULL,
	[Adres] [nvarchar](max) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Personel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Randevu]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Randevu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih_Saat] [nvarchar](100) NULL,
	[İsim] [nvarchar](max) NULL,
	[GSM] [nvarchar](20) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Randevu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Satilan_Parca]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Satilan_Parca](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Stok_ID] [int] NULL,
	[Satis_ID] [int] NULL,
	[Birim_Fiyat_ID] [int] NULL,
	[Adet] [nvarchar](100) NULL,
	[Iscilikcheck] [bit] NULL,
 CONSTRAINT [PK_tb_Satilan_Parca] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Satis]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Satis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Plaka_ID] [nvarchar](15) NULL,
	[Tarih] [nvarchar](50) NULL,
	[Genel_Toplam] [nvarchar](100) NULL,
	[Kdv_Oran] [nvarchar](50) NULL,
	[Kdv_Tutar] [nvarchar](100) NULL,
 CONSTRAINT [PK_tb_Satis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Servis_Tipi]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Servis_Tipi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Servis_Tipi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Stok]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Stok](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Stok_Kodu] [nvarchar](100) NULL,
	[Barkod_No] [nvarchar](100) NULL,
	[Stok_Adi] [nvarchar](max) NULL,
	[Stok_Adet] [nvarchar](100) NULL,
	[Alim_Fiyat] [nvarchar](100) NULL,
	[Satis_Fiyat] [nvarchar](100) NULL,
	[Tedarikci_Adi] [nvarchar](max) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Stok_Giris] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Vergi_Indirim]    Script Date: 9.11.2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Vergi_Indirim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Genel_Indirim] [int] NULL,
	[Indirim_Tutar] [int] NULL,
	[Ara_Toplam] [int] NULL,
	[Kdv_Oran] [int] NULL,
	[Kdv_Tutar] [int] NULL,
	[Genel_Toplam] [int] NULL,
 CONSTRAINT [PK_tb_Vergi_Indirim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_Arac_Karti] ADD  CONSTRAINT [DF_tb_Arac_Karti_Servistemi]  DEFAULT ((0)) FOR [Servistemi]
GO
ALTER TABLE [dbo].[tb_Cari] ADD  CONSTRAINT [DF_tb_Cari_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[tb_Personel] ADD  CONSTRAINT [DF_tb_Personel_Aktif_1]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[tb_Randevu] ADD  CONSTRAINT [DF_tb_Randevu_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[tb_Stok] ADD  CONSTRAINT [DF_tb_Stok_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[tb_Arac_Foto]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Foto_tb_Arac_Karti_Giris] FOREIGN KEY([Arac_ID])
REFERENCES [dbo].[tb_Arac_Karti] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Foto] CHECK CONSTRAINT [FK_tb_Arac_Foto_tb_Arac_Karti_Giris]
GO
ALTER TABLE [dbo].[tb_Arac_Giris_Cikis]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Giris_Cikis_tb_Servis_Tipi] FOREIGN KEY([Servis_Tip_ID])
REFERENCES [dbo].[tb_Servis_Tipi] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Giris_Cikis] CHECK CONSTRAINT [FK_tb_Arac_Giris_Cikis_tb_Servis_Tipi]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Arac_Cinsi] FOREIGN KEY([Arac_Cinsi_ID])
REFERENCES [dbo].[tb_Arac_Cinsi] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Arac_Cinsi]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Arac_Tip] FOREIGN KEY([Arac_Tip_ID])
REFERENCES [dbo].[tb_Arac_Tip] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Arac_Tip]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Arac_Yakit_Tur] FOREIGN KEY([Yakit_Tur_ID])
REFERENCES [dbo].[tb_Arac_Yakit_Tur] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Arac_Yakit_Tur]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Fason_Iscilik] FOREIGN KEY([Fason_İscilik_ID])
REFERENCES [dbo].[tb_Fason_Iscilik] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Fason_Iscilik]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Genel_Bilgiler] FOREIGN KEY([Genel_Bilgiler_ID])
REFERENCES [dbo].[tb_Genel_Bilgiler] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Genel_Bilgiler]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Kalibrasyon_Bilgileri] FOREIGN KEY([Kalibrasyon_Bilgileri_ID])
REFERENCES [dbo].[tb_Kalibrasyon_Bilgileri] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Kalibrasyon_Bilgileri]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Lpg_Bilgileri] FOREIGN KEY([LPG_Bilgileri_ID])
REFERENCES [dbo].[tb_Lpg_Bilgileri] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Lpg_Bilgileri]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Personel] FOREIGN KEY([Personel_ID])
REFERENCES [dbo].[tb_Personel] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Personel]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Servis_Tipi] FOREIGN KEY([Servis_Tipi_ID])
REFERENCES [dbo].[tb_Servis_Tipi] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Servis_Tipi]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Stok] FOREIGN KEY([Stok_ID])
REFERENCES [dbo].[tb_Stok] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Stok]
GO
ALTER TABLE [dbo].[tb_Arac_Karti]  WITH CHECK ADD  CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Vergi_Indirim] FOREIGN KEY([Vergi_Indırım_ID])
REFERENCES [dbo].[tb_Vergi_Indirim] ([ID])
GO
ALTER TABLE [dbo].[tb_Arac_Karti] CHECK CONSTRAINT [FK_tb_Arac_Karti_Giris_tb_Vergi_Indirim]
GO
ALTER TABLE [dbo].[tb_Kalibrasyon_Bilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tb_Kalibrasyon_Bilgileri_tb_Belge_Tur] FOREIGN KEY([Belge_Tur_ID])
REFERENCES [dbo].[tb_Kalibrasyon_Belge_Tur] ([ID])
GO
ALTER TABLE [dbo].[tb_Kalibrasyon_Bilgileri] CHECK CONSTRAINT [FK_tb_Kalibrasyon_Bilgileri_tb_Belge_Tur]
GO
ALTER TABLE [dbo].[tb_Kalibrasyon_Bilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tb_Kalibrasyon_Bilgileri_tb_Takograf] FOREIGN KEY([Takograf_ID])
REFERENCES [dbo].[tb_Kalibrasyon_Takograf] ([ID])
GO
ALTER TABLE [dbo].[tb_Kalibrasyon_Bilgileri] CHECK CONSTRAINT [FK_tb_Kalibrasyon_Bilgileri_tb_Takograf]
GO
ALTER TABLE [dbo].[tb_Kasa]  WITH CHECK ADD  CONSTRAINT [FK_tb_Kasa_tb_Arac_Karti_Giris] FOREIGN KEY([Arac_Karti_Giris_ID])
REFERENCES [dbo].[tb_Arac_Karti] ([ID])
GO
ALTER TABLE [dbo].[tb_Kasa] CHECK CONSTRAINT [FK_tb_Kasa_tb_Arac_Karti_Giris]
GO
ALTER TABLE [dbo].[tb_Lpg_Bilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tb_Lpg_Bilgileri_tb_Lpg_Diger] FOREIGN KEY([Diger_ID])
REFERENCES [dbo].[tb_Lpg_Diger] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Bilgileri] CHECK CONSTRAINT [FK_tb_Lpg_Bilgileri_tb_Lpg_Diger]
GO
ALTER TABLE [dbo].[tb_Lpg_Bilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tb_Lpg_Bilgileri_tb_Lpg_Regulator] FOREIGN KEY([Regulator_ID])
REFERENCES [dbo].[tb_Lpg_Regulator] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Bilgileri] CHECK CONSTRAINT [FK_tb_Lpg_Bilgileri_tb_Lpg_Regulator]
GO
ALTER TABLE [dbo].[tb_Lpg_Bilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tb_Lpg_Bilgileri_tb_Lpg_Tank] FOREIGN KEY([Tank_ID])
REFERENCES [dbo].[tb_Lpg_Tank] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Bilgileri] CHECK CONSTRAINT [FK_tb_Lpg_Bilgileri_tb_Lpg_Tank]
GO
ALTER TABLE [dbo].[tb_Lpg_Regulator]  WITH CHECK ADD  CONSTRAINT [FK_tb_Regulator_tb_Lpg_Cins] FOREIGN KEY([Cins_ID])
REFERENCES [dbo].[tb_Lpg_Cins] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Regulator] CHECK CONSTRAINT [FK_tb_Regulator_tb_Lpg_Cins]
GO
ALTER TABLE [dbo].[tb_Lpg_Regulator]  WITH CHECK ADD  CONSTRAINT [FK_tb_Regulator_tb_Lpg_Marka] FOREIGN KEY([Marka_ID])
REFERENCES [dbo].[tb_Lpg_Marka] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Regulator] CHECK CONSTRAINT [FK_tb_Regulator_tb_Lpg_Marka]
GO
ALTER TABLE [dbo].[tb_Lpg_Regulator]  WITH CHECK ADD  CONSTRAINT [FK_tb_Regulator_tb_Lpg_Tip] FOREIGN KEY([Tip_ID])
REFERENCES [dbo].[tb_Lpg_Tip] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Regulator] CHECK CONSTRAINT [FK_tb_Regulator_tb_Lpg_Tip]
GO
ALTER TABLE [dbo].[tb_Lpg_Tank]  WITH CHECK ADD  CONSTRAINT [FK_tb_Tank_tb_Lpg_Cins] FOREIGN KEY([Cins_ID])
REFERENCES [dbo].[tb_Lpg_Cins] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Tank] CHECK CONSTRAINT [FK_tb_Tank_tb_Lpg_Cins]
GO
ALTER TABLE [dbo].[tb_Lpg_Tank]  WITH CHECK ADD  CONSTRAINT [FK_tb_Tank_tb_Lpg_Marka] FOREIGN KEY([Marka_ID])
REFERENCES [dbo].[tb_Lpg_Marka] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Tank] CHECK CONSTRAINT [FK_tb_Tank_tb_Lpg_Marka]
GO
ALTER TABLE [dbo].[tb_Lpg_Tank]  WITH CHECK ADD  CONSTRAINT [FK_tb_Tank_tb_Lpg_Tip] FOREIGN KEY([Tip_ID])
REFERENCES [dbo].[tb_Lpg_Tip] ([ID])
GO
ALTER TABLE [dbo].[tb_Lpg_Tank] CHECK CONSTRAINT [FK_tb_Tank_tb_Lpg_Tip]
GO
ALTER TABLE [dbo].[tb_Musteri_Talep]  WITH CHECK ADD  CONSTRAINT [FK_tb_Musteri_Talep_tb_Satis] FOREIGN KEY([Satis__ID])
REFERENCES [dbo].[tb_Satis] ([ID])
GO
ALTER TABLE [dbo].[tb_Musteri_Talep] CHECK CONSTRAINT [FK_tb_Musteri_Talep_tb_Satis]
GO
ALTER TABLE [dbo].[tb_Satilan_Parca]  WITH CHECK ADD  CONSTRAINT [FK_tb_Satilan_Parca_tb_Satis] FOREIGN KEY([Satis_ID])
REFERENCES [dbo].[tb_Satis] ([ID])
GO
ALTER TABLE [dbo].[tb_Satilan_Parca] CHECK CONSTRAINT [FK_tb_Satilan_Parca_tb_Satis]
GO
USE [master]
GO
ALTER DATABASE [db_oto_servis] SET  READ_WRITE 
GO
