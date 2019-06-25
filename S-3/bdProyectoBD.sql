USE [master]
GO
/****** Object:  Database [ProyectoBDI]    Script Date: 6/25/2019 1:29:02 PM ******/
CREATE DATABASE [ProyectoBDI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoBDI', FILENAME = N'C:\bd\datos\ProyectoBDI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoBDI_log', FILENAME = N'C:\bd\bitacora\ProyectoBDI.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProyectoBDI] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoBDI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoBDI] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [ProyectoBDI] SET ANSI_NULLS ON 
GO
ALTER DATABASE [ProyectoBDI] SET ANSI_PADDING ON 
GO
ALTER DATABASE [ProyectoBDI] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [ProyectoBDI] SET ARITHABORT ON 
GO
ALTER DATABASE [ProyectoBDI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoBDI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoBDI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoBDI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoBDI] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [ProyectoBDI] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [ProyectoBDI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoBDI] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [ProyectoBDI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoBDI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoBDI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoBDI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoBDI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoBDI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoBDI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoBDI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoBDI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoBDI] SET RECOVERY FULL 
GO
ALTER DATABASE [ProyectoBDI] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoBDI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoBDI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoBDI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoBDI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoBDI] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProyectoBDI', N'ON'
GO
ALTER DATABASE [ProyectoBDI] SET QUERY_STORE = OFF
GO
USE [ProyectoBDI]
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
USE [ProyectoBDI]
GO
/****** Object:  Table [dbo].[bitacoraLINEAPEDIDO]    Script Date: 6/25/2019 1:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacoraLINEAPEDIDO](
	[codPedido] [numeric](10, 0) NULL,
	[codPrenda] [numeric](10, 0) NULL,
	[cantidad] [numeric](9, 0) NULL,
	[codOrdenProduccion] [numeric](10, 0) NULL,
	[precio] [numeric](10, 2) NULL,
	[fechaModificacion] [date] NULL,
	[username] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bitacoraPEDIDO]    Script Date: 6/25/2019 1:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacoraPEDIDO](
	[codPedido] [numeric](10, 0) NULL,
	[cedCliente] [numeric](10, 0) NULL,
	[fechaPedido] [date] NULL,
	[fechaEntrega] [date] NULL,
	[fechamodificacion] [date] NULL,
	[username] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 6/25/2019 1:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[CEDCLIENTE] [numeric](10, 0) NOT NULL,
	[TELEFONO] [numeric](15, 0) NOT NULL,
	[DIRCOBRO] [varchar](25) NOT NULL,
	[NOMBRE] [varchar](30) NOT NULL,
	[APELLIDOS] [varchar](30) NOT NULL,
	[DIRECCION] [varchar](50) NOT NULL,
 CONSTRAINT [CLIENTE_PK] PRIMARY KEY CLUSTERED 
(
	[CEDCLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONJUNTO]    Script Date: 6/25/2019 1:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONJUNTO](
	[CODCONJUNTO] [numeric](10, 0) NOT NULL,
	[CODPRENDA] [numeric](10, 0) NOT NULL,
	[CANTIDAD] [numeric](3, 0) NOT NULL,
 CONSTRAINT [CONJUNTO_PK] PRIMARY KEY CLUSTERED 
(
	[CODCONJUNTO] ASC,
	[CODPRENDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONVERSIONUNIDADMEDIDA]    Script Date: 6/25/2019 1:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONVERSIONUNIDADMEDIDA](
	[UNIDADORIGEN] [numeric](10, 0) NOT NULL,
	[UNIDADOBJETIVO] [numeric](10, 0) NOT NULL,
	[EQUIVALENCIA] [numeric](10, 5) NOT NULL,
 CONSTRAINT [CONVERSIONUNIDADMEDIDA_PK] PRIMARY KEY CLUSTERED 
(
	[UNIDADORIGEN] ASC,
	[UNIDADOBJETIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 6/25/2019 1:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[CODEMPLEADO] [numeric](10, 0) NOT NULL,
	[PUESTO] [varchar](20) NOT NULL,
	[SALARIO] [numeric](10, 0) NOT NULL,
	[TELEFONO] [numeric](15, 0) NOT NULL,
	[DIRECCION] [varchar](50) NOT NULL,
 CONSTRAINT [EMPLEADO_PK] PRIMARY KEY CLUSTERED 
(
	[CODEMPLEADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTILO]    Script Date: 6/25/2019 1:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTILO](
	[CODESTILO] [numeric](10, 0) NOT NULL,
	[COLOR] [varchar](10) NOT NULL,
	[DESCRIPCION] [varchar](30) NOT NULL,
 CONSTRAINT [ESTILO_PK] PRIMARY KEY CLUSTERED 
(
	[CODESTILO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LINEAORDENCOMPRA]    Script Date: 6/25/2019 1:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINEAORDENCOMPRA](
	[CODORDENCOMPRA] [numeric](10, 0) NOT NULL,
	[CODMATERIAL] [numeric](10, 0) NOT NULL,
	[UNIDADMEDIDA] [numeric](10, 0) NOT NULL,
	[CANTIDAD] [numeric](7, 0) NOT NULL,
 CONSTRAINT [LINEAORDENCOMPRA_PK] PRIMARY KEY CLUSTERED 
(
	[CODORDENCOMPRA] ASC,
	[CODMATERIAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LINEAPEDIDO]    Script Date: 6/25/2019 1:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINEAPEDIDO](
	[CODPEDIDO] [numeric](10, 0) NOT NULL,
	[CODPRENDA] [numeric](10, 0) NOT NULL,
	[CANTIDAD] [numeric](9, 0) NOT NULL,
	[PRECIO] [numeric](10, 2) NOT NULL,
	[CODORDENPRODUCCION] [numeric](10, 0) NULL,
 CONSTRAINT [LINEAPEDIDO_PK] PRIMARY KEY CLUSTERED 
(
	[CODPEDIDO] ASC,
	[CODPRENDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIALPRENDA]    Script Date: 6/25/2019 1:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIALPRENDA](
	[CODPRENDA] [numeric](10, 0) NOT NULL,
	[CODMATERIAL] [numeric](10, 0) NOT NULL,
	[UNIDADMEDIDA] [numeric](10, 0) NOT NULL,
	[CANTIDADREQUERIDA] [numeric](7, 2) NOT NULL,
 CONSTRAINT [MATERIALPRENDA_PK] PRIMARY KEY CLUSTERED 
(
	[CODPRENDA] ASC,
	[CODMATERIAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIAPRIMA]    Script Date: 6/25/2019 1:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIAPRIMA](
	[CODMATERIAL] [numeric](10, 0) NOT NULL,
	[UNIDADMEDIDA] [numeric](10, 0) NOT NULL,
	[CANTIDADMINIMA] [numeric](9, 3) NOT NULL,
	[COSTOUNITARIO] [numeric](9, 0) NOT NULL,
	[EXISTENCIAACTUAL] [numeric](9, 0) NOT NULL,
	[DESCRIPCION] [varchar](30) NOT NULL,
 CONSTRAINT [MATERIAPRIMA_PK] PRIMARY KEY CLUSTERED 
(
	[CODMATERIAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIAPROVEEDOR]    Script Date: 6/25/2019 1:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIAPROVEEDOR](
	[CODMATERIAL] [numeric](10, 0) NOT NULL,
	[CODPROVEEDOR] [numeric](10, 0) NOT NULL,
	[COSTOUNIDAD] [numeric](7, 0) NOT NULL,
	[CANTIDADMINIMA] [numeric](7, 0) NOT NULL,
	[DIASENTREGA] [numeric](7, 0) NOT NULL,
 CONSTRAINT [MATERIAPROVEEDOR_PK] PRIMARY KEY CLUSTERED 
(
	[CODMATERIAL] ASC,
	[CODPROVEEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDENCOMPRA]    Script Date: 6/25/2019 1:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDENCOMPRA](
	[CODORDENCOMPRA] [numeric](10, 0) NOT NULL,
	[CODPROVEEDOR] [numeric](10, 0) NOT NULL,
	[FECHAENTREGA] [date] NOT NULL,
	[FECHAEMISION] [date] NOT NULL,
 CONSTRAINT [ORDENCOMPRA_PK] PRIMARY KEY CLUSTERED 
(
	[CODORDENCOMPRA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDENESPERA]    Script Date: 6/25/2019 1:29:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDENESPERA](
	[CODORDENPRODUCCION] [numeric](10, 0) NOT NULL,
	[CODMATERIALFALTANTE] [numeric](10, 0) NOT NULL,
	[UNIDADMEDIDA] [numeric](10, 0) NOT NULL,
	[CODORDENCOMPRA] [numeric](10, 0) NULL,
	[CANTIDADFALTANTE] [numeric](7, 2) NOT NULL,
 CONSTRAINT [ORDENESPERA_PK] PRIMARY KEY CLUSTERED 
(
	[CODORDENPRODUCCION] ASC,
	[CODMATERIALFALTANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDENPRODUCCION]    Script Date: 6/25/2019 1:29:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDENPRODUCCION](
	[CODORDENPRODUCCION] [numeric](10, 0) NOT NULL,
	[CODPRENDA] [numeric](10, 0) NOT NULL,
	[CANTIDAD] [numeric](9, 0) NOT NULL,
	[ESTADO] [varchar](1) NOT NULL,
	[FECHAPROGRAMADA] [date] NOT NULL,
 CONSTRAINT [ORDENPRODUCCION_PK] PRIMARY KEY CLUSTERED 
(
	[CODORDENPRODUCCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDO]    Script Date: 6/25/2019 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDO](
	[CODPEDIDO] [numeric](10, 0) NOT NULL,
	[CEDCLIENTE] [numeric](10, 0) NOT NULL,
	[FECHAPEDIDO] [date] NOT NULL,
	[FECHAENTREGA] [date] NOT NULL,
 CONSTRAINT [PEDIDO_PK] PRIMARY KEY CLUSTERED 
(
	[CODPEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRENDA]    Script Date: 6/25/2019 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRENDA](
	[CODPRENDA] [numeric](10, 0) NOT NULL,
	[PRECIO] [numeric](10, 2) NOT NULL,
	[EXISTENCIAACTUAL] [numeric](9, 0) NOT NULL,
	[CODESTILO] [numeric](10, 0) NOT NULL,
	[TALLA] [varchar](3) NOT NULL,
 CONSTRAINT [PRENDA_PK] PRIMARY KEY CLUSTERED 
(
	[CODPRENDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[CODPROVEEDOR] [numeric](10, 0) NOT NULL,
	[NOMBRE] [varchar](30) NOT NULL,
	[TIPO] [varchar](1) NOT NULL,
	[DIRECCION] [varchar](50) NOT NULL,
	[TELEFONO] [numeric](15, 0) NOT NULL,
	[NBRCONTACTO] [varchar](20) NOT NULL,
 CONSTRAINT [PROVEEDOR_PK] PRIMARY KEY CLUSTERED 
(
	[CODPROVEEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOREXTRANGERO]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOREXTRANGERO](
	[CODPROVEEDOR] [numeric](10, 0) NOT NULL,
	[NBRBANCO] [varchar](20) NOT NULL,
	[CUENTABANCO] [numeric](20, 0) NOT NULL,
 CONSTRAINT [PROVEEDOREXTRANGERO_PK] PRIMARY KEY CLUSTERED 
(
	[CODPROVEEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDORNACIONAL]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDORNACIONAL](
	[CODPROVEEDOR] [numeric](10, 0) NOT NULL,
	[CEDJURIDICA] [numeric](15, 0) NOT NULL,
	[DIASCREDITO] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PROVEEDORNACIONAL_PK] PRIMARY KEY CLUSTERED 
(
	[CODPROVEEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PROVEEDORNACIONAL_UK1] UNIQUE NONCLUSTERED 
(
	[CEDJURIDICA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UNIDADMEDIDA]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIDADMEDIDA](
	[CODUNIDADMEDIDA] [numeric](10, 0) NOT NULL,
	[NBRMEDIDA] [varchar](20) NOT NULL,
	[DESCRIPCION] [varchar](50) NOT NULL,
 CONSTRAINT [UNIDADMEDIDA_PK] PRIMARY KEY CLUSTERED 
(
	[CODUNIDADMEDIDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CONJUNTO]  WITH CHECK ADD  CONSTRAINT [FK_CONJUNTO_PRENDA] FOREIGN KEY([CODCONJUNTO])
REFERENCES [dbo].[PRENDA] ([CODPRENDA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CONJUNTO] CHECK CONSTRAINT [FK_CONJUNTO_PRENDA]
GO
ALTER TABLE [dbo].[CONJUNTO]  WITH CHECK ADD  CONSTRAINT [FK_CONJUNTO_PRENDA1] FOREIGN KEY([CODCONJUNTO])
REFERENCES [dbo].[PRENDA] ([CODPRENDA])
GO
ALTER TABLE [dbo].[CONJUNTO] CHECK CONSTRAINT [FK_CONJUNTO_PRENDA1]
GO
ALTER TABLE [dbo].[CONVERSIONUNIDADMEDIDA]  WITH CHECK ADD  CONSTRAINT [CONVERSIONUNIDADMEDIDA_FK1] FOREIGN KEY([UNIDADORIGEN])
REFERENCES [dbo].[UNIDADMEDIDA] ([CODUNIDADMEDIDA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CONVERSIONUNIDADMEDIDA] CHECK CONSTRAINT [CONVERSIONUNIDADMEDIDA_FK1]
GO
ALTER TABLE [dbo].[CONVERSIONUNIDADMEDIDA]  WITH CHECK ADD  CONSTRAINT [CONVERSIONUNIDADMEDIDA_FK2] FOREIGN KEY([UNIDADOBJETIVO])
REFERENCES [dbo].[UNIDADMEDIDA] ([CODUNIDADMEDIDA])
GO
ALTER TABLE [dbo].[CONVERSIONUNIDADMEDIDA] CHECK CONSTRAINT [CONVERSIONUNIDADMEDIDA_FK2]
GO
ALTER TABLE [dbo].[LINEAORDENCOMPRA]  WITH CHECK ADD  CONSTRAINT [LINEAORDENCOMPRA_FK1] FOREIGN KEY([CODORDENCOMPRA])
REFERENCES [dbo].[ORDENCOMPRA] ([CODORDENCOMPRA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LINEAORDENCOMPRA] CHECK CONSTRAINT [LINEAORDENCOMPRA_FK1]
GO
ALTER TABLE [dbo].[LINEAORDENCOMPRA]  WITH CHECK ADD  CONSTRAINT [LINEAORDENCOMPRA_FK2] FOREIGN KEY([CODMATERIAL])
REFERENCES [dbo].[MATERIAPRIMA] ([CODMATERIAL])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LINEAORDENCOMPRA] CHECK CONSTRAINT [LINEAORDENCOMPRA_FK2]
GO
ALTER TABLE [dbo].[LINEAORDENCOMPRA]  WITH CHECK ADD  CONSTRAINT [LINEAORDENCOMPRA_FK3] FOREIGN KEY([UNIDADMEDIDA])
REFERENCES [dbo].[UNIDADMEDIDA] ([CODUNIDADMEDIDA])
GO
ALTER TABLE [dbo].[LINEAORDENCOMPRA] CHECK CONSTRAINT [LINEAORDENCOMPRA_FK3]
GO
ALTER TABLE [dbo].[LINEAPEDIDO]  WITH CHECK ADD  CONSTRAINT [LINEAPEDIDO_FK1] FOREIGN KEY([CODPEDIDO])
REFERENCES [dbo].[PEDIDO] ([CODPEDIDO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LINEAPEDIDO] CHECK CONSTRAINT [LINEAPEDIDO_FK1]
GO
ALTER TABLE [dbo].[LINEAPEDIDO]  WITH CHECK ADD  CONSTRAINT [LINEAPEDIDO_FK2] FOREIGN KEY([CODPRENDA])
REFERENCES [dbo].[PRENDA] ([CODPRENDA])
GO
ALTER TABLE [dbo].[LINEAPEDIDO] CHECK CONSTRAINT [LINEAPEDIDO_FK2]
GO
ALTER TABLE [dbo].[LINEAPEDIDO]  WITH CHECK ADD  CONSTRAINT [LINEAPEDIDO_FK3] FOREIGN KEY([CODORDENPRODUCCION])
REFERENCES [dbo].[ORDENPRODUCCION] ([CODORDENPRODUCCION])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LINEAPEDIDO] CHECK CONSTRAINT [LINEAPEDIDO_FK3]
GO
ALTER TABLE [dbo].[MATERIALPRENDA]  WITH CHECK ADD  CONSTRAINT [MATERIALPRENDA_FK1] FOREIGN KEY([UNIDADMEDIDA])
REFERENCES [dbo].[UNIDADMEDIDA] ([CODUNIDADMEDIDA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATERIALPRENDA] CHECK CONSTRAINT [MATERIALPRENDA_FK1]
GO
ALTER TABLE [dbo].[MATERIALPRENDA]  WITH CHECK ADD  CONSTRAINT [MATERIALPRENDA_FK2] FOREIGN KEY([CODPRENDA])
REFERENCES [dbo].[PRENDA] ([CODPRENDA])
GO
ALTER TABLE [dbo].[MATERIALPRENDA] CHECK CONSTRAINT [MATERIALPRENDA_FK2]
GO
ALTER TABLE [dbo].[MATERIALPRENDA]  WITH CHECK ADD  CONSTRAINT [MATERIALPRENDA_FK3] FOREIGN KEY([CODMATERIAL])
REFERENCES [dbo].[MATERIAPRIMA] ([CODMATERIAL])
GO
ALTER TABLE [dbo].[MATERIALPRENDA] CHECK CONSTRAINT [MATERIALPRENDA_FK3]
GO
ALTER TABLE [dbo].[MATERIAPRIMA]  WITH CHECK ADD  CONSTRAINT [MATERIAPRIMA_FK1] FOREIGN KEY([UNIDADMEDIDA])
REFERENCES [dbo].[UNIDADMEDIDA] ([CODUNIDADMEDIDA])
GO
ALTER TABLE [dbo].[MATERIAPRIMA] CHECK CONSTRAINT [MATERIAPRIMA_FK1]
GO
ALTER TABLE [dbo].[MATERIAPROVEEDOR]  WITH CHECK ADD  CONSTRAINT [MATERIAPROVEEDOR_FK1] FOREIGN KEY([CODPROVEEDOR])
REFERENCES [dbo].[PROVEEDOR] ([CODPROVEEDOR])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATERIAPROVEEDOR] CHECK CONSTRAINT [MATERIAPROVEEDOR_FK1]
GO
ALTER TABLE [dbo].[MATERIAPROVEEDOR]  WITH CHECK ADD  CONSTRAINT [MATERIAPROVEEDOR_FK2] FOREIGN KEY([CODMATERIAL])
REFERENCES [dbo].[MATERIAPRIMA] ([CODMATERIAL])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATERIAPROVEEDOR] CHECK CONSTRAINT [MATERIAPROVEEDOR_FK2]
GO
ALTER TABLE [dbo].[ORDENCOMPRA]  WITH CHECK ADD  CONSTRAINT [ORDENCOMPRA_FK1] FOREIGN KEY([CODPROVEEDOR])
REFERENCES [dbo].[PROVEEDOR] ([CODPROVEEDOR])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ORDENCOMPRA] CHECK CONSTRAINT [ORDENCOMPRA_FK1]
GO
ALTER TABLE [dbo].[ORDENESPERA]  WITH CHECK ADD  CONSTRAINT [ORDENESPERA_FK1] FOREIGN KEY([CODORDENPRODUCCION])
REFERENCES [dbo].[ORDENPRODUCCION] ([CODORDENPRODUCCION])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ORDENESPERA] CHECK CONSTRAINT [ORDENESPERA_FK1]
GO
ALTER TABLE [dbo].[ORDENESPERA]  WITH CHECK ADD  CONSTRAINT [ORDENESPERA_FK2] FOREIGN KEY([CODMATERIALFALTANTE])
REFERENCES [dbo].[MATERIAPRIMA] ([CODMATERIAL])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ORDENESPERA] CHECK CONSTRAINT [ORDENESPERA_FK2]
GO
ALTER TABLE [dbo].[ORDENESPERA]  WITH CHECK ADD  CONSTRAINT [ORDENESPERA_FK3] FOREIGN KEY([UNIDADMEDIDA])
REFERENCES [dbo].[UNIDADMEDIDA] ([CODUNIDADMEDIDA])
GO
ALTER TABLE [dbo].[ORDENESPERA] CHECK CONSTRAINT [ORDENESPERA_FK3]
GO
ALTER TABLE [dbo].[ORDENESPERA]  WITH CHECK ADD  CONSTRAINT [ORDENESPERA_ORDENCOMPRA_FK1] FOREIGN KEY([CODORDENCOMPRA])
REFERENCES [dbo].[ORDENCOMPRA] ([CODORDENCOMPRA])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ORDENESPERA] CHECK CONSTRAINT [ORDENESPERA_ORDENCOMPRA_FK1]
GO
ALTER TABLE [dbo].[ORDENPRODUCCION]  WITH CHECK ADD  CONSTRAINT [ORDENPRODUCCION_FK2] FOREIGN KEY([CODPRENDA])
REFERENCES [dbo].[PRENDA] ([CODPRENDA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ORDENPRODUCCION] CHECK CONSTRAINT [ORDENPRODUCCION_FK2]
GO
ALTER TABLE [dbo].[PEDIDO]  WITH CHECK ADD  CONSTRAINT [PEDIDO_FK1] FOREIGN KEY([CEDCLIENTE])
REFERENCES [dbo].[CLIENTE] ([CEDCLIENTE])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDO] CHECK CONSTRAINT [PEDIDO_FK1]
GO
ALTER TABLE [dbo].[PRENDA]  WITH CHECK ADD  CONSTRAINT [PRENDA_FK1] FOREIGN KEY([CODESTILO])
REFERENCES [dbo].[ESTILO] ([CODESTILO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PRENDA] CHECK CONSTRAINT [PRENDA_FK1]
GO
ALTER TABLE [dbo].[PROVEEDOREXTRANGERO]  WITH CHECK ADD  CONSTRAINT [PROVEEDOREXTRANGERO_FK1] FOREIGN KEY([CODPROVEEDOR])
REFERENCES [dbo].[PROVEEDOR] ([CODPROVEEDOR])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PROVEEDOREXTRANGERO] CHECK CONSTRAINT [PROVEEDOREXTRANGERO_FK1]
GO
ALTER TABLE [dbo].[PROVEEDORNACIONAL]  WITH CHECK ADD  CONSTRAINT [PROVEEDORNACIONAL_FK1] FOREIGN KEY([CODPROVEEDOR])
REFERENCES [dbo].[PROVEEDOR] ([CODPROVEEDOR])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PROVEEDORNACIONAL] CHECK CONSTRAINT [PROVEEDORNACIONAL_FK1]
GO
ALTER TABLE [dbo].[ORDENPRODUCCION]  WITH CHECK ADD  CONSTRAINT [ORDENPRODUCCION_CHK1] CHECK  (([estado]='E' OR [estado]='A' OR [estado]='P' OR [estado]='T'))
GO
ALTER TABLE [dbo].[ORDENPRODUCCION] CHECK CONSTRAINT [ORDENPRODUCCION_CHK1]
GO
ALTER TABLE [dbo].[PRENDA]  WITH CHECK ADD  CONSTRAINT [PRENDA_CHK1] CHECK  (([talla]='XXL' OR [talla]='XL' OR [talla]='L' OR [talla]='M' OR [talla]='S'))
GO
ALTER TABLE [dbo].[PRENDA] CHECK CONSTRAINT [PRENDA_CHK1]
GO
ALTER TABLE [dbo].[PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [PROVEEDOR_CHK1] CHECK  (([tipo]='E' OR [tipo]='N'))
GO
ALTER TABLE [dbo].[PROVEEDOR] CHECK CONSTRAINT [PROVEEDOR_CHK1]
GO
/****** Object:  StoredProcedure [dbo].[cleanDatabase]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[cleanDatabase]
	as
	begin
		begin tran
			delete from PROVEEDOR
			delete from ORDENCOMPRA
			delete from PEDIDO
			delete from CLIENTE
			delete from CONJUNTO
			delete from ORDENPRODUCCION
			delete from CONVERSIONUNIDADMEDIDA
			delete from EMPLEADO
			delete from MATERIALPRENDA
			delete from PRENDA
			delete from ESTILO
			delete from MATERIAPRIMA
			delete from UNIDADMEDIDA
		commit
	end
GO
/****** Object:  StoredProcedure [dbo].[realizarRespaldoLog]    Script Date: 6/25/2019 1:29:08 PM ******/
-- Aparentemente no se hacen scripts para los jobs de la bd, pues estan a nivel de servidor --
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[realizarRespaldoLog]
	as
	begin
		begin try
			declare @nbr varchar(50)
			declare @nbrArchivo varchar(256)
			declare @fchArchivo varchar(20)
			declare @dia varchar(20)
			set @dia = DATENAME(weekday, getdate()) 
			set @fchArchivo = convert(varchar(20), getdate(), 105)
			set @nbrArchivo = 'C:\bd\respaldos\' + @dia + '\log\' + @fchArchivo + '.bak'
			print 'nbr archivo: ' + @nbrArchivo
			set @nbr = 'ProyectoBDI'
			backup log @nbr to disk = @nbrArchivo 
			with noformat, noinit, norewind, nounload, stats=10, checksum, no_truncate
		end try
		begin catch
			print 'Catcheado'
		end catch
	end
GO
/****** Object:  StoredProcedure [dbo].[realizarRespaldoT]    Script Date: 6/25/2019 1:29:08 PM ******/
-- Aparentemente no se hacen scripts para los jobs de la bd, pues estan a nivel de servidor --
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[realizarRespaldoT]
	as
	begin
		begin try
			declare @nbr varchar(50)
			declare @nbrArchivo varchar(256)
			declare @fchArchivo varchar(20)
			declare @dia varchar(20)
			set @dia = DATENAME(weekday, getdate()) 
			set @fchArchivo = convert(varchar(20), getdate(), 105)
			set @nbrArchivo = 'C:\bd\respaldos\' + @dia + '\' + @fchArchivo + '.bak'
			print 'nbr archivo: ' + @nbrArchivo
			set @nbr = 'ProyectoBDI'
			backup database @nbr to disk = @nbrArchivo 
			with noformat, noinit, skip, norewind, nounload, stats=5
		end try
		begin catch
			print 'Catcheado'
		end catch
	end
GO
/****** Object:  StoredProcedure [dbo].[registrarFaltantes]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[registrarFaltantes]
	as
	begin
		declare @vcodOP numeric(10)
		declare cOP cursor for(
			select CODORDENPRODUCCION from ORDENPRODUCCION
			where ESTADO='A')
		open cOP
		fetch next from cOP into @vcodOP
		while (@@FETCH_STATUS = 0)
		begin
			exec registrarFaltantesPorOP @vcodOP
			fetch next from cOP into @vcodOP
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[registrarFaltantesPorOP]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[registrarFaltantesPorOP]
	@codOP numeric(10)
	as
	begin
	declare @codMat numeric(10)
	declare @falta bit = 0
	declare cRec cursor for
		select CODMATERIAL from MATERIALPRENDA
		where CODPRENDA = (
			select CODPRENDA from ORDENPRODUCCION
			where CODORDENPRODUCCION = @codOP)
	open cRec
	fetch next from cRec into @codMat
	while (@@FETCH_STATUS = 0)
	begin
		exec registrarMaterialFaltante @codOrdenProduccion = @codOP, @codMaterial = @codMat, @esFaltante = @falta output
		fetch next from cRec into @codMat
	end
	close cRec
	deallocate cRec
	if (@falta = 1)
	begin
		begin tran
			update ORDENPRODUCCION set ESTADO='E' where CODORDENPRODUCCION = @codOP
		commit
	end
	else
	begin
		begin tran
			update ORDENPRODUCCION set ESTADO='L' where CODORDENPRODUCCION = @codOP
		commit
	end
	end
GO
/****** Object:  StoredProcedure [dbo].[registrarMaterialFaltante]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[registrarMaterialFaltante]
	@codOrdenProduccion numeric(10),
	@codMaterial numeric(10),
	@esFaltante bit output
	as
	begin
	--campos para el OP
	declare @vcodPrenda numeric(10) --
	declare @vcantidadOP numeric(10) --
	declare @vestado varchar(1) --
	--campos para MatPrenda
	declare @cantMatPrenda numeric(7,2) --
	declare @codUMMatPrenda numeric(10) --
	--para conversion de unidad
	declare @codUMMaterial numeric(10) --
	declare @equUMPvUMM numeric(10, 5) --
	--para la aritmetica final
	declare @cantTotalReq numeric(10, 2) --
	declare @resultResta float --
	--asignar valores OP
	declare cOP cursor for 
		select codprenda, cantidad, estado 
		from ordenProduccion op
		where op.CODORDENPRODUCCION = @codOrdenProduccion
	open cOP
	fetch cOP into @vcodPrenda, @vcantidadOP, @vestado

	declare cMP cursor for
		select cantidadRequerida cr, UNIDADMEDIDA um
		from MATERIALPRENDA tmp
		where tmp.CODPRENDA = @vcodPrenda and tmp.CODMATERIAL = @codMaterial

	open cMP
	fetch cMP into @cantMatPrenda, @codUMMatPrenda
	if @cantMatPrenda = null or @codUMMatPrenda = null --si no funciona cambiar por fetchstatus
	begin
		raiserror('La prenda no necesita ese material', 12, 1);
	end

	select @codUMMaterial = (select mp.UNIDADMEDIDA from MATERIAPRIMA mp 
							where mp.CODMATERIAL = @codMaterial)
	select @equUMPvUMM = 1
	if (@codUMMaterial <> @codUMMatPrenda)
	begin 
		select @equUMPvUMM = (select equivalencia from CONVERSIONUNIDADMEDIDA
								where UNIDADORIGEN=@codUMMaterial 
								and UNIDADOBJETIVO=@codUMMatPrenda)
		print cast(@codUMMatPrenda as varchar) + ' son ' + cast(@equUMPvUMM as varchar) + ' de ' + cast(@codUMMaterial as varchar)
	end
	Select @cantTotalReq = (@vcantidadOP * @cantMatPrenda) / @equUMPvUMM
	print 'La cantidad total requerida del material ' + CAST(@codMaterial as varchar) + ' es ' + cast(@cantTotalReq as varchar)
	--resta
	Select @resultResta = (Select existenciaactual from MATERIAPRIMA 
							where CODMATERIAL = @codMaterial) - @cantTotalReq
	if(@resultResta < 0)
	begin
		select @esFaltante = 1
		begin tran
			insert ORDENESPERA values (@codOrdenProduccion, @codMaterial, @codUMMaterial, null, cast(ceiling(ABS(@resultResta)) as numeric(7,2)))
			update MATERIAPRIMA set EXISTENCIAACTUAL = 0 where CODMATERIAL = @codMaterial 
		commit
	end
	else 
	begin
		begin tran
			update MATERIAPRIMA set EXISTENCIAACTUAL = @resultResta where CODMATERIAL = @codMaterial
		commit
	end
end
GO
/****** Object:  StoredProcedure [dbo].[rellenarBD]    Script Date: 6/25/2019 1:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[rellenarBD]
as
begin
	begin tran
		--proveedores
		insert into PROVEEDOR values (1, 'prov1', 'N', 'dirProv1', 1, 'contacto1')
		insert into PROVEEDOR values (2, 'prov2', 'N', 'dirProv2', 2, 'contacto2')

		--Clientes
		insert into CLIENTE values (1, 1, 'dircobro1', 'cliente1', 'apellido1', 'dir1')
		insert into CLIENTE values (2, 2, 'dircobro2', 'cliente2', 'apellido2', 'dir2')

		--UM
		insert into UNIDADMEDIDA values (1, 'Metro', 'Des Metro')
		insert into UNIDADMEDIDA values (2, 'Rollo', 'Des Rollo')
		insert into UNIDADMEDIDA values (3, 'Unidad', 'Des Unidad')
		insert into UNIDADMEDIDA values (4, 'Caja 40', 'Des Caja40')
		insert into UNIDADMEDIDA values (5, 'Bolsa 50', 'Des Bolsa50')

		--Conversiones
		insert into CONVERSIONUNIDADMEDIDA values (2, 1, 20)
		insert into CONVERSIONUNIDADMEDIDA values (4,3,40)
		insert into CONVERSIONUNIDADMEDIDA values (5,3,50)

		--Estilos
		insert into ESTILO values (1, 'Color1', 'Pantalon azul')
		insert into ESTILO values (2, 'Color2', 'Camisa Blanca')

		--Prendas
		insert into PRENDA values (1, 1, 1, 1,'XXL')
		insert into PRENDA values (2, 2, 2, 1, 'XL')
		insert into PRENDA values (3, 3, 3, 2, 'S')
		insert into PRENDA values (4, 4, 4, 2, 'M')

		--MateriaPrima
		insert into MATERIAPRIMA values (1, 2, 0, 1, 1, 'Tela azul')
		insert into MATERIAPRIMA values (2, 2, 0, 1, 1, 'Tela blanca')
		insert into MATERIAPRIMA values (3, 3, 0, 1, 100, 'Boton negro pant')
		insert into MATERIAPRIMA values (4, 3, 0, 1, 100, 'Boton cristalino camisa')
		insert into MATERIAPRIMA values (5, 2, 0, 1, 1, 'Hilo azul')
		insert into MATERIAPRIMA values (6, 2, 0, 1, 1, 'Hilo balnco camisa')
		insert into MATERIAPRIMA values (7, 3, 0, 1, 10, 'Zipper azul')

		--Solicitud
		insert into PEDIDO values(1, 1, '2019-09-02', '2019-09-10')
		insert into PEDIDO values(2, 2, '2019-09-10', '2019-09-18')

		--LineaSolicitud
		insert into LINEAPEDIDO values(1, 1, 20, 1, null)
		insert into LINEAPEDIDO values(1, 3, 20, 3, null)
		insert into LINEAPEDIDO values(2, 1, 15, 1, null)
		insert into LINEAPEDIDO values(2, 3, 15, 3, null)

		--OrdenProduccion
		insert into ORDENPRODUCCION values(1, 1, 35, 'A', '2019-09-08')
		insert into ORDENPRODUCCION values(2, 3, 35, 'A', '2019-09-08')

		--Receta
		insert into MATERIALPRENDA values(1, 1, 1, 1.5)
		insert into MATERIALPRENDA values(1, 3, 3, 2)
		insert into MATERIALPRENDA values(1, 5, 1, 8)
		insert into MATERIALPRENDA values(1, 7, 3, 1)
		insert into MATERIALPRENDA values(3, 2, 1, 1.5)
		insert into MATERIALPRENDA values(3, 4, 3, 6)
		insert into MATERIALPRENDA values(3, 6, 1, 12)
	commit
end
GO
USE [master]
GO
ALTER DATABASE [ProyectoBDI] SET  READ_WRITE 
GO
