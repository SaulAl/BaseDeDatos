USE [master]
GO
/****** Object:  Database [Ticket_Master]    Script Date: 24/02/2018 11:59:52 a.m. ******/
CREATE DATABASE [Ticket_Master]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ticket_Master', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Ticket_Master.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ticket_Master_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Ticket_Master_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ticket_Master] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ticket_Master].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ticket_Master] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ticket_Master] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ticket_Master] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ticket_Master] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ticket_Master] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ticket_Master] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ticket_Master] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Ticket_Master] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ticket_Master] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ticket_Master] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ticket_Master] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ticket_Master] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ticket_Master] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ticket_Master] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ticket_Master] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ticket_Master] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ticket_Master] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ticket_Master] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ticket_Master] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ticket_Master] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ticket_Master] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ticket_Master] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ticket_Master] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ticket_Master] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ticket_Master] SET  MULTI_USER 
GO
ALTER DATABASE [Ticket_Master] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ticket_Master] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ticket_Master] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ticket_Master] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Ticket_Master]
GO
/****** Object:  Table [dbo].[Arena]    Script Date: 24/02/2018 11:59:52 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Arena](
	[id_arena] [uniqueidentifier] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[nombreDeArena] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Arenas]    Script Date: 24/02/2018 11:59:52 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Arenas](
	[id_arena] [uniqueidentifier] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[nombreDeArena] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 24/02/2018 11:59:52 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boleto](
	[id_boleto] [uniqueidentifier] NOT NULL,
	[id_venta] [uniqueidentifier] NOT NULL,
	[id_arena] [uniqueidentifier] NOT NULL,
	[id_lugar] [uniqueidentifier] NOT NULL,
	[serial] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 24/02/2018 11:59:52 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evento](
	[id_evento] [uniqueidentifier] NOT NULL,
	[artistas] [varchar](50) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[nombreEvento] [varchar](50) NOT NULL,
	[precio] [nchar](10) NOT NULL,
	[iva] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 24/02/2018 11:59:52 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lugar](
	[id_lugar] [uniqueidentifier] NOT NULL,
	[numeroAsiento] [int] NOT NULL,
	[zona] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 24/02/2018 11:59:52 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venta](
	[id_venta] [uniqueidentifier] NOT NULL,
	[disponibilidad] [char](10) NOT NULL,
	[precio] [money] NOT NULL,
	[iva] [money] NOT NULL,
	[metodoDePago] [char](10) NOT NULL,
	[fechaDeVenta] [datetime] NOT NULL,
	[nombreVendedor] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Ticket_Master] SET  READ_WRITE 
GO
