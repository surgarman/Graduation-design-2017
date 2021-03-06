USE [master]
GO
/****** Object:  Database [Data]    Script Date: 2017/5/12 22:26:05 ******/
CREATE DATABASE [Data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Data', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Data.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Data_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Data_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Data] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Data] SET ARITHABORT OFF 
GO
ALTER DATABASE [Data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Data] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Data] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Data] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Data] SET  MULTI_USER 
GO
ALTER DATABASE [Data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Data] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Data]
GO
/****** Object:  Table [dbo].[Table_Class]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Class](
	[ClassID] [int] NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Customer]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[CustomerPhone] [varchar](50) NULL,
	[CustomerArea] [varchar](50) NULL,
	[CustomerAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Table_1_2] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Factory]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Factory](
	[FactoryID] [int] NOT NULL,
	[FactoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Factory] PRIMARY KEY CLUSTERED 
(
	[FactoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Goods]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Goods](
	[TableID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsID] [int] NOT NULL,
	[GoodsName] [varchar](50) NULL,
	[GoodsColour] [varchar](50) NULL,
	[GoodsUrl] [varchar](200) NULL,
	[FactoryID] [int] NULL,
	[Cost] [float] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_表1] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Order]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Order](
	[TableID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[GoodsID] [int] NOT NULL,
	[GoodsColour] [varchar](50) NOT NULL,
	[Bundle] [int] NOT NULL,
	[Num] [int] NOT NULL,
	[Sum] [decimal](18, 2) NOT NULL,
	[Remark] [varchar](200) NULL,
 CONSTRAINT [PK_Table_1_7] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_OrderInfo]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_OrderInfo](
	[OrderID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[GoodsFee] [decimal](18, 2) NULL,
	[ShipFee] [decimal](18, 2) NULL,
	[SumFee] [decimal](18, 2) NULL,
	[ShipType] [varchar](50) NULL,
	[ReceiverName] [varchar](50) NULL,
	[ReceiverPhone] [varchar](50) NULL,
	[ReceiverArea] [varchar](50) NULL,
	[ReceiverAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Table_1_1] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Price]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Price](
	[GoodsID] [int] NOT NULL,
	[Cost] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Sizenum] [int] NULL,
	[Wages] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Table_1_6] PRIMARY KEY CLUSTERED 
(
	[GoodsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Size]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Size](
	[TableID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsID] [int] NOT NULL,
	[GoodsSize] [int] NOT NULL,
	[Sign] [int] NULL,
 CONSTRAINT [PK_Table_Size] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Storage]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Storage](
	[StorageID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsID] [int] NULL,
	[GoodsColour] [varchar](50) NULL,
	[GoodsSize] [int] NULL,
	[Num] [int] NULL,
	[GoodsDate] [date] NULL,
	[sign] [int] NOT NULL,
 CONSTRAINT [PK_Table_1_5] PRIMARY KEY CLUSTERED 
(
	[StorageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Task]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Task](
	[TableID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsID] [int] NOT NULL,
	[GoodsColour] [varchar](50) NULL,
	[GoodsSize] [int] NOT NULL,
	[Num] [int] NULL,
	[UserID] [varchar](50) NULL,
	[TaskDate] [date] NULL,
	[Sign] [varchar](50) NULL,
	[Wages] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Table_1_4] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_TaskComplete]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_TaskComplete](
	[TableID] [int] NOT NULL,
	[GoodsID] [int] NULL,
	[GoodsColour] [varchar](50) NULL,
	[GoodsSize] [int] NULL,
	[Num] [int] NULL,
	[UserID] [varchar](50) NULL,
	[TaskDate] [date] NULL,
	[Wages] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Table_TaskComplete] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_User]    Script Date: 2017/5/12 22:26:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_User](
	[User_type] [varchar](50) NOT NULL,
	[User_id] [varchar](50) NOT NULL,
	[User_password] [varchar](50) NOT NULL,
	[User_name] [varchar](50) NULL,
	[User_sex] [varchar](50) NULL,
	[User_phone] [varchar](50) NULL,
	[User_lodadate] [date] NULL,
 CONSTRAINT [PK_Table_1_3] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Table_OrderInfo] ADD  CONSTRAINT [DF_Table_1_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Table_Size] ADD  CONSTRAINT [DF_Table_Size_Sign]  DEFAULT ((1)) FOR [Sign]
GO
ALTER TABLE [dbo].[Table_Storage] ADD  CONSTRAINT [DF_Table_1_GoodsDate]  DEFAULT (getdate()) FOR [GoodsDate]
GO
ALTER TABLE [dbo].[Table_Storage] ADD  CONSTRAINT [DF_Table_Storage_sign]  DEFAULT ((1)) FOR [sign]
GO
ALTER TABLE [dbo].[Table_Task] ADD  CONSTRAINT [DF_Table_1_TaskDate]  DEFAULT (getdate()) FOR [TaskDate]
GO
ALTER TABLE [dbo].[Table_TaskComplete] ADD  CONSTRAINT [DF_Table_TaskComplete_TaskDate]  DEFAULT (getdate()) FOR [TaskDate]
GO
ALTER TABLE [dbo].[Table_User] ADD  CONSTRAINT [DF_Table_1_User_lodadate]  DEFAULT (getdate()) FOR [User_lodadate]
GO
USE [master]
GO
ALTER DATABASE [Data] SET  READ_WRITE 
GO
