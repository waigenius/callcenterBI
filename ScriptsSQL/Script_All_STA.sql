USE [CallCenter_STA]
GO

/****** Object:  Table [dbo].[CallCharges]    Script Date: 09/07/2022 18:26:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CallCharges](
	[Call Type Key] [nvarchar](255) NULL,
	[Call Type ] [nvarchar](255) NULL,
	[Call Charges (2018)] [nvarchar](255) NULL,
	[Call Charges (2019)] [nvarchar](255) NULL,
	[Call Charges (2020)] [nvarchar](255) NULL,
	[Call Charges (2021)] [nvarchar](255) NULL
) ON [PRIMARY]
GO


USE [CallCenter_STA]
GO

/****** Object:  Table [dbo].[CallsData]    Script Date: 09/07/2022 18:27:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CallsData](
	[CallTimestamp] [nvarchar](255) NULL,
	[Call Type] [nvarchar](255) NULL,
	[EmployeeID] [nvarchar](255) NULL,
	[CallDuration] [nvarchar](255) NULL,
	[WaitTime] [nvarchar](255) NULL,
	[CallAbandoned] [nvarchar](255) NULL
) ON [PRIMARY]
GO


USE [CallCenter_STA]
GO

/****** Object:  Table [dbo].[Fonctional_Rejects]    Script Date: 09/07/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fonctional_Rejects](
	[Reject_date] [datetime] NULL,
	[Reject_task] [nvarchar](255) NULL,
	[Reject_column] [nvarchar](255) NULL,
	[Reject_message] [nvarchar](1000) NULL,
	[Nb_rows] [int] NULL
) ON [PRIMARY]
GO


USE [CallCenter_STA]
GO

/****** Object:  Table [dbo].[LookupDataCallTypes]    Script Date: 09/07/2022 18:28:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LookupDataCallTypes](
	[CallTypeID] [nvarchar](255) NULL,
	[CallTypeLabel] [nvarchar](255) NULL
) ON [PRIMARY]
GO


USE [CallCenter_STA]
GO

/****** Object:  Table [dbo].[LookupDataEmployee]    Script Date: 09/07/2022 18:29:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LookupDataEmployee](
	[EmployeeID] [nvarchar](255) NULL,
	[EmployeeName] [nvarchar](255) NULL,
	[Site] [nvarchar](255) NULL,
	[ManagerName] [nvarchar](255) NULL
) ON [PRIMARY]
GO


USE [CallCenter_STA]
GO

/****** Object:  Table [dbo].[Technical_Rejects]    Script Date: 09/07/2022 18:31:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Technical_Rejects](
	[Reject_date] [datetime] NULL,
	[Reject_task] [nvarchar](255) NULL,
	[Reject_column] [nvarchar](255) NULL,
	[Reject_message] [nvarchar](1000) NULL
) ON [PRIMARY]
GO


USE [CallCenter_STA]
GO

/****** Object:  Table [dbo].[USStates]    Script Date: 09/07/2022 18:32:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[USStates](
	[StateCD] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL
) ON [PRIMARY]
GO
