USE [DEV_CODES_APPDB]
GO
INSERT [T_BuildingApplicationInformation] ([BldgAppInfo_ID], [BldgAppInfo_EstimatedCost], [BldgAppInfo_Description], [BldgAppInfo_TypeOfWork], [BldgAppInfo_AdditionalInformation], [TransType_ID], [WorkType_ID], [PmtInfo_ID], [BldgAppInfo_ProjectType]) VALUES (N'BldAppInfo_1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [T_BuildingApplicationInformation] ([BldgAppInfo_ID], [BldgAppInfo_EstimatedCost], [BldgAppInfo_Description], [BldgAppInfo_TypeOfWork], [BldgAppInfo_AdditionalInformation], [TransType_ID], [WorkType_ID], [PmtInfo_ID], [BldgAppInfo_ProjectType]) VALUES (N'BldAppInfo_2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [T_BuildingApplicationInformation] ([BldgAppInfo_ID], [BldgAppInfo_EstimatedCost], [BldgAppInfo_Description], [BldgAppInfo_TypeOfWork], [BldgAppInfo_AdditionalInformation], [TransType_ID], [WorkType_ID], [PmtInfo_ID], [BldgAppInfo_ProjectType]) VALUES (N'BldAppInfo_3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)


INSERT [T_BuildingInformation] ([BldgInfo_ID], [BldgInfo_Name], [ParcelTax_ID], [bldgAppInfo_ID], [Address_ID]) VALUES (N'Bld-1', N'Mack Shack', N'Tax-12', NULL, N'Add_1')
INSERT [T_BuildingInformation] ([BldgInfo_ID], [BldgInfo_Name], [ParcelTax_ID], [bldgAppInfo_ID], [Address_ID]) VALUES (N'Bld-2', N'State Office', N'Tax-13', NULL, N'Add_2')
INSERT [T_BuildingInformation] ([BldgInfo_ID], [BldgInfo_Name], [ParcelTax_ID], [bldgAppInfo_ID], [Address_ID]) VALUES (N'Bld-3', N'Hannaford Plaza', N'Tax-14', NULL, N'Add_3')

INSERT [T_Address] ([Address_ID], [Address_1], [Address_2], [City], [StateName], [CountyName], [CountryName], [ZIP], [ZIP4_Format], [County_ID], [State_ID], [Country_ID]) VALUES (N'Add_1', N'99 Washington Avenue Suite 1130', N'OneCommerce Plaza', N'Albany', N'New York', N'Saratoga', N'United States Of America', 12231, 1, N' Cty_1', N'St_35', N'Con_1')
INSERT [T_Address] ([Address_ID], [Address_1], [Address_2], [City], [StateName], [CountyName], [CountryName], [ZIP], [ZIP4_Format], [County_ID], [State_ID], [Country_ID]) VALUES (N'Add_2', N'98 Washington Avenue Suite 1100', N'OneCommerce Plaza', N'Albany', N'New York', N'Saratoga', N'United States Of America', 12231, 1, N' Cty_1', N'St_35', N'Con_1')
INSERT [T_Address] ([Address_ID], [Address_1],  [City], [StateName], [CountyName], [CountryName], [ZIP], [ZIP4_Format], [County_ID], [State_ID], [Country_ID]) VALUES (N'Add_3', N'98 Central Avenue', N'Albany', N'New York', N'Saratoga', N'United States Of America', 12232, 1, N' Cty_1', N'St_35', N'Con_1')
INSERT [T_Address] ([Address_ID], [Address_1],  [City], [StateName], [CountyName], [CountryName], [ZIP], [ZIP4_Format], [County_ID], [State_ID], [Country_ID]) VALUES (N'Add_4', N'97 Guilderland', N'Albany', N'New York', N'Columbia', N'United States Of America', 12232, 1234, N' Cty_11', N'St_35', N'Con_1')


INSERT [T_IndividualInformation] ([IndiInfo_ID], [IndiInfo_FirstName], [IndiInfo_LastName], [IndiInfo_MiddleName], [IndiInfo_Suffix], [ContAdd_TelephoneNumber], [ContAdd_EmailID], [Address_ID], [BldgInfo_ID], [bldgAppInfo_ID], [StkHoldType_ID]) VALUES (N'Ind_1', N'Vincent', N'Jhon', NULL, N'Suf_2', N'111-222-1234', N'abc@gmail.com', N'Add_1', N'Bld-1', N'BldAppInfo_1', N'SH_1')
INSERT [T_IndividualInformation] ([IndiInfo_ID], [IndiInfo_FirstName], [IndiInfo_LastName], [IndiInfo_MiddleName], [IndiInfo_Suffix], [ContAdd_TelephoneNumber], [ContAdd_EmailID], [Address_ID], [BldgInfo_ID], [bldgAppInfo_ID], [StkHoldType_ID]) VALUES (N'Ind_2', N'Vincent', N'James', NULL, N'Suf_2', N'100-222-1234', N'abcd@gmail.com', N'Add_2', N'Bld-1', N'BldAppInfo_2', N'SH_1')
INSERT [T_IndividualInformation] ([IndiInfo_ID], [IndiInfo_FirstName], [IndiInfo_LastName], [IndiInfo_MiddleName], [IndiInfo_Suffix], [ContAdd_TelephoneNumber], [ContAdd_EmailID], [Address_ID], [BldgInfo_ID], [bldgAppInfo_ID], [StkHoldType_ID]) VALUES (N'Ind_3', N'Brain', N'Bing', NULL, N'Suf_2', N'100-200-1234', N'abcd12@gmail.com', N'Add_3', N'Bld-2', N'BldAppInfo_3', N'SH_2')

INSERT [T_OrganizationInformation] ([OrgInfo_ID], [OrgInfo_Name], [OrgInfo_Authority], [Address_ID], [StkHoldType_ID], [BldgInfo_ID], [BLdgAppInfo_ID], [BldgAppInfo_ContactPersonID]) VALUES (N'Org_1', N'SaratogaMuncipality', N'SaratogaAuthority', N'Add_1', N'SH_1', N'Bld-1', N'BldAppInfo_1', N'Ind_1')
INSERT [T_OrganizationInformation] ([OrgInfo_ID], [OrgInfo_Name], [OrgInfo_Authority], [Address_ID], [StkHoldType_ID], [BldgInfo_ID], [BLdgAppInfo_ID], [BldgAppInfo_ContactPersonID]) VALUES (N'Org_2', N'RensselaerMuncipality', N'RensselaerAuthority', N'Add_2', N'SH_1', N'Bld-2', N'BldAppInfo_2', N'Ind_2')

select * from [T_BuildingApplicationInformation]

select * from [T_BuildingInformation]

select * from [T_Address]

select * from [T_IndividualInformation]

select * from [T_OrganizationInformation]