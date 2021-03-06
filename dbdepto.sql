USE [master]
GO
/****** Object:  Database [depto]    Script Date: 19/11/2019 08:47:10 a. m. ******/
CREATE DATABASE [depto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'depto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\depto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'depto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\depto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [depto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [depto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [depto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [depto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [depto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [depto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [depto] SET ARITHABORT OFF 
GO
ALTER DATABASE [depto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [depto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [depto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [depto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [depto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [depto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [depto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [depto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [depto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [depto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [depto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [depto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [depto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [depto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [depto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [depto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [depto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [depto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [depto] SET  MULTI_USER 
GO
ALTER DATABASE [depto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [depto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [depto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [depto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [depto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [depto] SET QUERY_STORE = OFF
GO
USE [depto]
GO
/****** Object:  Table [dbo].[caracteristica]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caracteristica](
	[cve_caracteristica] [nchar](10) NOT NULL,
	[desc_caracteristica] [nchar](30) NULL,
 CONSTRAINT [PK_caracteristica] PRIMARY KEY CLUSTERED 
(
	[cve_caracteristica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[depto]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[depto](
	[id_depto] [nchar](10) NOT NULL,
	[no_recamaras] [nchar](10) NULL,
	[cve_tipodepto] [nchar](10) NULL,
	[cve_edificio] [nchar](10) NULL,
	[cve_caracteristica] [nchar](10) NULL,
	[cve_servicio] [nchar](10) NULL,
	[id_inquilino] [nchar](10) NULL,
 CONSTRAINT [PK_depto] PRIMARY KEY CLUSTERED 
(
	[id_depto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[edificio]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[edificio](
	[cve_edificio] [nchar](10) NOT NULL,
	[no_pisos] [nchar](10) NULL,
	[ubi_edificio] [nchar](20) NULL,
 CONSTRAINT [PK_edificio] PRIMARY KEY CLUSTERED 
(
	[cve_edificio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estacionamiento]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estacionamiento](
	[id_estacionamiento] [nchar](10) NOT NULL,
	[ubi_estacionamiento] [nchar](10) NULL,
	[id_depto] [nchar](10) NULL,
 CONSTRAINT [PK_estacionamiento] PRIMARY KEY CLUSTERED 
(
	[id_estacionamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estatus]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estatus](
	[cve_estatus] [nchar](10) NOT NULL,
	[desc_estatus] [nchar](20) NULL,
 CONSTRAINT [PK_estatus] PRIMARY KEY CLUSTERED 
(
	[cve_estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inquilino]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inquilino](
	[id_inquilino] [nchar](10) NOT NULL,
	[rfc_inquilino] [nchar](20) NULL,
	[nom_inquilino] [nchar](20) NULL,
	[edo_inquilino] [nchar](20) NULL,
	[cve_estatus] [nchar](10) NULL,
 CONSTRAINT [PK_inquilino] PRIMARY KEY CLUSTERED 
(
	[id_inquilino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servicio]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicio](
	[cve_servicio] [nchar](10) NOT NULL,
	[desc_servicio] [nchar](30) NULL,
 CONSTRAINT [PK_servicio] PRIMARY KEY CLUSTERED 
(
	[cve_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipodepto]    Script Date: 19/11/2019 08:47:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipodepto](
	[cve_tipodepto] [nchar](10) NOT NULL,
	[desc_tipodepto] [nchar](20) NULL,
	[renta] [nchar](10) NULL,
 CONSTRAINT [PK_tipodepto] PRIMARY KEY CLUSTERED 
(
	[cve_tipodepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[depto]  WITH CHECK ADD  CONSTRAINT [FK_depto_caracteristica] FOREIGN KEY([cve_caracteristica])
REFERENCES [dbo].[caracteristica] ([cve_caracteristica])
GO
ALTER TABLE [dbo].[depto] CHECK CONSTRAINT [FK_depto_caracteristica]
GO
ALTER TABLE [dbo].[depto]  WITH CHECK ADD  CONSTRAINT [FK_depto_edificio] FOREIGN KEY([cve_edificio])
REFERENCES [dbo].[edificio] ([cve_edificio])
GO
ALTER TABLE [dbo].[depto] CHECK CONSTRAINT [FK_depto_edificio]
GO
ALTER TABLE [dbo].[depto]  WITH CHECK ADD  CONSTRAINT [FK_depto_inquilino] FOREIGN KEY([id_inquilino])
REFERENCES [dbo].[inquilino] ([id_inquilino])
GO
ALTER TABLE [dbo].[depto] CHECK CONSTRAINT [FK_depto_inquilino]
GO
ALTER TABLE [dbo].[depto]  WITH CHECK ADD  CONSTRAINT [FK_depto_servicio1] FOREIGN KEY([cve_servicio])
REFERENCES [dbo].[servicio] ([cve_servicio])
GO
ALTER TABLE [dbo].[depto] CHECK CONSTRAINT [FK_depto_servicio1]
GO
ALTER TABLE [dbo].[depto]  WITH CHECK ADD  CONSTRAINT [FK_depto_tipodepto] FOREIGN KEY([cve_tipodepto])
REFERENCES [dbo].[tipodepto] ([cve_tipodepto])
GO
ALTER TABLE [dbo].[depto] CHECK CONSTRAINT [FK_depto_tipodepto]
GO
ALTER TABLE [dbo].[estacionamiento]  WITH CHECK ADD  CONSTRAINT [FK_estacionamiento_depto] FOREIGN KEY([id_depto])
REFERENCES [dbo].[depto] ([id_depto])
GO
ALTER TABLE [dbo].[estacionamiento] CHECK CONSTRAINT [FK_estacionamiento_depto]
GO
ALTER TABLE [dbo].[inquilino]  WITH CHECK ADD  CONSTRAINT [FK_inquilino_estatus] FOREIGN KEY([cve_estatus])
REFERENCES [dbo].[estatus] ([cve_estatus])
GO
ALTER TABLE [dbo].[inquilino] CHECK CONSTRAINT [FK_inquilino_estatus]
GO
USE [master]
GO
ALTER DATABASE [depto] SET  READ_WRITE 
GO
