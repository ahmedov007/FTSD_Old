USE [FTSD]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionTypes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionTypes](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_ActionTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActiveContract]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActiveContract](
	[ID] [uniqueidentifier] NOT NULL,
	[ContractNo] [nvarchar](15) NULL,
	[Name] [nvarchar](350) NULL,
	[ArabicName] [nvarchar](350) NULL,
	[RegionId] [int] NULL,
	[CompanyID] [uniqueidentifier] NULL,
	[BaasicDuration] [int] NULL,
	[OptionalDuration] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDat] [datetime] NULL,
	[BasicPeriodValue] [float] NULL,
	[OptionalPeriodValue] [float] NULL,
	[LumpSum] [float] NULL,
	[Uitrate] [float] NULL,
	[OptionalValue] [float] NULL,
	[CotractTotal] [float] NULL,
	[ContractTypeId] [int] NULL,
 CONSTRAINT [PK_ActiveContract2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmedmentTypes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmedmentTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_AmedmentAction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AthorityMatrix]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AthorityMatrix](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](350) NOT NULL,
	[ArabicName] [nvarchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_AthorityMatrix] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BidsTypes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BidsTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_BidsTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetPlan]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[Yearbudget] [int] NULL,
	[AnualPlan] [int] NULL,
	[Spentbudget] [int] NULL,
 CONSTRAINT [PK_BudgetPlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetYears]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetYears](
	[Id] [uniqueidentifier] NOT NULL,
	[YearName] [int] NULL,
 CONSTRAINT [PK_BudgeyYears] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BussinessUnit]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BussinessUnit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_BussinessUnit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapitalProjectAttachments]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapitalProjectAttachments](
	[Id] [uniqueidentifier] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[NoteDate] [datetime] NULL,
	[UserId] [nvarchar](450) NULL,
	[CapitalProjectId] [uniqueidentifier] NULL,
	[ProjectSatustsIdId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_CapitalProjectNotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapitalProjectNotes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapitalProjectNotes](
	[Id] [uniqueidentifier] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[CapitalProjectId] [uniqueidentifier] NULL,
	[NoteDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
	[ProjectStatusId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RequestNotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapitalProjects]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapitalProjects](
	[ID] [uniqueidentifier] NOT NULL,
	[ProjectNo] [nvarchar](100) NULL,
	[ContractNo] [nvarchar](100) NULL,
	[BudgetYearId] [uniqueidentifier] NULL,
	[RegionId] [int] NULL,
	[CityId] [int] NULL,
	[LandStatusId] [int] NULL,
	[BussinessUnitId] [int] NULL,
	[ProjetTypeId] [int] NULL,
	[ProjectName] [nvarchar](350) NULL,
	[ArabicProjectName] [nvarchar](350) NULL,
	[ProjectStatusId] [int] NULL,
	[PlanPercentage] [int] NULL,
	[ActualPercentage] [int] NULL,
	[ProjectDatesId] [int] NULL,
	[EstimatBudget] [int] NULL,
	[ContractCost] [int] NULL,
	[BudgetSpent] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_CapitalProject2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapitalProjectsTypes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapitalProjectsTypes](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegionId] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[ID] [uniqueidentifier] NOT NULL,
	[SAPNo] [nvarchar](50) NULL,
	[Name] [nvarchar](350) NULL,
	[NameArabic] [nvarchar](350) NULL,
	[CityId] [int] NULL,
	[Logo] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyContacts]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContacts](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](350) NULL,
	[NameArabic] [nvarchar](350) NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[Email] [nvarchar](350) NULL,
	[Mobile] [nvarchar](350) NULL,
	[OtherTitle] [nvarchar](350) NULL,
	[JobTitleId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_CompanyContacts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractsType]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractsType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_ContractsType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DucomentTypes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DucomentTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabiceName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_DucomentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[ArabicName] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[JobTitleId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FTSDRoles]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FTSDRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[ArabicName] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_FTSDRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTitles]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTitles](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[NameArabic] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_JobTitles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandStatus]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_landStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logos]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logos](
	[SiteNo] [float] NOT NULL,
	[Name] [varchar](255) NULL,
	[Ename] [varchar](255) NULL,
	[logo] [image] NULL,
	[Background] [image] NULL,
	[Elogo] [image] NULL,
	[EBackground] [image] NULL,
	[Active_Site] [bit] NOT NULL,
 CONSTRAINT [PK__logos__65370702] PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewContractAction]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewContractAction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](350) NULL,
	[ArabicName] [nvarchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_NewContractAction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewContracts]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewContracts](
	[ID] [uniqueidentifier] NOT NULL,
	[ContractName] [nvarchar](350) NOT NULL,
	[ArabicContractName] [nvarchar](350) NULL,
	[RegionId] [int] NOT NULL,
	[ContractTypeId] [int] NOT NULL,
	[RequestDate] [datetime] NOT NULL,
	[WavierDate] [datetime] NULL,
	[ContractRequestDate] [datetime] NULL,
	[JobexDate] [datetime] NULL,
	[OpenBidDate] [datetime] NULL,
	[BidEvaluationDate] [datetime] NULL,
	[AwardingApprovalDate] [datetime] NULL,
	[AthorityApproval] [int] NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[SigningDate] [datetime] NULL,
	[ContractorDate] [datetime] NULL,
	[NewContractActionId] [int] NULL,
 CONSTRAINT [PK_NewContracts2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](350) NULL,
	[NotificationContent] [nvarchar](max) NULL,
	[NotificationTypeId] [uniqueidentifier] NULL,
	[Sender] [nvarchar](450) NULL,
	[Receiver] [nvarchar](450) NULL,
	[Date] [datetime] NULL,
	[Url] [nvarchar](max) NULL,
	[IsRead] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationTypes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[NameArabic] [nvarchar](50) NULL,
	[Criticality] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_NotificationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationalContractNotes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationalContractNotes](
	[Id] [uniqueidentifier] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[ActiveContractId] [uniqueidentifier] NULL,
	[NoteDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_OperationalContractNotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpertionalContractNotes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpertionalContractNotes](
	[Id] [uniqueidentifier] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[NoteDate] [datetime] NULL,
	[UserId] [uniqueidentifier] NULL,
	[OperationalContractId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
	[DucomentTypeId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_OpertionalContractNotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDates]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RecevReq] [date] NULL,
	[PlannigDate] [date] NULL,
	[DesigningDate] [date] NULL,
	[BiddingDate] [date] NULL,
	[AwardingDate] [date] NULL,
	[completionDate] [date] NULL,
	[Closing] [date] NULL,
 CONSTRAINT [PK_ProjectDates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectSatuses]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectSatuses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_ProjectSatusts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTypes]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_ProjectType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 19/05/2022 11:55:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ArabicName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[NoDelete] [bit] NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ActionTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (1, N'New', N'جديد', 1, 0)
INSERT [dbo].[ActionTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (2, N'Re-new', N'تجديد', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[AmedmentTypes] ON 

INSERT [dbo].[AmedmentTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (1, N'Add / Delete', N'حذف/إضافة', 1, 0)
INSERT [dbo].[AmedmentTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (2, N'Delete', N'حذف', 1, 0)
INSERT [dbo].[AmedmentTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (3, N'Add', N'إضافة', 1, 0)
INSERT [dbo].[AmedmentTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (4, N'Extention', N'تمديد', 1, 0)
INSERT [dbo].[AmedmentTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (5, N'End', N'إنهاء', 1, 0)
SET IDENTITY_INSERT [dbo].[AmedmentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[AthorityMatrix] ON 

INSERT [dbo].[AthorityMatrix] ([ID], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (1, N'Department Manager', N'مدير إدارة', 1, 0)
INSERT [dbo].[AthorityMatrix] ([ID], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (2, N'Excutive Director', N'رئيس قطاع', 1, 0)
INSERT [dbo].[AthorityMatrix] ([ID], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (3, N'vice president', N'نائب نشاط', 1, 0)
INSERT [dbo].[AthorityMatrix] ([ID], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (4, N'CEO', N'رئيس تنفيذي', 1, 0)
INSERT [dbo].[AthorityMatrix] ([ID], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (5, N'High Board', N'اللجنة التنفيذية', 1, 0)
SET IDENTITY_INSERT [dbo].[AthorityMatrix] OFF
GO
INSERT [dbo].[BidsTypes] ([Id], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (N'74b8cd66-0b1c-42ab-bd46-4e3fdb575dad', N'Selective Bid', N'محدودة', 1, 0)
INSERT [dbo].[BidsTypes] ([Id], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (N'74b8cd66-0b1c-43ab-bd46-4e3fdb575dad', N'negotiable bid', N'تفاوضي', 1, 0)
INSERT [dbo].[BidsTypes] ([Id], [Name], [ArabicName], [IsActive], [IsDelete]) VALUES (N'74b8cd66-0b1c-44ab-bd46-4e3fdb575dad', N'Open Bid', N'عامة', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[BussinessUnit] ON 

INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (1, N'ISD', N'الأمن الصناعي', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (2, N'Generation', N'التوليد', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (3, N'National Grid', N'النقل', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (4, N'Distribution', N'التوزيع', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (5, N'Public Affairs', N'العلاقات العامة', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (6, N'HR', N'الموارد البشرية', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (7, N'Material', N'المواد', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (8, N'IT', N'تقنية المعلومات', 1, 0)
INSERT [dbo].[BussinessUnit] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (9, N'Other', N'أخرى', 1, 0)
SET IDENTITY_INSERT [dbo].[BussinessUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[ContractsType] ON 

INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (1, N'HVAC', N'التكييف', 1, 0)
INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (2, N'Multicraft', N'الأعمال المتعددة', 1, 0)
INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (3, N'Elevators', N'المصاعد', 1, 0)
INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (4, N'Janitorial', N'النظافة', 1, 0)
INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (5, N'Catering', N'التغذية', 1, 0)
INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (6, N'Postal Services', N'البريد', 1, 0)
INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (7, N'Manpower', N'العمالة', 1, 0)
INSERT [dbo].[ContractsType] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (8, N'Other', N'أخرى', 1, 0)
SET IDENTITY_INSERT [dbo].[ContractsType] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectSatuses] ON 

INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (1, N'Planning', N'قيد التخطيط', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (2, N'Designing', N'قيد التصميم', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (3, N'Bidding', N'قيد الطرح', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (4, N'Awarding', N'قيد الترسية', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (5, N'Ongoing', N'قيد التنفيذ', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (6, N'TCC', N'الإنجاز الفني', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (7, N'PAC', N'الاستلام الابتدائي', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (8, N'FAC', N'الاقفال المالي', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (9, N'Paused', N'متوقف ', 1, 0)
INSERT [dbo].[ProjectSatuses] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (10, N'Canceled', N'ملغي', 1, 0)
SET IDENTITY_INSERT [dbo].[ProjectSatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectTypes] ON 

INSERT [dbo].[ProjectTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (1, N'Design', N'تصميم', 1, 0)
INSERT [dbo].[ProjectTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (2, N'Build', N'إنشاء', 1, 0)
INSERT [dbo].[ProjectTypes] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (3, N'Design & Build', N'تصميم وإنشاء', 1, 0)
SET IDENTITY_INSERT [dbo].[ProjectTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (1, N'COA', N'المنطقة الوسطى', 1, 0)
INSERT [dbo].[Regions] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (2, N'WOA', N'المنطقة الغربية', 1, 0)
INSERT [dbo].[Regions] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (3, N'EOA', N'المنطقة الشرقية', 1, 0)
INSERT [dbo].[Regions] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (4, N'SOA', N'المنطقة الجنوبية', 1, 0)
INSERT [dbo].[Regions] ([ID], [Name], [ArabicName], [IsActive], [NoDelete]) VALUES (5, N'All Regions', N'جميع المناطق', 1, 0)
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
ALTER TABLE [dbo].[ActiveContract]  WITH CHECK ADD  CONSTRAINT [FK_ActiveContract_Companies] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([ID])
GO
ALTER TABLE [dbo].[ActiveContract] CHECK CONSTRAINT [FK_ActiveContract_Companies]
GO
ALTER TABLE [dbo].[ActiveContract]  WITH CHECK ADD  CONSTRAINT [FK_ActiveContract_ContractsType] FOREIGN KEY([ContractTypeId])
REFERENCES [dbo].[ContractsType] ([ID])
GO
ALTER TABLE [dbo].[ActiveContract] CHECK CONSTRAINT [FK_ActiveContract_ContractsType]
GO
ALTER TABLE [dbo].[ActiveContract]  WITH CHECK ADD  CONSTRAINT [FK_ActiveContract_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([ID])
GO
ALTER TABLE [dbo].[ActiveContract] CHECK CONSTRAINT [FK_ActiveContract_Regions]
GO
ALTER TABLE [dbo].[CapitalProjects]  WITH CHECK ADD  CONSTRAINT [FK_CapitalProject_BudgetYears] FOREIGN KEY([BudgetYearId])
REFERENCES [dbo].[BudgetYears] ([Id])
GO
ALTER TABLE [dbo].[CapitalProjects] CHECK CONSTRAINT [FK_CapitalProject_BudgetYears]
GO
ALTER TABLE [dbo].[CapitalProjects]  WITH CHECK ADD  CONSTRAINT [FK_CapitalProject_BussinessUnit] FOREIGN KEY([BussinessUnitId])
REFERENCES [dbo].[BussinessUnit] ([ID])
GO
ALTER TABLE [dbo].[CapitalProjects] CHECK CONSTRAINT [FK_CapitalProject_BussinessUnit]
GO
ALTER TABLE [dbo].[CapitalProjects]  WITH CHECK ADD  CONSTRAINT [FK_CapitalProject_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([ID])
GO
ALTER TABLE [dbo].[CapitalProjects] CHECK CONSTRAINT [FK_CapitalProject_Cities]
GO
ALTER TABLE [dbo].[CapitalProjects]  WITH CHECK ADD  CONSTRAINT [FK_CapitalProject_landStatus] FOREIGN KEY([LandStatusId])
REFERENCES [dbo].[LandStatus] ([ID])
GO
ALTER TABLE [dbo].[CapitalProjects] CHECK CONSTRAINT [FK_CapitalProject_landStatus]
GO
ALTER TABLE [dbo].[CapitalProjects]  WITH CHECK ADD  CONSTRAINT [FK_CapitalProjects_ProjectSatuses] FOREIGN KEY([ProjectStatusId])
REFERENCES [dbo].[ProjectSatuses] ([ID])
GO
ALTER TABLE [dbo].[CapitalProjects] CHECK CONSTRAINT [FK_CapitalProjects_ProjectSatuses]
GO
ALTER TABLE [dbo].[CapitalProjects]  WITH CHECK ADD  CONSTRAINT [FK_CapitalProjects_ProjectTypes] FOREIGN KEY([ProjetTypeId])
REFERENCES [dbo].[ProjectTypes] ([ID])
GO
ALTER TABLE [dbo].[CapitalProjects] CHECK CONSTRAINT [FK_CapitalProjects_ProjectTypes]
GO
ALTER TABLE [dbo].[CapitalProjects]  WITH CHECK ADD  CONSTRAINT [FK_CapitalProjects_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([ID])
GO
ALTER TABLE [dbo].[CapitalProjects] CHECK CONSTRAINT [FK_CapitalProjects_Regions]
GO
ALTER TABLE [dbo].[CompanyContacts]  WITH CHECK ADD  CONSTRAINT [FK_CompanyContacts_CompanyContacts] FOREIGN KEY([JobTitleId])
REFERENCES [dbo].[JobTitles] ([ID])
GO
ALTER TABLE [dbo].[CompanyContacts] CHECK CONSTRAINT [FK_CompanyContacts_CompanyContacts]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([JobTitleId])
REFERENCES [dbo].[JobTitles] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[NewContracts]  WITH CHECK ADD  CONSTRAINT [FK_NewContracts_AthorityMatrix] FOREIGN KEY([AthorityApproval])
REFERENCES [dbo].[AthorityMatrix] ([ID])
GO
ALTER TABLE [dbo].[NewContracts] CHECK CONSTRAINT [FK_NewContracts_AthorityMatrix]
GO
ALTER TABLE [dbo].[NewContracts]  WITH CHECK ADD  CONSTRAINT [FK_NewContracts_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([ID])
GO
ALTER TABLE [dbo].[NewContracts] CHECK CONSTRAINT [FK_NewContracts_Companies]
GO
ALTER TABLE [dbo].[NewContracts]  WITH CHECK ADD  CONSTRAINT [FK_NewContracts_ContractsType] FOREIGN KEY([ContractTypeId])
REFERENCES [dbo].[ContractsType] ([ID])
GO
ALTER TABLE [dbo].[NewContracts] CHECK CONSTRAINT [FK_NewContracts_ContractsType]
GO
ALTER TABLE [dbo].[NewContracts]  WITH CHECK ADD  CONSTRAINT [FK_NewContracts_NewContractAction] FOREIGN KEY([NewContractActionId])
REFERENCES [dbo].[NewContractAction] ([ID])
GO
ALTER TABLE [dbo].[NewContracts] CHECK CONSTRAINT [FK_NewContracts_NewContractAction]
GO
ALTER TABLE [dbo].[NewContracts]  WITH CHECK ADD  CONSTRAINT [FK_NewContracts_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([ID])
GO
ALTER TABLE [dbo].[NewContracts] CHECK CONSTRAINT [FK_NewContracts_Regions]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_NotificationTypes] FOREIGN KEY([NotificationTypeId])
REFERENCES [dbo].[NotificationTypes] ([Id])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_NotificationTypes]
GO
ALTER TABLE [dbo].[OpertionalContractNotes]  WITH CHECK ADD  CONSTRAINT [FK_OpertionalContractNotes_ActiveContract] FOREIGN KEY([OperationalContractId])
REFERENCES [dbo].[ActiveContract] ([ID])
GO
ALTER TABLE [dbo].[OpertionalContractNotes] CHECK CONSTRAINT [FK_OpertionalContractNotes_ActiveContract]
GO
ALTER TABLE [dbo].[OpertionalContractNotes]  WITH CHECK ADD  CONSTRAINT [FK_OpertionalContractNotes_DucomentTypes] FOREIGN KEY([DucomentTypeId])
REFERENCES [dbo].[DucomentTypes] ([Id])
GO
ALTER TABLE [dbo].[OpertionalContractNotes] CHECK CONSTRAINT [FK_OpertionalContractNotes_DucomentTypes]
GO
ALTER TABLE [dbo].[OpertionalContractNotes]  WITH CHECK ADD  CONSTRAINT [FK_OpertionalContractNotes_Employees] FOREIGN KEY([UserId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[OpertionalContractNotes] CHECK CONSTRAINT [FK_OpertionalContractNotes_Employees]
GO
ALTER TABLE [dbo].[OpertionalContractNotes]  WITH CHECK ADD  CONSTRAINT [FK_OpertionalContractNotes_NewContracts] FOREIGN KEY([OperationalContractId])
REFERENCES [dbo].[NewContracts] ([ID])
GO
ALTER TABLE [dbo].[OpertionalContractNotes] CHECK CONSTRAINT [FK_OpertionalContractNotes_NewContracts]
GO
