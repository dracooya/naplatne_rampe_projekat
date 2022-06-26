USE [master]
GO
/****** Object:  Database [NaplataPutarine]    Script Date: 6/26/2022 10:57:05 PM ******/
CREATE DATABASE [NaplataPutarine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NaplataPutarine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NaplataPutarine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NaplataPutarine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NaplataPutarine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NaplataPutarine] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NaplataPutarine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NaplataPutarine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NaplataPutarine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NaplataPutarine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NaplataPutarine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NaplataPutarine] SET ARITHABORT OFF 
GO
ALTER DATABASE [NaplataPutarine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NaplataPutarine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NaplataPutarine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NaplataPutarine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NaplataPutarine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NaplataPutarine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NaplataPutarine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NaplataPutarine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NaplataPutarine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NaplataPutarine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NaplataPutarine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NaplataPutarine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NaplataPutarine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NaplataPutarine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NaplataPutarine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NaplataPutarine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NaplataPutarine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NaplataPutarine] SET RECOVERY FULL 
GO
ALTER DATABASE [NaplataPutarine] SET  MULTI_USER 
GO
ALTER DATABASE [NaplataPutarine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NaplataPutarine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NaplataPutarine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NaplataPutarine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NaplataPutarine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NaplataPutarine] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NaplataPutarine', N'ON'
GO
ALTER DATABASE [NaplataPutarine] SET QUERY_STORE = OFF
GO
USE [NaplataPutarine]
GO
/****** Object:  Table [dbo].[Cena]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cena](
	[IdDeonica] [int] NOT NULL,
	[IdKategorija] [int] NOT NULL,
	[Vrednost] [float] NOT NULL,
	[DatumKreiranja] [date] NOT NULL,
 CONSTRAINT [PK_Cena] PRIMARY KEY CLUSTERED 
(
	[IdDeonica] ASC,
	[IdKategorija] ASC,
	[DatumKreiranja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deonica]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deonica](
	[Id] [int] NOT NULL,
	[IdPocetnaStanica] [int] NOT NULL,
	[IdZavrsnaStanica] [int] NOT NULL,
	[Duzina] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kartica]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kartica](
	[id] [int] NOT NULL,
	[IdNaplatnoMesto] [int] NOT NULL,
	[Datum] [date] NOT NULL,
	[RegistarskaOznakaVozila] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KategorijaVozila]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KategorijaVozila](
	[Id] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KorisnickiNalog]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KorisnickiNalog](
	[IdKorisnika] [nchar](10) NOT NULL,
	[KorisnickoIme] [nvarchar](50) NOT NULL,
	[Lozinka] [nvarchar](50) NOT NULL,
	[Uloga] [int] NOT NULL,
 CONSTRAINT [PK_KorisnickiNalog] PRIMARY KEY CLUSTERED 
(
	[IdKorisnika] ASC,
	[KorisnickoIme] ASC,
	[Lozinka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnik]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Korisnik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KorisnikTip]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KorisnikTip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KorisnikTip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaplatnaStanica]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaplatnaStanica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSef] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[DatumIzgradnje] [date] NOT NULL,
 CONSTRAINT [PK_NaplatnaStanica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaplatnaStanicaRadnik]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaplatnaStanicaRadnik](
	[IdRadnik] [int] NOT NULL,
	[IdNaplatnaStanica] [int] NOT NULL,
 CONSTRAINT [PK_NaplatnaStanicaRadnik] PRIMARY KEY CLUSTERED 
(
	[IdRadnik] ASC,
	[IdNaplatnaStanica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKorisnik] [int] NOT NULL,
	[IdKategorija] [int] NOT NULL,
	[IdValuta] [int] NOT NULL,
	[TrenutnoStanje] [float] NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipUplate]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipUplate](
	[Id] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipUredjaja]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipUredjaja](
	[Id] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uloga]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uloga](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Uloga] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uplata]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uplata](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNaplatnoMesto] [int] NOT NULL,
	[Iznos] [float] NOT NULL,
	[Valuta] [int] NOT NULL,
	[DatumUplate] [date] NOT NULL,
	[Tip] [int] NOT NULL,
 CONSTRAINT [PK_Uplata] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UplataRadnik]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UplataRadnik](
	[IdUplata] [int] NOT NULL,
	[IdRadnik] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UplataTag]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UplataTag](
	[IdUplata] [int] NOT NULL,
	[IdTag] [int] NOT NULL,
 CONSTRAINT [PK_UplataTag] PRIMARY KEY CLUSTERED 
(
	[IdUplata] ASC,
	[IdTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UplataTip]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UplataTip](
	[Id] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uredjaj]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uredjaj](
	[Id] [int] NOT NULL,
	[IdNaplatnoMesto] [int] NOT NULL,
	[IdTip] [int] NOT NULL,
	[Ispravan] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valuta]    Script Date: 6/26/2022 10:57:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valuta](
	[Id] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [NaplataPutarine] SET  READ_WRITE 
GO
