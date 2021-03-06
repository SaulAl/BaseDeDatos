USE [master]
GO
/****** Object:  Database [Ticketmaster]    Script Date: 23/3/2018 23:37:37 ******/
CREATE DATABASE [Ticketmaster]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ticketmaster', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Ticketmaster.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ticketmaster_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Ticketmaster_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ticketmaster] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ticketmaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ticketmaster] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ticketmaster] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ticketmaster] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ticketmaster] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ticketmaster] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ticketmaster] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Ticketmaster] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ticketmaster] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ticketmaster] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ticketmaster] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ticketmaster] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ticketmaster] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ticketmaster] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ticketmaster] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ticketmaster] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Ticketmaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ticketmaster] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ticketmaster] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ticketmaster] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ticketmaster] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ticketmaster] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ticketmaster] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ticketmaster] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ticketmaster] SET  MULTI_USER 
GO
ALTER DATABASE [Ticketmaster] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ticketmaster] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ticketmaster] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ticketmaster] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Ticketmaster] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ticketmaster] SET QUERY_STORE = OFF
GO
USE [Ticketmaster]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Ticketmaster]
GO
/****** Object:  Table [dbo].[Arena]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arena](
	[Direccion] [varchar](50) NOT NULL,
	[nombreDeArena] [varchar](50) NOT NULL,
	[idArena] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Arena_1] PRIMARY KEY CLUSTERED 
(
	[idArena] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artistas](
	[idArtistas] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Artistas] PRIMARY KEY CLUSTERED 
(
	[idArtistas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boletos](
	[idBoletos] [uniqueidentifier] NOT NULL,
	[idEvento] [uniqueidentifier] NOT NULL,
	[idLugar] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Boletos] PRIMARY KEY CLUSTERED 
(
	[idBoletos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Direccion de domicilio] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Estado civil] [varchar](50) NOT NULL,
	[idCliente] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Cliente_1] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[idDetalleVenta] [uniqueidentifier] NOT NULL,
	[idBoleto] [uniqueidentifier] NOT NULL,
	[idVenta] [uniqueidentifier] NOT NULL,
	[idLugar] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[matriculaDeEmpleado] [int] NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[idEvento] [uniqueidentifier] NOT NULL,
	[idArtista] [uniqueidentifier] NOT NULL,
	[idArena] [uniqueidentifier] NOT NULL,
	[nombreDeEvento] [varchar](50) NOT NULL,
	[fechayHora] [time](7) NOT NULL,
 CONSTRAINT [PK_Evento] PRIMARY KEY CLUSTERED 
(
	[idEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lugar](
	[numeroDeAsiento] [int] NOT NULL,
	[Zona] [varchar](50) NOT NULL,
	[idLugar] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Lugar_1] PRIMARY KEY CLUSTERED 
(
	[idLugar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 23/3/2018 23:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[cantidad] [int] NOT NULL,
	[tipoDePago] [int] NOT NULL,
	[promocion] [int] NOT NULL,
	[idPago] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Pago_1] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 23/3/2018 23:37:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [uniqueidentifier] NOT NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[idPago] [uniqueidentifier] NOT NULL,
	[idCliente] [uniqueidentifier] NOT NULL,
	[fechaDeVenta] [date] NOT NULL,
	[Vendedor] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cliente]    Script Date: 23/3/2018 23:37:38 ******/
CREATE NONCLUSTERED INDEX [IX_Cliente] ON [dbo].[Cliente]
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [FK_Boletos_Evento] FOREIGN KEY([idEvento])
REFERENCES [dbo].[Evento] ([idEvento])
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [FK_Boletos_Evento]
GO
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [FK_Boletos_Lugar] FOREIGN KEY([idLugar])
REFERENCES [dbo].[Lugar] ([idLugar])
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [FK_Boletos_Lugar]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Boletos] FOREIGN KEY([idBoleto])
REFERENCES [dbo].[Boletos] ([idBoletos])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Boletos]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Venta]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Arena] FOREIGN KEY([idArena])
REFERENCES [dbo].[Arena] ([idArena])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Arena]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Artistas] FOREIGN KEY([idArtista])
REFERENCES [dbo].[Artistas] ([idArtistas])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Artistas]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleado]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Pago] FOREIGN KEY([idPago])
REFERENCES [dbo].[Pago] ([idPago])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Pago]
GO
USE [master]
GO
ALTER DATABASE [Ticketmaster] SET  READ_WRITE 
GO
