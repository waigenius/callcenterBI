USE [CallCenter_ODS]
GO

/****** Object:  Table [dbo].[CallCharges]    Script Date: 09/07/2022 18:33:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CallCharges](
	[CallTypeID] [int] NULL,
	[CallTypeLabel] [nvarchar](50) NULL,
	[Years] [int] NULL,
	[CallChargesPerMin] [numeric](8, 2) NULL
) ON [PRIMARY]
GO


USE [CallCenter_ODS]
GO

/****** Object:  Table [dbo].[CallsData]    Script Date: 09/07/2022 18:35:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CallsData](
	[DateCall] [datetime] NULL,
	[TimeCall] [datetime] NULL,
	[CallDuration] [int] NULL,
	[CallAbandoned] [bit] NULL,
	[WaitTime] [nvarchar](15) NULL,
	[EmployeeID] [nvarchar](10) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[CallTypeID] [int] NULL,
	[CallTypeLabel] [nvarchar](50) NULL
) ON [PRIMARY]
GO


USE [CallCenter_ODS]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09/07/2022 18:35:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[EmployeeID] [nvarchar](10) NULL,
	[EmployeeName] [nvarchar](255) NULL,
	[City] [nvarchar](30) NULL,
	[StateCD] [nvarchar](2) NULL,
	[ManagerName] [nvarchar](255) NULL
) ON [PRIMARY]
GO

