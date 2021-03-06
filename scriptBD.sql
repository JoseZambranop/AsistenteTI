USE [master]
GO
/****** Object:  Database [AsistenteTI]    Script Date: 09/10/2021 1:23:10 ******/
CREATE DATABASE [AsistenteTI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AsistenteTI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AsistenteTI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AsistenteTI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AsistenteTI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AsistenteTI] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AsistenteTI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AsistenteTI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AsistenteTI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AsistenteTI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AsistenteTI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AsistenteTI] SET ARITHABORT OFF 
GO
ALTER DATABASE [AsistenteTI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AsistenteTI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AsistenteTI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AsistenteTI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AsistenteTI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AsistenteTI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AsistenteTI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AsistenteTI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AsistenteTI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AsistenteTI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AsistenteTI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AsistenteTI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AsistenteTI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AsistenteTI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AsistenteTI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AsistenteTI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AsistenteTI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AsistenteTI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AsistenteTI] SET  MULTI_USER 
GO
ALTER DATABASE [AsistenteTI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AsistenteTI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AsistenteTI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AsistenteTI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AsistenteTI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AsistenteTI] SET QUERY_STORE = OFF
GO
USE [AsistenteTI]
GO
/****** Object:  Table [dbo].[tabla_menu]    Script Date: 09/10/2021 1:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla_menu](
	[id_menu] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[permisos] [varchar](50) NULL,
 CONSTRAINT [PK_tabla_menu] PRIMARY KEY CLUSTERED 
(
	[id_menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla_pagina_por_usuario]    Script Date: 09/10/2021 1:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla_pagina_por_usuario](
	[id_pag] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[url] [varchar](50) NULL,
	[id_menu] [int] NULL,
 CONSTRAINT [PK_tabla_pagina_por_usuario] PRIMARY KEY CLUSTERED 
(
	[id_pag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[retornarForm]    Script Date: 09/10/2021 1:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[retornarForm](   
    @usuario varchar(50)
)
RETURNS TABLE
AS
RETURN
(
     select tgu.descripcion,  tgu.url from tabla_menu as tm  inner join tabla_pagina_por_usuario as tgu on tm.id_menu=tgu.id_menu 
 where tm.permisos like '%'+@usuario+'%'
)
GO
/****** Object:  Table [dbo].[tabla_usuarios]    Script Date: 09/10/2021 1:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla_usuarios](
	[id_user] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tabla_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tabla_pagina_por_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tabla_pagina_por_usuario_tabla_menu] FOREIGN KEY([id_menu])
REFERENCES [dbo].[tabla_menu] ([id_menu])
GO
ALTER TABLE [dbo].[tabla_pagina_por_usuario] CHECK CONSTRAINT [FK_tabla_pagina_por_usuario_tabla_menu]
GO
USE [master]
GO
ALTER DATABASE [AsistenteTI] SET  READ_WRITE 
GO
