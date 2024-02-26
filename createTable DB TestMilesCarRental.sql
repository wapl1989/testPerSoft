USE [master]
GO
/****** Object:  Database [TestMilesCarsRental]    Script Date: 25/02/2024 9:16:47 p. m. ******/
CREATE DATABASE [TestMilesCarsRental]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestMilerCarsRental', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestMilerCarsRental.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestMilerCarsRental_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestMilerCarsRental_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TestMilesCarsRental] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestMilesCarsRental].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestMilesCarsRental] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestMilesCarsRental] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestMilesCarsRental] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestMilesCarsRental] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestMilesCarsRental] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET RECOVERY FULL 
GO
ALTER DATABASE [TestMilesCarsRental] SET  MULTI_USER 
GO
ALTER DATABASE [TestMilesCarsRental] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestMilesCarsRental] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestMilesCarsRental] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestMilesCarsRental] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestMilesCarsRental] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestMilesCarsRental] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestMilesCarsRental', N'ON'
GO
ALTER DATABASE [TestMilesCarsRental] SET QUERY_STORE = OFF
GO
USE [TestMilesCarsRental]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 25/02/2024 9:16:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mercado]    Script Date: 25/02/2024 9:16:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Mercado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MercadoVehiculo]    Script Date: 25/02/2024 9:16:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MercadoVehiculo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MercadoId] [int] NOT NULL,
	[VehiculoId] [int] NOT NULL,
 CONSTRAINT [PK_MercadoVehiculo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 25/02/2024 9:16:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Año] [int] NOT NULL,
	[Disponible] [bit] NOT NULL,
	[LocalidadId] [int] NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Localidad] ON 
GO
INSERT [dbo].[Localidad] ([Id], [Nombre], [Direccion]) VALUES (1, N'Kennedy', N'Direccion ABS')
GO
INSERT [dbo].[Localidad] ([Id], [Nombre], [Direccion]) VALUES (2, N'Usaquen', N'kra 33 dd')
GO
INSERT [dbo].[Localidad] ([Id], [Nombre], [Direccion]) VALUES (3, N'Barrios Unidos', N'asdf090')
GO
INSERT [dbo].[Localidad] ([Id], [Nombre], [Direccion]) VALUES (4, N'Fontibon', N'fonti fonti')
GO
SET IDENTITY_INSERT [dbo].[Localidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Mercado] ON 
GO
INSERT [dbo].[Mercado] ([Id], [Nombre]) VALUES (1, N'Ocio / Turismo')
GO
INSERT [dbo].[Mercado] ([Id], [Nombre]) VALUES (2, N'Negocios')
GO
SET IDENTITY_INSERT [dbo].[Mercado] OFF
GO
SET IDENTITY_INSERT [dbo].[MercadoVehiculo] ON 
GO
INSERT [dbo].[MercadoVehiculo] ([Id], [MercadoId], [VehiculoId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[MercadoVehiculo] ([Id], [MercadoId], [VehiculoId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[MercadoVehiculo] ([Id], [MercadoId], [VehiculoId]) VALUES (3, 2, 1)
GO
INSERT [dbo].[MercadoVehiculo] ([Id], [MercadoId], [VehiculoId]) VALUES (4, 2, 3)
GO
INSERT [dbo].[MercadoVehiculo] ([Id], [MercadoId], [VehiculoId]) VALUES (5, 1, 4)
GO
SET IDENTITY_INSERT [dbo].[MercadoVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehiculo] ON 
GO
INSERT [dbo].[Vehiculo] ([Id], [Placa], [Marca], [Modelo], [Año], [Disponible], [LocalidadId]) VALUES (1, N'NCS40', N'Chevrolet', N'Sonic', 2013, 1, 1)
GO
INSERT [dbo].[Vehiculo] ([Id], [Placa], [Marca], [Modelo], [Año], [Disponible], [LocalidadId]) VALUES (2, N'KJM33', N'Kia', N'Cerato', 2022, 0, 2)
GO
INSERT [dbo].[Vehiculo] ([Id], [Placa], [Marca], [Modelo], [Año], [Disponible], [LocalidadId]) VALUES (3, N'KLJ45', N'Mazda', N'Cx-30', 2019, 1, 1)
GO
INSERT [dbo].[Vehiculo] ([Id], [Placa], [Marca], [Modelo], [Año], [Disponible], [LocalidadId]) VALUES (4, N'HJS22', N'Hyundai', N'Atos', 2019, 1, 3)
GO
INSERT [dbo].[Vehiculo] ([Id], [Placa], [Marca], [Modelo], [Año], [Disponible], [LocalidadId]) VALUES (5, N'JKS12', N'Chevrolet', N'Sprint', 1994, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Vehiculo] OFF
GO
ALTER TABLE [dbo].[MercadoVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_MercadoVehiculo_Mercado] FOREIGN KEY([MercadoId])
REFERENCES [dbo].[Mercado] ([Id])
GO
ALTER TABLE [dbo].[MercadoVehiculo] CHECK CONSTRAINT [FK_MercadoVehiculo_Mercado]
GO
ALTER TABLE [dbo].[MercadoVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_MercadoVehiculo_Vehiculo] FOREIGN KEY([VehiculoId])
REFERENCES [dbo].[Vehiculo] ([Id])
GO
ALTER TABLE [dbo].[MercadoVehiculo] CHECK CONSTRAINT [FK_MercadoVehiculo_Vehiculo]
GO
USE [master]
GO
ALTER DATABASE [TestMilesCarsRental] SET  READ_WRITE 
GO
