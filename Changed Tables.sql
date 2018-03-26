CREATE TABLE [dbo].[T_BuildingInformation] (
    [BldgInfo_ID]    VARCHAR (20)  NOT NULL,
    [BldgInfo_Name]  VARCHAR (150) NULL,
    [ParcelTax_ID]   VARCHAR (20)  NULL,
    [bldgAppInfo_ID] VARCHAR (20)  NULL,
    [Address_ID]     VARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([BldgInfo_ID] ASC),
    FOREIGN KEY ([Address_ID]) REFERENCES [dbo].[T_Address] ([Address_ID])
);

CREATE TABLE [dbo].[T_BuildingApplicationInformation] (
    [BldgAppInfo_ID]                    VARCHAR (20)   NOT NULL,
    [BldgAppInfo_EstimatedCost]         VARCHAR (15)   NULL,
    [BldgAppInfo_Description]           VARCHAR (2000) NULL,
    [BldgAppInfo_TypeOfWork]            VARCHAR (10)   NULL,
    [BldgAppInfo_AdditionalInformation] VARCHAR (1)    NULL,
    [TransType_ID]                      VARCHAR (10)   NULL,
    [WorkType_ID]                       VARCHAR (10)   NULL,
    [PmtInfo_ID]                        VARCHAR (20)   NULL,
    [BldgAppInfo_ProjectType]           VARCHAR (40)   NULL,
    PRIMARY KEY CLUSTERED ([BldgAppInfo_ID] ASC),
    FOREIGN KEY ([TransType_ID]) REFERENCES [dbo].[L_TransactionType] ([TransType_ID]),
    FOREIGN KEY ([WorkType_ID]) REFERENCES [dbo].[L_WorkType] ([WorkType_ID])
);

