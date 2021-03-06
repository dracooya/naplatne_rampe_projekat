USE [master]
GO
/****** Object:  Database [NaplataPutarine]    Script Date: 6/26/2022 11:45:40 PM ******/
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
/****** Object:  Table [dbo].[Cena]    Script Date: 6/26/2022 11:45:40 PM ******/
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
/****** Object:  Table [dbo].[Deonica]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deonica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPocetnaStanica] [int] NOT NULL,
	[IdZavrsnaStanica] [int] NOT NULL,
	[Duzina] [float] NOT NULL,
 CONSTRAINT [PK_Deonica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kartica]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kartica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNaplatnomesto] [int] NOT NULL,
	[Izdavanje] [datetime] NOT NULL,
	[RegistarskaOznaka] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kartica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KategorijaVozila]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KategorijaVozila](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KategorijaVozila] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KorisnickiNalog]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KorisnickiNalog](
	[IdKorisnika] [int] NOT NULL,
	[KorisnickoIme] [nvarchar](50) NOT NULL,
	[Lozinka] [nvarchar](50) NOT NULL,
	[Uloga] [int] NOT NULL,
 CONSTRAINT [PK_KorisnickiNalog] PRIMARY KEY CLUSTERED 
(
	[IdKorisnika] ASC,
	[KorisnickoIme] ASC,
	[Lozinka] ASC,
	[Uloga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnik]    Script Date: 6/26/2022 11:45:40 PM ******/
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
/****** Object:  Table [dbo].[KorisnikTip]    Script Date: 6/26/2022 11:45:40 PM ******/
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
/****** Object:  Table [dbo].[NaplatnaStanica]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaplatnaStanica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSef] [int] NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[DatumIzgradnje] [date] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_NaplatnaStanica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaplatnoMesto]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaplatnoMesto](
	[Id] [int] NOT NULL,
	[IdNaplatnaStanica] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_NaplatnoMesto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radnik]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radnik](
	[IdRadnik] [int] NOT NULL,
	[IdNaplatnaStanica] [int] NOT NULL,
 CONSTRAINT [PK_NaplatnaStanicaRadnik] PRIMARY KEY CLUSTERED 
(
	[IdRadnik] ASC,
	[IdNaplatnaStanica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 6/26/2022 11:45:40 PM ******/
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
	[IdPoslednjaStanica] [int] NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipUplata]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipUplata](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipUplata] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipUredjaja]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipUredjaja](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipUredjaja] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uloga]    Script Date: 6/26/2022 11:45:40 PM ******/
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
/****** Object:  Table [dbo].[Uplata]    Script Date: 6/26/2022 11:45:40 PM ******/
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
/****** Object:  Table [dbo].[UplataRadnik]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UplataRadnik](
	[IdUplata] [int] NOT NULL,
	[IdRadnik] [int] NOT NULL,
 CONSTRAINT [PK_UplataRadnik] PRIMARY KEY CLUSTERED 
(
	[IdUplata] ASC,
	[IdRadnik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UplataTag]    Script Date: 6/26/2022 11:45:40 PM ******/
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
/****** Object:  Table [dbo].[Uredjaj]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uredjaj](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNaplatnoMesto] [int] NOT NULL,
	[IdTipUredjaja] [int] NOT NULL,
	[Ispravan] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Uredjaj] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valuta]    Script Date: 6/26/2022 11:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valuta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Valuta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cena]  WITH CHECK ADD  CONSTRAINT [FK_Cena_Deonica] FOREIGN KEY([IdDeonica])
REFERENCES [dbo].[Deonica] ([Id])
GO
ALTER TABLE [dbo].[Cena] CHECK CONSTRAINT [FK_Cena_Deonica]
GO
ALTER TABLE [dbo].[Cena]  WITH CHECK ADD  CONSTRAINT [FK_Cena_KategorijaVozila] FOREIGN KEY([IdKategorija])
REFERENCES [dbo].[KategorijaVozila] ([Id])
GO
ALTER TABLE [dbo].[Cena] CHECK CONSTRAINT [FK_Cena_KategorijaVozila]
GO
ALTER TABLE [dbo].[Deonica]  WITH CHECK ADD  CONSTRAINT [FK_Deonica_NaplatnaStanica] FOREIGN KEY([IdPocetnaStanica])
REFERENCES [dbo].[NaplatnaStanica] ([Id])
GO
ALTER TABLE [dbo].[Deonica] CHECK CONSTRAINT [FK_Deonica_NaplatnaStanica]
GO
ALTER TABLE [dbo].[Deonica]  WITH CHECK ADD  CONSTRAINT [FK_Deonica_NaplatnaStanica1] FOREIGN KEY([IdZavrsnaStanica])
REFERENCES [dbo].[NaplatnaStanica] ([Id])
GO
ALTER TABLE [dbo].[Deonica] CHECK CONSTRAINT [FK_Deonica_NaplatnaStanica1]
GO
ALTER TABLE [dbo].[Kartica]  WITH CHECK ADD  CONSTRAINT [FK_Kartica_NaplatnoMesto] FOREIGN KEY([IdNaplatnomesto])
REFERENCES [dbo].[NaplatnoMesto] ([Id])
GO
ALTER TABLE [dbo].[Kartica] CHECK CONSTRAINT [FK_Kartica_NaplatnoMesto]
GO
ALTER TABLE [dbo].[KorisnickiNalog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickiNalog_Korisnik] FOREIGN KEY([IdKorisnika])
REFERENCES [dbo].[Korisnik] ([id])
GO
ALTER TABLE [dbo].[KorisnickiNalog] CHECK CONSTRAINT [FK_KorisnickiNalog_Korisnik]
GO
ALTER TABLE [dbo].[KorisnickiNalog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickiNalog_KorisnikTip] FOREIGN KEY([Uloga])
REFERENCES [dbo].[KorisnikTip] ([Id])
GO
ALTER TABLE [dbo].[KorisnickiNalog] CHECK CONSTRAINT [FK_KorisnickiNalog_KorisnikTip]
GO
ALTER TABLE [dbo].[NaplatnaStanica]  WITH CHECK ADD  CONSTRAINT [FK_NaplatnaStanica_Korisnik] FOREIGN KEY([IdSef])
REFERENCES [dbo].[Korisnik] ([id])
GO
ALTER TABLE [dbo].[NaplatnaStanica] CHECK CONSTRAINT [FK_NaplatnaStanica_Korisnik]
GO
ALTER TABLE [dbo].[NaplatnoMesto]  WITH CHECK ADD  CONSTRAINT [FK_NaplatnoMesto_NaplatnaStanica] FOREIGN KEY([IdNaplatnaStanica])
REFERENCES [dbo].[NaplatnaStanica] ([Id])
GO
ALTER TABLE [dbo].[NaplatnoMesto] CHECK CONSTRAINT [FK_NaplatnoMesto_NaplatnaStanica]
GO
ALTER TABLE [dbo].[Radnik]  WITH CHECK ADD  CONSTRAINT [FK_Radnik_Korisnik] FOREIGN KEY([IdRadnik])
REFERENCES [dbo].[Korisnik] ([id])
GO
ALTER TABLE [dbo].[Radnik] CHECK CONSTRAINT [FK_Radnik_Korisnik]
GO
ALTER TABLE [dbo].[Radnik]  WITH CHECK ADD  CONSTRAINT [FK_Radnik_NaplatnaStanica] FOREIGN KEY([IdNaplatnaStanica])
REFERENCES [dbo].[NaplatnaStanica] ([Id])
GO
ALTER TABLE [dbo].[Radnik] CHECK CONSTRAINT [FK_Radnik_NaplatnaStanica]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_KategorijaVozila] FOREIGN KEY([Id])
REFERENCES [dbo].[KategorijaVozila] ([Id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_KategorijaVozila]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_Korisnik] FOREIGN KEY([IdKorisnik])
REFERENCES [dbo].[Korisnik] ([id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_Korisnik]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_NaplatnaStanica] FOREIGN KEY([IdPoslednjaStanica])
REFERENCES [dbo].[NaplatnaStanica] ([Id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_NaplatnaStanica]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_Valuta] FOREIGN KEY([IdValuta])
REFERENCES [dbo].[Valuta] ([Id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_Valuta]
GO
ALTER TABLE [dbo].[Uplata]  WITH CHECK ADD  CONSTRAINT [FK_Uplata_NaplatnoMesto] FOREIGN KEY([IdNaplatnoMesto])
REFERENCES [dbo].[NaplatnoMesto] ([Id])
GO
ALTER TABLE [dbo].[Uplata] CHECK CONSTRAINT [FK_Uplata_NaplatnoMesto]
GO
ALTER TABLE [dbo].[Uplata]  WITH CHECK ADD  CONSTRAINT [FK_Uplata_TipUplata] FOREIGN KEY([Tip])
REFERENCES [dbo].[TipUplata] ([Id])
GO
ALTER TABLE [dbo].[Uplata] CHECK CONSTRAINT [FK_Uplata_TipUplata]
GO
ALTER TABLE [dbo].[Uplata]  WITH CHECK ADD  CONSTRAINT [FK_Uplata_Valuta] FOREIGN KEY([Valuta])
REFERENCES [dbo].[Valuta] ([Id])
GO
ALTER TABLE [dbo].[Uplata] CHECK CONSTRAINT [FK_Uplata_Valuta]
GO
ALTER TABLE [dbo].[UplataRadnik]  WITH CHECK ADD  CONSTRAINT [FK_UplataRadnik_Korisnik] FOREIGN KEY([IdRadnik])
REFERENCES [dbo].[Korisnik] ([id])
GO
ALTER TABLE [dbo].[UplataRadnik] CHECK CONSTRAINT [FK_UplataRadnik_Korisnik]
GO
ALTER TABLE [dbo].[UplataRadnik]  WITH CHECK ADD  CONSTRAINT [FK_UplataRadnik_Uplata] FOREIGN KEY([IdUplata])
REFERENCES [dbo].[Uplata] ([Id])
GO
ALTER TABLE [dbo].[UplataRadnik] CHECK CONSTRAINT [FK_UplataRadnik_Uplata]
GO
ALTER TABLE [dbo].[UplataTag]  WITH CHECK ADD  CONSTRAINT [FK_UplataTag_Tag] FOREIGN KEY([IdTag])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[UplataTag] CHECK CONSTRAINT [FK_UplataTag_Tag]
GO
ALTER TABLE [dbo].[UplataTag]  WITH CHECK ADD  CONSTRAINT [FK_UplataTag_Uplata] FOREIGN KEY([IdUplata])
REFERENCES [dbo].[Uplata] ([Id])
GO
ALTER TABLE [dbo].[UplataTag] CHECK CONSTRAINT [FK_UplataTag_Uplata]
GO
ALTER TABLE [dbo].[Uredjaj]  WITH CHECK ADD  CONSTRAINT [FK_Uredjaj_NaplatnoMesto] FOREIGN KEY([IdNaplatnoMesto])
REFERENCES [dbo].[NaplatnoMesto] ([Id])
GO
ALTER TABLE [dbo].[Uredjaj] CHECK CONSTRAINT [FK_Uredjaj_NaplatnoMesto]
GO
ALTER TABLE [dbo].[Uredjaj]  WITH CHECK ADD  CONSTRAINT [FK_Uredjaj_TipUredjaja] FOREIGN KEY([IdTipUredjaja])
REFERENCES [dbo].[TipUredjaja] ([Id])
GO
ALTER TABLE [dbo].[Uredjaj] CHECK CONSTRAINT [FK_Uredjaj_TipUredjaja]
GO
USE [master]
GO
ALTER DATABASE [NaplataPutarine] SET  READ_WRITE 
GO
