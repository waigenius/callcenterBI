USE [CallCenter_DWH]
GO

/****** Object:  Table [dbo].[DimCallCharge]    Script Date: 09/07/2022 18:36:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCallCharge](
	[CallTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[CallTypeID] [int] NULL,
	[CallTypeLabel] [nvarchar](50) NULL,
	[Years] [int] NULL,
	[CallChargesPerMin] [numeric](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CallTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [CallCenter_DWH]
GO

/****** Object:  Table [dbo].[DimEmployee]    Script Date: 09/07/2022 18:39:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimEmployee](
	[EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [nvarchar](10) NULL,
	[EmployeeName] [nvarchar](255) NULL,
	[City] [nvarchar](30) NULL,
	[StateCD] [nvarchar](2) NULL,
	[ManagerName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [CallCenter_DWH]
GO

/****** Object:  Table [dbo].[FactCallsData]    Script Date: 09/07/2022 18:40:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactCallsData](
	[DateKey] [int] NULL,
	[EmployeeKey] [int] NULL,
	[CallTypeKey] [int] NULL,
	[TimeCall] [datetime] NULL,
	[CallDuration] [int] NULL,
	[CallAbandoned] [bit] NULL,
	[WaitTime] [nvarchar](15) NULL
) ON [PRIMARY]
GO
