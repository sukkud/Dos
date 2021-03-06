USE [master]
GO
/****** Object:  Database [DEV_CODES_APPDB]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  User [SVC\DOS SOs]    Script Date: 3/12/2018 11:50:19 AM ******/
CREATE USER [SVC\DOS SOs] FOR LOGIN [SVC\DOS SOs]
GO
/****** Object:  User [SVC\_vdunaka]    Script Date: 3/12/2018 11:50:19 AM ******/
CREATE USER [SVC\_vdunaka] FOR LOGIN [SVC\_vdunaka] WITH DEFAULT_SCHEMA=[SVC\_vdunaka]
GO
/****** Object:  User [SVC\_jgudimetla]    Script Date: 3/12/2018 11:50:19 AM ******/
CREATE USER [SVC\_jgudimetla] FOR LOGIN [SVC\_jgudimetla] WITH DEFAULT_SCHEMA=[SVC\_jgudimetla]
GO
ALTER ROLE [db_owner] ADD MEMBER [SVC\DOS SOs]
GO
/****** Object:  Schema [CODES]    Script Date: 3/12/2018 11:50:19 AM ******/
CREATE SCHEMA [CODES]
GO
/****** Object:  Schema [SVC\_jgudimetla]    Script Date: 3/12/2018 11:50:19 AM ******/
CREATE SCHEMA [SVC\_jgudimetla]
GO
/****** Object:  Schema [SVC\_vdunaka]    Script Date: 3/12/2018 11:50:19 AM ******/
CREATE SCHEMA [SVC\_vdunaka]
GO
/****** Object:  Table [CODES].[L_AdditionalFireSmokeFeatures]    Script Date: 3/12/2018 11:50:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_AdditionalFireSmokeFeatures](
	[AdditionalFireSmokeFeatures_ID] [varchar](10) NOT NULL,
	[AdditionalFireSmokeFeatures_Description] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdditionalFireSmokeFeatures_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_AsbestoesReason]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_ConstructionType]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_Country]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_County]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_FireBarriers]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_FirePartition]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_OccupancyTypes]    Script Date: 3/12/2018 11:50:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[L_OccupancyTypes](
	[OccupancyType_ID] [varchar](10) NOT NULL,
	[OccupancyType_Description] [varchar](50) NULL,
	[OccupancyType_Code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[OccupancyType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[L_ScreenName]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_SpecialDetailedReq]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_StakeHolderType]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_State]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_Suffix]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_TransactionType]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_WasterWaterSupplyType]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_WaterSupplyType]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[L_WorkType]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[T_Address]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[T_BuildingApplicationInformation]    Script Date: 3/12/2018 11:50:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingApplicationInformation](
	[BldgAppInfo_ID] [varchar](20) NOT NULL,
	[BldgAppInfo_Type] [varchar](10) NOT NULL,
	[BldgAppInfo_EstimatedCost] [varchar](15) NULL,
	[BldgAppInfo_Description] [varchar](2000) NULL,
	[BldgAppInfo_TypeOfWork] [varchar](10) NULL,
	[BldgAppInfo_AdditionalInformation] [varchar](2000) NULL,
	[TransType_ID] [varchar](10) NULL,
	[WorkType_ID] [varchar](10) NULL,
	[PmtInfo_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BldgAppInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_BuildingInformation]    Script Date: 3/12/2018 11:50:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_BuildingInformation](
	[BldgInfo_ID] [varchar](20) NOT NULL,
	[BldgInfo_Name] [varchar](150) NULL,
	[ParcelTax_ID] [varchar](20) NULL,
	[Application_ID] [varchar](20) NULL,
	[Address_ID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BldgInfo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CODES].[T_IndividualAdditionalInformation]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [CODES].[T_IndividualInformation]    Script Date: 3/12/2018 11:50:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CODES].[T_IndividualInformation](
	[IndiInfo_ID] [varchar](20) NOT NULL,
	[IndiInfo_FirstName] [varchar](75) NOT NULL,
	[IndiInfo_LastName] [varchar](75) NOT NULL,
	[IndiInfo_MiddleName] [varchar](75) NULL,
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
/****** Object:  Table [CODES].[T_OrganizationInformation]    Script Date: 3/12/2018 11:50:19 AM ******/
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
/****** Object:  Table [dbo].[temp_BPMData]    Script Date: 3/12/2018 11:50:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_BPMData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AppID] [varchar](10) NOT NULL,
	[UserID] [varchar](10) NOT NULL,
	[JsonData] [varchar](max) NULL,
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
ALTER TABLE [CODES].[T_BuildingApplicationInformation]  WITH CHECK ADD FOREIGN KEY([TransType_ID])
REFERENCES [CODES].[L_TransactionType] ([TransType_ID])
GO
ALTER TABLE [CODES].[T_BuildingApplicationInformation]  WITH CHECK ADD FOREIGN KEY([WorkType_ID])
REFERENCES [CODES].[L_WorkType] ([WorkType_ID])
GO
ALTER TABLE [CODES].[T_BuildingInformation]  WITH CHECK ADD FOREIGN KEY([Address_ID])
REFERENCES [CODES].[T_Address] ([Address_ID])
GO
ALTER TABLE [CODES].[T_BuildingInformation]  WITH CHECK ADD FOREIGN KEY([Application_ID])
REFERENCES [CODES].[T_BuildingApplicationInformation] ([BldgAppInfo_ID])
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
USE [master]
GO
ALTER DATABASE [DEV_CODES_APPDB] SET  READ_WRITE 
GO
