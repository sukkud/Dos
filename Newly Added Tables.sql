USE [master]
GO
/****** Object:  Database [DEV_CODES_APPDB]    Script Date: 3/27/2018 1:54:31 PM ******/
CREATE DATABASE [DEV_CODES_APPDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DEV_CODES_APPDB', FILENAME = N'J:\MSSQL12.DEVDW50299\MSSQL\DATA\DEV_CODES_APPDB.mdf' , SIZE = 102400000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DEV_CODES_APPDB_log', FILENAME = N'J:\MSSQL12.DEVDW50299\MSSQL\DATA\DEV_CODES_APPDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DEV_CODES_APPDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEV_CODES_APPDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEV_CODES_APPDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET RECOVERY FULL 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET  MULTI_USER 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DEV_CODES_APPDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DEV_CODES_APPDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DEV_CODES_APPDB', N'ON'
GO
USE [DEV_CODES_APPDB]
GO
/****** Object:  User [SVC\srvDOSSQLSVC]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE USER [SVC\srvDOSSQLSVC] FOR LOGIN [SVC\srvDOSSQLSVC] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SVC\DOS014DW5APP$]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE USER [SVC\DOS014DW5APP$] FOR LOGIN [SVC\DOS014DW5APP$] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SVC\DOS SOs]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE USER [SVC\DOS SOs] FOR LOGIN [SVC\DOS SOs]
GO
/****** Object:  User [SVC\_vdunaka]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE USER [SVC\_vdunaka] FOR LOGIN [SVC\_vdunaka] WITH DEFAULT_SCHEMA=[SVC\_vdunaka]
GO
/****** Object:  User [SVC\_jgudimetla]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE USER [SVC\_jgudimetla] FOR LOGIN [SVC\_jgudimetla] WITH DEFAULT_SCHEMA=[SVC\_jgudimetla]
GO
/****** Object:  User [srvDOSSQLSVC]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE USER [srvDOSSQLSVC] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [SVC\srvDOSSQLSVC]
GO
ALTER ROLE [db_owner] ADD MEMBER [SVC\DOS014DW5APP$]
GO
ALTER ROLE [db_owner] ADD MEMBER [SVC\DOS SOs]
GO
ALTER ROLE [db_owner] ADD MEMBER [srvDOSSQLSVC]
GO
/****** Object:  Schema [CODES]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE SCHEMA [CODES]
GO
/****** Object:  Schema [SVC\_jgudimetla]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE SCHEMA [SVC\_jgudimetla]
GO
/****** Object:  Schema [SVC\_vdunaka]    Script Date: 3/27/2018 1:54:32 PM ******/
CREATE SCHEMA [SVC\_vdunaka]
GO
/****** Object:  Table [CODES].[L_AdditionalFireSmokeFeatures]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_AdditionalFireSmokeFeatures](
	[AdditionalFireSmokeFeatures_ID] [varchar](10) NOT NULL,
	[AdditionalFireSmokeFeatures_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdditionalFireSmokeFeatures_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_AsbestoesReason]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_AsbestoesReason](
	[AsbestoesReason_ID] [varchar](10) NOT NULL,
	[AsbestoesReason_SDescription] [varchar](50) NOT NULL,
	[AsbestoesReason_LDescription] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AsbestoesReason_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_CilmateZone]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_CilmateZone](
	[CilmateZone_ID] [varchar](10) NOT NULL,
	[CilmateZone_Desciption] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CilmateZone_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_CompliancePath]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_CompliancePath](
	[CompliancePath_ID] [varchar](10) NOT NULL,
	[CompliancePath_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompliancePath_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_ComplianceSoftware]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_ComplianceSoftware](
	[ComplianceSoftware_ID] [varchar](10) NOT NULL,
	[ComplianceSoftware_Desciption] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ComplianceSoftware_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_ConstructionMaterials]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_ConstructionMaterials](
	[ConstruMatetial_ID] [varchar](10) NOT NULL,
	[ConstruMatetial_Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ConstruMatetial_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_ConstructionType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_ConstructionType](
	[ConstructionType_ID] [varchar](10) NOT NULL,
	[ConstructionType_Description] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ConstructionType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_Country]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_Country](
	[Country_ID] [varchar](10) NOT NULL,
	[Country_Name] [varchar](40) NULL,
	[Country_ShortName] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_County]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_County](
	[County_ID] [varchar](10) NOT NULL,
	[County_Name] [varchar](30) NULL,
	[State_ID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[County_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_EgressSystems]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_EgressSystems](
	[EgressSystems_ID] [varchar](10) NOT NULL,
	[EgressSystems_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EgressSystems_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_ElectricalServiceType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_ElectricalServiceType](
	[ElectricalServiceType_ID] [varchar](10) NOT NULL,
	[ElectricalServiceType_Desciption] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[ElectricalServiceType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_FireBarriers]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_FireBarriers](
	[FireBarriers_ID] [varchar](10) NOT NULL,
	[FireBarriers_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FireBarriers_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_FirePartition]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_FirePartition](
	[FirePartition_ID] [varchar](10) NOT NULL,
	[FirePartition_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FirePartition_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_FireProtectionSystem]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_FireProtectionSystem](
	[FireProtectionSystem_ID] [varchar](10) NOT NULL,
	[FireProtectionSystem_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FireProtectionSystem_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_FuelOilTanks]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_FuelOilTanks](
	[FuelOilTanks_ID] [varchar](10) NOT NULL,
	[FuelOilTanks_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FuelOilTanks_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_GasFuelOilType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_GasFuelOilType](
	[GasFuelOilType_ID] [varchar](10) NOT NULL,
	[GasFuelOilType_Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GasFuelOilType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_InspectionType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_InspectionType](
	[InspectionType_ID] [varchar](10) NOT NULL,
	[InspectionType_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InspectionType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_OccupancyTypes]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_OccupancyTypes](
	[OccupancyType_ID] [varchar](10) NOT NULL,
	[OccupancyType_Description] [varchar](60) NULL,
	[OccupancyType_Code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[OccupancyType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_PaymentType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_PaymentType](
	[PaymentType_ID] [varchar](10) NOT NULL,
	[PaymentType_Description] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_PropaneTanks]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_PropaneTanks](
	[PropaneTanks_ID] [varchar](10) NOT NULL,
	[PropaneTanks_Desciption] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PropaneTanks_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_RiskCategory]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_RiskCategory](
	[RiskCategory_ID] [varchar](10) NOT NULL,
	[RiskCategory_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RiskCategory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_ScreenName]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_ScreenName](
	[Screen_ID] [varchar](10) NOT NULL,
	[Screen_Name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Screen_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_SeismicDesignCategory]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_SeismicDesignCategory](
	[SeismicDesignCategory_ID] [varchar](10) NOT NULL,
	[SeismicDesignCategory_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SeismicDesignCategory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_SpecialDetailedReq]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_SpecialDetailedReq](
	[SpecialDetailedReq_ID] [varchar](10) NOT NULL,
	[SpecialDetailedReq_Description] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialDetailedReq_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_SpecialInspectionsType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_SpecialInspectionsType](
	[SpecialInspectionsType_ID] [varchar](10) NOT NULL,
	[SpecialInspectionsType_Desciption] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialInspectionsType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_StakeHolderType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_StakeHolderType](
	[StkHoldType_ID] [varchar](10) NOT NULL,
	[StkHoldType_Name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StkHoldType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_State]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_State](
	[State_ID] [varchar](10) NOT NULL,
	[State_Name] [varchar](30) NULL,
	[State_ShortName] [varchar](4) NULL,
	[Country_ID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_Suffix]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_Suffix](
	[Suffix_ID] [varchar](10) NOT NULL,
	[Suffix_Type] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Suffix_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_TransactionType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_TransactionType](
	[TransType_ID] [varchar](10) NOT NULL,
	[TransType_Name] [varchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_TypeOfElectricalSystem]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_TypeOfElectricalSystem](
	[ElectricalSystemType_ID] [varchar](10) NOT NULL,
	[ElectricalSystemType_Description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ElectricalSystemType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_ViolationType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_ViolationType](
	[ViolationType_ID] [varchar](10) NOT NULL,
	[ViolationType_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ViolationType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_WasterWaterSupplyType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_WasterWaterSupplyType](
	[WasterWaterSupplyType_ID] [varchar](10) NOT NULL,
	[WasterWaterSupplyType_Description] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[WasterWaterSupplyType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_WaterSupplyType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_WaterSupplyType](
	[WaterSupplyType_ID] [varchar](10) NOT NULL,
	[WaterSupplyType_Description] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[WaterSupplyType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_WorkType]    Script Date: 3/27/2018 1:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_WorkType](
	[WorkType_ID] [varchar](10) NOT NULL,
	[WorkTypeDescription] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_Address]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_Address](
	[Address_ID] [varchar](20) NOT NULL,
	[Address_1] [varchar](150) NOT NULL,
	[Address_2] [varchar](150) NULL,
	[City] [varchar](50) NOT NULL,
	[StateName] [varchar](30) NOT NULL,
	[CountyName] [varchar](30) NOT NULL,
	[CountryName] [varchar](40) NOT NULL,
	[ZIP] [int] NOT NULL,
	[ZIP4_Format] [int] NULL,
	[County_ID] [varchar](10) NULL,
	[State_ID] [varchar](10) NULL,
	[Country_ID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingApplicationCertificateInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingApplicationCertificateInformation](
	[BldgAppCertInfo_ID] [varchar](20) NOT NULL,
	[BldgAppCertInfo_IssueDate] [date] NOT NULL,
	[BldgAppCertInfo_ExpiryDate] [date] NOT NULL,
	[BldgAppCertInfo_RenewalDate] [date] NOT NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BldgAppCertInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingApplicationInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingApplicationInformation](
	[BldgAppInfo_ID] [varchar](20) NOT NULL,
	[BldgAppInfo_EstimatedCost] [varchar](15) NULL,
	[BldgAppInfo_Description] [varchar](2000) NULL,
	[BldgAppInfo_TypeOfWork] [varchar](10) NULL,
	[BldgAppInfo_AdditionalInformation] [varchar](1) NULL,
	[TransType_ID] [varchar](10) NULL,
	[WorkType_ID] [varchar](10) NULL,
	[PmtInfo_ID] [varchar](20) NULL,
	[BldgAppInfo_ProjectType] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[BldgAppInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingApplicationInspectionInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingApplicationInspectionInformation](
	[BldgAppInspInfo_ID] [varchar](20) NOT NULL,
	[BldgAppInspInfo_InspectionDate] [date] NOT NULL,
	[BldgAppInspInfo_ViolationDate] [date] NOT NULL,
	[ViolationType_ID] [varchar](10) NULL,
	[InspectionType_ID] [varchar](10) NULL,
	[PaymentType_ID] [varchar](10) NULL,
	[SpecialInspectionsType_ID] [varchar](10) NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BldgAppInspInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingApplicationStatus]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingApplicationStatus](
	[BldgAppStatus_ID] [varchar](20) NOT NULL,
	[BldgAppStatus_IssueDate] [date] NOT NULL,
	[BldgAppStatus_ExpireDate] [date] NOT NULL,
	[BldgAppStatus_RenewalDate] [date] NOT NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BldgAppStatus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingInformation](
	[BldgInfo_ID] [varchar](20) NOT NULL,
	[BldgInfo_Name] [varchar](150) NULL,
	[ParcelTax_ID] [varchar](20) NULL,
	[bldgAppInfo_ID] [varchar](20) NULL,
	[Address_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BldgInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingMiscellaneous]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingMiscellaneous](
	[BM_ID] [varchar](20) NOT NULL,
	[BM_MiscSpcInspections] [varchar](1) NOT NULL,
	[BM_MiscSpcInspectionDDL] [varchar](10) NULL,
	[BM_AsbestosSurvey] [varchar](1) NULL,
	[BM_AsbestosSurveyReason] [varchar](10) NULL,
	[BM_SubmissionOwnCodeReviews] [varchar](1) NOT NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingOccupancy_Height_Area]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingOccupancy_Height_Area](
	[BOHA_ID] [varchar](20) NOT NULL,
	[BOHA_OccupancyType] [varchar](10) NULL,
	[BOHA_ConstructionType] [varchar](10) NULL,
	[BOHA_MixedUse] [varchar](1) NULL,
	[BOHA_SprinklerSystem] [varchar](1) NULL,
	[BOHA_HeightStories] [int] NULL,
	[BOHA_HeightFeet] [varchar](12) NULL,
	[BOHA_LargestFloorArea] [varchar](12) NULL,
	[BOHA_TotalFloorArea] [varchar](12) NULL,
	[BOHA_OriginalConstructionYear] [int] NULL,
	[BOHA_MaterialAbandoned] [varchar](1) NULL,
	[BOHA_MaterialAbondonedList] [varchar](1000) NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BOHA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingVariance]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingVariance](
	[BV_ID] [varchar](20) NOT NULL,
	[BV_UniformCode] [varchar](1) NOT NULL,
	[BV_VarianceApplied] [varchar](1) NOT NULL,
	[BV_ReasonForNoVariance] [varchar](500) NULL,
	[BV_PetitionNumberAvailable] [varchar](1) NULL,
	[BV_PetitionNumber] [varchar](15) NULL,
	[BV_VarianceApproved] [varchar](1) NOT NULL,
	[BV_PreviousVariance] [varchar](1) NOT NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BV_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_CommentsInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_CommentsInformation](
	[Comment_ID] [varchar](20) NOT NULL,
	[Comment_ApplicantDescription] [varchar](500) NULL,
	[Comment_ReviewerDescription] [varchar](500) NULL,
	[Comment_ScreenName] [varchar](10) NOT NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_IndividualAdditionalInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_IndividualAdditionalInformation](
	[IndiAddInfo_ID] [varchar](20) NOT NULL,
	[IndiAddInfo_JobTitle] [varchar](45) NOT NULL,
	[IndiAddInfo_LicenseNumber] [int] NULL,
	[IndiAddInfo_LicenseType] [varchar](5) NULL,
	[IndiAddInfo_OwnerBehalf] [varchar](1) NULL,
	[IndiAddInfo_ViewApplication] [varchar](1) NULL,
	[IndiAddInfo_ModifyApplication] [varchar](1) NULL,
	[IndiAddInfo_DirectCommunication] [varchar](1) NULL,
	[IndiAddInfo_ScheduleInspection] [varchar](1) NULL,
	[IndiAddInfo_InsuranceCoverage] [varchar](10) NULL,
	[IndiInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IndiAddInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_IndividualInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_IndividualInformation](
	[IndiInfo_ID] [varchar](20) NOT NULL,
	[IndiInfo_FirstName] [varchar](75) NOT NULL,
	[IndiInfo_LastName] [varchar](75) NOT NULL,
	[IndiInfo_MiddleName] [varchar](3) NULL,
	[IndiInfo_Suffix] [varchar](10) NULL,
	[ContAdd_TelephoneNumber] [varchar](20) NULL,
	[ContAdd_EmailID] [varchar](150) NULL,
	[Address_ID] [varchar](20) NOT NULL,
	[BldgInfo_ID] [varchar](20) NOT NULL,
	[bldgAppInfo_ID] [varchar](20) NOT NULL,
	[StkHoldType_ID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IndiInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_OrganizationInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_OrganizationInformation](
	[OrgInfo_ID] [varchar](20) NOT NULL,
	[OrgInfo_Name] [varchar](250) NOT NULL,
	[OrgInfo_Authority] [varchar](250) NULL,
	[Address_ID] [varchar](20) NOT NULL,
	[StkHoldType_ID] [varchar](10) NULL,
	[BldgInfo_ID] [varchar](20) NOT NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
	[BldgAppInfo_ContactPersonID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrgInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_PayeeInformation]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_PayeeInformation](
	[PayeeInfo_ID] [varchar](20) NOT NULL,
	[PayeeInfo_IndInfo] [varchar](20) NULL,
	[PayeeInfo_PayeeBusinessName] [varchar](150) NULL,
	[PayeeInfo_PaymentType] [varchar](10) NULL,
	[PayeeInfo_CheckNumber] [varchar](20) NULL,
	[PayeeInfo_CheckAmount] [varchar](25) NULL,
	[PmtInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PayeeInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_Payment]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_Payment](
	[PmtInfo_ID] [varchar](20) NOT NULL,
	[PmtInfo_AmountDue] [varchar](15) NULL,
	[PmtInfo_AmountReceived] [varchar](15) NULL,
	[PmtInfo_OverPayment] [varchar](15) NULL,
	[PmtInfo_RefundDue] [varchar](15) NULL,
	[BLdgAppInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PmtInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_BPMData]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_BPMData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AppID] [varchar](10) NOT NULL,
	[UserID] [varchar](10) NOT NULL,
	[JsonData] [varchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_temp_BPMData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [CODES].[L_County]  WITH CHECK ADD FOREIGN KEY([State_ID])
REFERENCES [CODES].[L_State] ([State_ID])
GO
ALTER TABLE [CODES].[L_State]  WITH CHECK ADD FOREIGN KEY([Country_ID])
REFERENCES [CODES].[L_Country] ([Country_ID])
GO
ALTER TABLE [CODES].[T_Address]  WITH CHECK ADD FOREIGN KEY([County_ID])
REFERENCES [CODES].[L_County] ([County_ID])
GO
ALTER TABLE [CODES].[T_Address]  WITH CHECK ADD FOREIGN KEY([Country_ID])
REFERENCES [CODES].[L_Country] ([Country_ID])
GO
ALTER TABLE [CODES].[T_Address]  WITH CHECK ADD FOREIGN KEY([State_ID])
REFERENCES [CODES].[L_State] ([State_ID])
GO
ALTER TABLE [CODES].[T_BuildingApplicationCertificateInformation]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_BuildingApplicationInformation]  WITH CHECK ADD FOREIGN KEY([TransType_ID])
REFERENCES [CODES].[L_TransactionType] ([TransType_ID])
GO
ALTER TABLE [CODES].[T_BuildingApplicationInformation]  WITH CHECK ADD FOREIGN KEY([WorkType_ID])
REFERENCES [CODES].[L_WorkType] ([WorkType_ID])
GO
ALTER TABLE [CODES].[T_BuildingApplicationInspectionInformation]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_BuildingApplicationStatus]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_BuildingInformation]  WITH CHECK ADD FOREIGN KEY([Address_ID])
REFERENCES [CODES].[T_Address] ([Address_ID])
GO
ALTER TABLE [CODES].[T_BuildingInformation]  WITH CHECK ADD FOREIGN KEY([bldgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_BuildingMiscellaneous]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_BuildingOccupancy_Height_Area]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_BuildingOccupancy_Height_Area]  WITH CHECK ADD FOREIGN KEY([BOHA_ConstructionType])
REFERENCES [CODES].[L_ConstructionType] ([ConstructionType_ID])
GO
ALTER TABLE [CODES].[T_BuildingOccupancy_Height_Area]  WITH CHECK ADD FOREIGN KEY([BOHA_OccupancyType])
REFERENCES [CODES].[L_OccupancyTypes] ([OccupancyType_ID])
GO
ALTER TABLE [CODES].[T_BuildingVariance]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_CommentsInformation]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_CommentsInformation]  WITH CHECK ADD FOREIGN KEY([Comment_ScreenName])
REFERENCES [CODES].[L_ScreenName] ([Screen_ID])
GO
ALTER TABLE [CODES].[T_IndividualAdditionalInformation]  WITH CHECK ADD FOREIGN KEY([IndiInfo_ID])
REFERENCES [CODES].[T_IndividualInformation] ([IndiInfo_ID])
GO
ALTER TABLE [CODES].[T_IndividualInformation]  WITH CHECK ADD FOREIGN KEY([Address_ID])
REFERENCES [CODES].[T_Address] ([Address_ID])
GO
ALTER TABLE [CODES].[T_IndividualInformation]  WITH CHECK ADD FOREIGN KEY([bldgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_IndividualInformation]  WITH CHECK ADD FOREIGN KEY([BldgInfo_ID])
REFERENCES [CODES].[T_BuildingInformation] ([BldgInfo_ID])
GO
ALTER TABLE [CODES].[T_IndividualInformation]  WITH CHECK ADD FOREIGN KEY([IndiInfo_Suffix])
REFERENCES [CODES].[L_Suffix] ([Suffix_ID])
GO
ALTER TABLE [CODES].[T_OrganizationInformation]  WITH CHECK ADD FOREIGN KEY([Address_ID])
REFERENCES [CODES].[T_Address] ([Address_ID])
GO
ALTER TABLE [CODES].[T_OrganizationInformation]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
ALTER TABLE [CODES].[T_OrganizationInformation]  WITH CHECK ADD FOREIGN KEY([BldgAppInfo_ContactPersonID])
REFERENCES [CODES].[T_IndividualInformation] ([IndiInfo_ID])
GO
ALTER TABLE [CODES].[T_OrganizationInformation]  WITH CHECK ADD FOREIGN KEY([BldgInfo_ID])
REFERENCES [CODES].[T_BuildingInformation] ([BldgInfo_ID])
GO
ALTER TABLE [CODES].[T_PayeeInformation]  WITH CHECK ADD FOREIGN KEY([PayeeInfo_IndInfo])
REFERENCES [CODES].[T_IndividualInformation] ([IndiInfo_ID])
GO
ALTER TABLE [CODES].[T_PayeeInformation]  WITH CHECK ADD FOREIGN KEY([PayeeInfo_PaymentType])
REFERENCES [CODES].[L_PaymentType] ([PaymentType_ID])
GO
ALTER TABLE [CODES].[T_PayeeInformation]  WITH CHECK ADD FOREIGN KEY([PmtInfo_ID])
REFERENCES [CODES].[T_Payment] ([PmtInfo_ID])
GO
ALTER TABLE [CODES].[T_Payment]  WITH CHECK ADD FOREIGN KEY([BLdgAppInfo_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
GO
/****** Object:  StoredProcedure [CODES].[usp_getstackHolderInfo]    Script Date: 3/27/2018 1:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CODES].[usp_getstackHolderInfo]
	@SearchStr varchar(50),
	@type varchar(5)
AS
BEGIN
	SELECT 
    ads.[ZIP] AS [ZIP], 
    sh.[StkHoldType_ID] AS [StkHoldType_ID], 
    sh.[StkHoldType_Name] AS [StkHoldType_Name], 
    ii.[IndiInfo_FirstName] AS [IndiInfo_FirstName], 
    ii.[IndiInfo_LastName] AS [IndiInfo_LastName], 
    ii.[Address_ID] AS [Address_ID], 
    ads.[Address_1] AS [Address_1], 
    ads.[Address_2] AS [Address_2], 
    ads.[City] AS [City], 
    ads.[StateName] AS [StateName], 
    ads.[CountryName] AS [CountryName], 
    ads.[County_ID] AS [County_ID], 
    ads.[State_ID] AS [State_ID], 
    ads.[Country_ID] AS [Country_ID], 
    ii.[ContAdd_TelephoneNumber] AS [ContAdd_TelephoneNumber], 
    ii.[ContAdd_EmailID] AS [ContAdd_EmailID]
    FROM   [CODES].[L_StakeHolderType] AS sh
    INNER JOIN [CODES].[T_IndividualInformation] AS ii ON sh.[StkHoldType_ID] = ii.[StkHoldType_ID]
    INNER JOIN [CODES].[T_Address] AS ads ON ii.[Address_ID] = ads.[Address_ID]
    WHERE (ii.[IndiInfo_FirstName] LIKE '%'+@SearchStr+'%') OR (ii.[IndiInfo_LastName] LIKE '%'+@SearchStr+'%')
 
END
GO
USE [master]
GO
ALTER DATABASE [DEV_CODES_APPDB] SET  READ_WRITE 
GO
