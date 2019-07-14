USE [MAPSysDB]
GO
/****** Object:  Table [dbo].[HRDeptManager]    Script Date: 2019/7/15 7:31:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRDeptManager](
	[DeptCode] [nvarchar](100) NOT NULL,
	[ManagerUserID] [nvarchar](100) NOT NULL,
	[ActiveDate] [datetime] NOT NULL,
	[InactiveDate] [datetime] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[LastUpdatedBy] [nvarchar](100) NOT NULL,
	[LastUpdateLogin] [nvarchar](100) NULL,
 CONSTRAINT [HRDeptManager_PK] PRIMARY KEY CLUSTERED 
(
	[DeptCode] ASC,
	[ManagerUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HRDeptTree]    Script Date: 2019/7/15 7:31:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRDeptTree](
	[FullDeptCode] [nvarchar](100) NOT NULL,
	[FullDeptName] [nvarchar](250) NOT NULL,
	[IsActiveDept] [nvarchar](1) NOT NULL,
	[DeptCode1] [nvarchar](100) NOT NULL,
	[DeptName1] [nvarchar](100) NOT NULL,
	[DeptLay1] [int] NOT NULL,
	[DeptCode2] [nvarchar](100) NULL,
	[DeptName2] [nvarchar](100) NULL,
	[DeptLay2] [int] NULL,
	[DeptCode3] [nvarchar](100) NULL,
	[DeptName3] [nvarchar](100) NULL,
	[DeptLay3] [int] NULL,
	[DeptCode4] [nvarchar](100) NULL,
	[DeptName4] [nvarchar](100) NULL,
	[DeptLay4] [int] NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[LastUpdatedBy] [nvarchar](100) NOT NULL,
	[LastUpdateLogin] [nvarchar](100) NULL,
 CONSTRAINT [HRDeptTree_PK] PRIMARY KEY CLUSTERED 
(
	[FullDeptCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HREmployee]    Script Date: 2019/7/15 7:31:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HREmployee](
	[UserID] [nvarchar](100) NOT NULL,
	[EmployeeCode] [nvarchar](100) NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[EntryDate] [datetime] NULL,
	[ExitDate] [datetime] NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[SocialID] [nvarchar](100) NOT NULL,
	[MobilePhone] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PYName] [nvarchar](250) NOT NULL,
	[OrgCode] [nvarchar](100) NOT NULL,
	[DeptCode] [nvarchar](100) NULL,
	[ResidencePlaceCode] [nvarchar](100) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[LastUpdatedBy] [nvarchar](100) NOT NULL,
	[LastUpdateLogin] [nvarchar](100) NULL,
 CONSTRAINT [HREmployee_PK] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
