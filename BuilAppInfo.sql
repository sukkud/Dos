USE [DEV_CODES_APPDB]
GO
/****** Object:  Table [CODES].[T_BuildingApplicationInformation]    Script Date: 3/23/2018 10:57:06 AM ******/
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
ALTER TABLE [CODES].[T_BuildingApplicationInformation]  WITH CHECK ADD FOREIGN KEY([TransType_ID])
REFERENCES [CODES].[L_TransactionType] ([TransType_ID])
GO
ALTER TABLE [CODES].[T_BuildingApplicationInformation]  WITH CHECK ADD FOREIGN KEY([WorkType_ID])
REFERENCES [CODES].[L_WorkType] ([WorkType_ID])
GO
