USE [ProjectManagement]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasksHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasksHistory] DROP CONSTRAINT IF EXISTS [FK_tblTasksHistory_TaskStatus_4c4d3R]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasksHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasksHistory] DROP CONSTRAINT IF EXISTS [FK__tblTasksH__TaskI__5070F446]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasksHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasksHistory] DROP CONSTRAINT IF EXISTS [FK__tblTasksH__ListI__4F7CD00D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasks]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasks] DROP CONSTRAINT IF EXISTS [FK_tblTasks_TaskStatus_4c4d]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasks]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasks] DROP CONSTRAINT IF EXISTS [FK__tblTasks__Projec__4D94879B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasks]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasks] DROP CONSTRAINT IF EXISTS [FK__tblTasks__ListID__4CA06362]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProjects]') AND type in (N'U'))
ALTER TABLE [dbo].[tblProjects] DROP CONSTRAINT IF EXISTS [FK__tblProjec__Space__4BAC3F29]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblList]') AND type in (N'U'))
ALTER TABLE [dbo].[tblList] DROP CONSTRAINT IF EXISTS [FK__tblList__Project__4AB81AF0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDocuments]') AND type in (N'U'))
ALTER TABLE [dbo].[tblDocuments] DROP CONSTRAINT IF EXISTS [FK__tblDocume__TaskI__49C3F6B7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCustomFields]') AND type in (N'U'))
ALTER TABLE [dbo].[tblCustomFields] DROP CONSTRAINT IF EXISTS [FK__tblCustom__Proje__48CFD27E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCheckList]') AND type in (N'U'))
ALTER TABLE [dbo].[tblCheckList] DROP CONSTRAINT IF EXISTS [FK__tblCheckL__TaskI__47DBAE45]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasksHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasksHistory] DROP CONSTRAINT IF EXISTS [DF__tblTasksH__Depar__46E78A0C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTasks]') AND type in (N'U'))
ALTER TABLE [dbo].[tblTasks] DROP CONSTRAINT IF EXISTS [DF__tblTasks__Depart__45F365D3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSpace]') AND type in (N'U'))
ALTER TABLE [dbo].[tblSpace] DROP CONSTRAINT IF EXISTS [DF__tblSpace__Module__44FF419A]
GO
/****** Object:  Table [dbo].[tblTaskStatus]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblTaskStatus]
GO
/****** Object:  Table [dbo].[tblTasksHistory]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblTasksHistory]
GO
/****** Object:  Table [dbo].[tblTasks]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblTasks]
GO
/****** Object:  Table [dbo].[tblSpace]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblSpace]
GO
/****** Object:  Table [dbo].[tblProjects]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblProjects]
GO
/****** Object:  Table [dbo].[tblList]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblList]
GO
/****** Object:  Table [dbo].[tblDocuments]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblDocuments]
GO
/****** Object:  Table [dbo].[tblCustomFields]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblCustomFields]
GO
/****** Object:  Table [dbo].[tblCheckList]    Script Date: 17-09-2020 23:46:42 ******/
DROP TABLE IF EXISTS [dbo].[tblCheckList]
GO
/****** Object:  Table [dbo].[tblCheckList]    Script Date: 17-09-2020 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCheckList](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [varchar](100) NULL,
	[CheckListName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCustomFields]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomFields](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [varchar](100) NOT NULL,
	[ModuleID] [varchar](100) NOT NULL,
	[Revision] [varchar](10) NULL,
	[FieldName] [nvarchar](100) NOT NULL,
	[FieldValue] [nvarchar](100) NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_CustomID] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocuments]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocuments](
	[DID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentID] [varchar](100) NULL,
	[TaskID] [varchar](100) NULL,
	[Files] [nvarchar](1000) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblList]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblList](
	[LID] [int] IDENTITY(1,1) NOT NULL,
	[ListID] [varchar](100) NOT NULL,
	[ProjectID] [varchar](100) NULL,
	[ModuleID] [varchar](100) NULL,
	[ListName] [nvarchar](500) NULL,
	[ListOwnerID] [int] NULL,
	[ListStatus] [varchar](100) NULL,
	[Active] [varchar](1) NULL,
	[ListSeq] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ListID] PRIMARY KEY CLUSTERED 
(
	[ListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProjects]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProjects](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [varchar](100) NOT NULL,
	[ProjectName] [nvarchar](250) NOT NULL,
	[SpaceID] [varchar](100) NULL,
	[ModuleID] [varchar](100) NULL,
	[ProjectStatus] [int] NULL,
	[ProjectPhases] [varchar](10) NULL,
	[ProjectManager] [int] NULL,
	[ProjectStartDate] [datetime] NULL,
	[TargetDate] [datetime] NULL,
	[Resources] [int] NULL,
	[ActualDate] [datetime] NULL,
	[CurrentDate] [datetime] NULL,
	[OriginalPlanDate] [datetime] NULL,
	[OverridePlanDate] [datetime] NULL,
	[Revision] [varchar](50) NULL,
	[ParentProjectID] [varchar](100) NULL,
	[IsActive] [varchar](1) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProjectID] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpace]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpace](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SpaceID] [varchar](100) NOT NULL,
	[SpaceName] [nvarchar](250) NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModuleID] [varchar](100) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SpaceID] PRIMARY KEY CLUSTERED 
(
	[SpaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTasks]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTasks](
	[TID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [varchar](100) NOT NULL,
	[ListID] [varchar](100) NULL,
	[ProjectID] [varchar](100) NULL,
	[DepartmentID] [int] NULL,
	[TaskName] [nvarchar](2000) NULL,
	[TaskStatus] [int] NULL,
	[Assignee] [varchar](50) NULL,
	[TaskParent] [int] NULL,
	[IsRequired] [varchar](1) NULL,
	[StartDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[EstimatedEfforts] [decimal](10, 2) NULL,
	[CompletedEfforts] [decimal](10, 2) NULL,
	[Priority] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_TaskID] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTasksHistory]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTasksHistory](
	[TID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [varchar](100) NULL,
	[ListID] [varchar](100) NULL,
	[DepartmentID] [int] NULL,
	[TaskName] [varchar](2000) NULL,
	[TaskStatus] [int] NULL,
	[Assignee] [int] NULL,
	[TaskParent] [int] NULL,
	[IsRequired] [varchar](1) NULL,
	[StartDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[EstimatedEfforts] [decimal](10, 2) NULL,
	[CompletedEfforts] [decimal](10, 2) NULL,
	[Priority] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_TID] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaskStatus]    Script Date: 17-09-2020 23:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaskStatus](
	[TSID] [int] IDENTITY(1,1) NOT NULL,
	[TaskStatusID] [int] NOT NULL,
	[TaskStatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaskStatusID] PRIMARY KEY CLUSTERED 
(
	[TaskStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCustomFields] ON 
GO
INSERT [dbo].[tblCustomFields] ([CID], [ProjectID], [ModuleID], [Revision], [FieldName], [FieldValue], [CreatedBy], [CreatedDate]) VALUES (1, N'0', N'm1', N'A', N'DieCode', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T11:44:58.240' AS DateTime))
GO
INSERT [dbo].[tblCustomFields] ([CID], [ProjectID], [ModuleID], [Revision], [FieldName], [FieldValue], [CreatedBy], [CreatedDate]) VALUES (2, N'0', N'm1', N'A', N'MfgPart', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T11:44:58.240' AS DateTime))
GO
INSERT [dbo].[tblCustomFields] ([CID], [ProjectID], [ModuleID], [Revision], [FieldName], [FieldValue], [CreatedBy], [CreatedDate]) VALUES (3, N'0', N'm1', N'A', N'fgPart', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T11:44:58.240' AS DateTime))
GO
INSERT [dbo].[tblCustomFields] ([CID], [ProjectID], [ModuleID], [Revision], [FieldName], [FieldValue], [CreatedBy], [CreatedDate]) VALUES (4, N'2test', N'm1', N'A', N'DieCode', N'tv', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T11:44:58.240' AS DateTime))
GO
INSERT [dbo].[tblCustomFields] ([CID], [ProjectID], [ModuleID], [Revision], [FieldName], [FieldValue], [CreatedBy], [CreatedDate]) VALUES (5, N'2test', N'm1', N'A', N'MfgPart', N'tv', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T11:44:58.240' AS DateTime))
GO
INSERT [dbo].[tblCustomFields] ([CID], [ProjectID], [ModuleID], [Revision], [FieldName], [FieldValue], [CreatedBy], [CreatedDate]) VALUES (6, N'2test', N'm1', N'A', N'fgPart', N'tvs', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T11:44:58.240' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblCustomFields] OFF
GO
SET IDENTITY_INSERT [dbo].[tblList] ON 
GO
INSERT [dbo].[tblList] ([LID], [ListID], [ProjectID], [ModuleID], [ListName], [ListOwnerID], [ListStatus], [Active], [ListSeq], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'297BDCF3-25C3-4FB3-8B28-F07333F76102', N'03C8B8B4-165E-4B38-88A6-23F4872E9551', N'm1', N'listname1', 0, N'', N'', 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T03:23:14.797' AS DateTime), N'0', CAST(N'2020-09-07T03:23:14.797' AS DateTime))
GO
INSERT [dbo].[tblList] ([LID], [ListID], [ProjectID], [ModuleID], [ListName], [ListOwnerID], [ListStatus], [Active], [ListSeq], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'542D3C8A-4899-40AA-B7D6-5E8F92E7B099', N'03C8B8B4-165E-4B38-88A6-23F4872E9551', N'm1', N'listname2', 0, N'', N'', 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T03:23:17.563' AS DateTime), N'0', CAST(N'2020-09-07T03:23:17.563' AS DateTime))
GO
INSERT [dbo].[tblList] ([LID], [ListID], [ProjectID], [ModuleID], [ListName], [ListOwnerID], [ListStatus], [Active], [ListSeq], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'9AF9FA4B-4A8C-4979-BA70-3E705999E7D8', N'03C8B8B4-165E-4B38-88A6-23F4872E9551', N'm1', N'listname3', 0, N'', N'', 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T03:23:19.607' AS DateTime), N'0', CAST(N'2020-09-07T03:23:19.607' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblList] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProjects] ON 
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, N'0', N'Default', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'string', 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), N'string', NULL, NULL, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-15T18:23:18.703' AS DateTime), N'0', CAST(N'2020-09-14T17:05:49.277' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'03C8B8B4-165E-4B38-88A6-23F4872E9551', N'project2', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'', 0, CAST(N'2020-09-07T02:35:10.580' AS DateTime), CAST(N'2020-09-07T02:35:10.580' AS DateTime), 0, CAST(N'2020-09-07T02:35:10.580' AS DateTime), CAST(N'2020-09-07T02:35:10.580' AS DateTime), CAST(N'2020-09-07T02:35:10.580' AS DateTime), CAST(N'2020-09-07T02:35:10.580' AS DateTime), N'', N'', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T02:35:10.580' AS DateTime), N'0', CAST(N'2020-09-07T02:35:10.580' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'2A863C8B-2187-41C0-B8E7-6058E3721C64', N'project3', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'', 0, CAST(N'2020-09-07T02:35:13.910' AS DateTime), CAST(N'2020-09-07T02:35:13.910' AS DateTime), 0, CAST(N'2020-09-07T02:35:13.910' AS DateTime), CAST(N'2020-09-07T02:35:13.910' AS DateTime), CAST(N'2020-09-07T02:35:13.910' AS DateTime), CAST(N'2020-09-07T02:35:13.910' AS DateTime), N'', N'', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T02:35:13.910' AS DateTime), N'0', CAST(N'2020-09-07T02:35:13.910' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'2test', N'testProject', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B2778', N'm1', 1, N'todo', 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), N'', NULL, NULL, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-15T18:30:30.220' AS DateTime), N'0', CAST(N'2020-09-14T17:05:49.277' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'4B6451EC-2AD5-4EFC-B40F-75215E597978', N'newproject1', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'string', 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), N'string', NULL, NULL, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T17:17:14.500' AS DateTime), N'0', CAST(N'2020-09-14T17:05:49.277' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'4B6451EC-2AD5-4EFC-B40F-75215E597979', N'newproject1', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'string', 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), 0, CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), CAST(N'2020-09-14T17:05:49.277' AS DateTime), N'string', NULL, NULL, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T17:17:59.977' AS DateTime), N'0', CAST(N'2020-09-14T17:05:49.277' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'4B6451EC-2AD5-4EFC-B40F-75215E5979D0', N'project4', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'', 0, CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), 0, CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), N'', N'', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T02:35:26.860' AS DateTime), N'0', CAST(N'2020-09-07T02:35:26.860' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'4B6451EC-2AD5-4EFC-B40F-75215E5979D9', N'project4', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'', 0, CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), 0, CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), CAST(N'2020-09-07T02:35:26.860' AS DateTime), N'', NULL, NULL, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T06:39:24.790' AS DateTime), N'0', CAST(N'2020-09-07T02:35:26.860' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'63DFB6F5-AD0C-41B4-A583-5A14F15750FF', N'project6', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'', 0, CAST(N'2020-09-07T02:35:35.030' AS DateTime), CAST(N'2020-09-07T02:35:35.030' AS DateTime), 0, CAST(N'2020-09-07T02:35:35.030' AS DateTime), CAST(N'2020-09-07T02:35:35.030' AS DateTime), CAST(N'2020-09-07T02:35:35.030' AS DateTime), CAST(N'2020-09-07T02:35:35.030' AS DateTime), N'', N'', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T02:35:35.030' AS DateTime), N'0', CAST(N'2020-09-07T02:35:35.030' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'79C7D953-C740-455E-A39B-A4E11751D0F3', N'project5', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'', 0, CAST(N'2020-09-07T02:35:31.923' AS DateTime), CAST(N'2020-09-07T02:35:31.923' AS DateTime), 0, CAST(N'2020-09-07T02:35:31.923' AS DateTime), CAST(N'2020-09-07T02:35:31.923' AS DateTime), CAST(N'2020-09-07T02:35:31.923' AS DateTime), CAST(N'2020-09-07T02:35:31.923' AS DateTime), N'', N'', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T02:35:31.923' AS DateTime), N'0', CAST(N'2020-09-07T02:35:31.923' AS DateTime))
GO
INSERT [dbo].[tblProjects] ([PID], [ProjectID], [ProjectName], [SpaceID], [ModuleID], [ProjectStatus], [ProjectPhases], [ProjectManager], [ProjectStartDate], [TargetDate], [Resources], [ActualDate], [CurrentDate], [OriginalPlanDate], [OverridePlanDate], [Revision], [ParentProjectID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'D1E04E0C-DB0F-4FFC-AF43-5F1DE4878359', N'project1', N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'm1', 0, N'', 0, CAST(N'2020-09-07T02:36:09.170' AS DateTime), CAST(N'2020-09-07T02:36:09.170' AS DateTime), 0, CAST(N'2020-09-07T02:36:09.170' AS DateTime), CAST(N'2020-09-07T02:36:09.170' AS DateTime), CAST(N'2020-09-07T02:36:09.170' AS DateTime), CAST(N'2020-09-07T02:36:09.170' AS DateTime), N'', N'', N'', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T02:36:09.170' AS DateTime), N'0', CAST(N'2020-09-07T02:36:09.170' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblProjects] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSpace] ON 
GO
INSERT [dbo].[tblSpace] ([SID], [SpaceID], [SpaceName], [CreatedBy], [CreatedDate], [ModuleID], [UpdatedBy], [UpdatedDate]) VALUES (6, N'3ba2cc4e-ce3a-4bb9-9470-20aa447a3b6a', N'Space123', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', NULL, N'm1', NULL, NULL)
GO
INSERT [dbo].[tblSpace] ([SID], [SpaceID], [SpaceName], [CreatedBy], [CreatedDate], [ModuleID], [UpdatedBy], [UpdatedDate]) VALUES (3, N'4A6C1EA0-B186-44B8-B8AD-0209BD6B2778', N'newspace', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-14T17:38:02.967' AS DateTime), N'm1', NULL, NULL)
GO
INSERT [dbo].[tblSpace] ([SID], [SpaceID], [SpaceName], [CreatedBy], [CreatedDate], [ModuleID], [UpdatedBy], [UpdatedDate]) VALUES (2, N'4A6C1EA0-B186-44B8-B8AD-0209BD6B27D3', N'space1', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T02:32:49.540' AS DateTime), N'm1', NULL, NULL)
GO
INSERT [dbo].[tblSpace] ([SID], [SpaceID], [SpaceName], [CreatedBy], [CreatedDate], [ModuleID], [UpdatedBy], [UpdatedDate]) VALUES (5, N'825f2ee5-3405-4b71-ac9b-2f25e7d08f65', N'123456', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', NULL, N'm1', NULL, NULL)
GO
INSERT [dbo].[tblSpace] ([SID], [SpaceID], [SpaceName], [CreatedBy], [CreatedDate], [ModuleID], [UpdatedBy], [UpdatedDate]) VALUES (4, N'881a43f4-aa2a-487c-90f3-4a7aca631c59', N'newspace1234', N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', NULL, N'm1', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblSpace] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTasks] ON 
GO
INSERT [dbo].[tblTasks] ([TID], [TaskID], [ListID], [ProjectID], [DepartmentID], [TaskName], [TaskStatus], [Assignee], [TaskParent], [IsRequired], [StartDate], [DueDate], [EstimatedEfforts], [CompletedEfforts], [Priority], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1003, N'1234567', N'297BDCF3-25C3-4FB3-8B28-F07333F76102', NULL, 0, N'Task4', 1, N'321', 0, N'', CAST(N'2020-09-07T03:28:00.633' AS DateTime), CAST(N'2020-09-07T03:28:00.633' AS DateTime), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-08T19:28:16.620' AS DateTime), N'0', CAST(N'2020-09-07T03:28:00.633' AS DateTime))
GO
INSERT [dbo].[tblTasks] ([TID], [TaskID], [ListID], [ProjectID], [DepartmentID], [TaskName], [TaskStatus], [Assignee], [TaskParent], [IsRequired], [StartDate], [DueDate], [EstimatedEfforts], [CompletedEfforts], [Priority], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'455C2E79-F3F5-4250-B2FC-ECC005C44DFF', N'297BDCF3-25C3-4FB3-8B28-F07333F76102', N'03C8B8B4-165E-4B38-88A6-23F4872E9551', 0, N'Task1', 1, N'321', 0, N'', CAST(N'2020-09-07T03:27:46.173' AS DateTime), CAST(N'2020-09-07T03:27:46.173' AS DateTime), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T03:27:46.173' AS DateTime), N'0', CAST(N'2020-09-07T03:27:46.173' AS DateTime))
GO
INSERT [dbo].[tblTasks] ([TID], [TaskID], [ListID], [ProjectID], [DepartmentID], [TaskName], [TaskStatus], [Assignee], [TaskParent], [IsRequired], [StartDate], [DueDate], [EstimatedEfforts], [CompletedEfforts], [Priority], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'6DA04D20-0867-4B51-8BEE-3B3BB39EFEB9', N'297BDCF3-25C3-4FB3-8B28-F07333F76102', N'03C8B8B4-165E-4B38-88A6-23F4872E9551', 0, N'Task4', 1, N'321', 0, N'', CAST(N'2020-09-07T03:28:08.350' AS DateTime), CAST(N'2020-09-07T03:28:08.350' AS DateTime), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T03:28:08.350' AS DateTime), N'0', CAST(N'2020-09-07T03:28:08.350' AS DateTime))
GO
INSERT [dbo].[tblTasks] ([TID], [TaskID], [ListID], [ProjectID], [DepartmentID], [TaskName], [TaskStatus], [Assignee], [TaskParent], [IsRequired], [StartDate], [DueDate], [EstimatedEfforts], [CompletedEfforts], [Priority], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'7F4041AA-7108-4BB5-AD84-AFBCE2E66D82', N'297BDCF3-25C3-4FB3-8B28-F07333F76102', N'03C8B8B4-165E-4B38-88A6-23F4872E9551', 0, N'Task2', 1, N'321', 0, N'', CAST(N'2020-09-07T03:27:55.383' AS DateTime), CAST(N'2020-09-07T03:27:55.383' AS DateTime), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T03:27:55.383' AS DateTime), N'0', CAST(N'2020-09-07T03:27:55.383' AS DateTime))
GO
INSERT [dbo].[tblTasks] ([TID], [TaskID], [ListID], [ProjectID], [DepartmentID], [TaskName], [TaskStatus], [Assignee], [TaskParent], [IsRequired], [StartDate], [DueDate], [EstimatedEfforts], [CompletedEfforts], [Priority], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'8A8A0ABD-954B-41E9-B2B1-A2848E282C4E', N'297BDCF3-25C3-4FB3-8B28-F07333F76102', N'03C8B8B4-165E-4B38-88A6-23F4872E9551', 0, N'Task3', 1, N'321', 0, N'', CAST(N'2020-09-07T03:28:00.633' AS DateTime), CAST(N'2020-09-07T03:28:00.633' AS DateTime), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 0, N'079FE257-A2CB-45D1-AC46-35B79B6C4F00', CAST(N'2020-09-07T03:28:00.633' AS DateTime), N'0', CAST(N'2020-09-07T03:28:00.633' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblTasks] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTaskStatus] ON 
GO
INSERT [dbo].[tblTaskStatus] ([TSID], [TaskStatusID], [TaskStatusName]) VALUES (1, 1, N'Ready')
GO
INSERT [dbo].[tblTaskStatus] ([TSID], [TaskStatusID], [TaskStatusName]) VALUES (2, 2, N'InProgress')
GO
INSERT [dbo].[tblTaskStatus] ([TSID], [TaskStatusID], [TaskStatusName]) VALUES (3, 3, N'Pending')
GO
INSERT [dbo].[tblTaskStatus] ([TSID], [TaskStatusID], [TaskStatusName]) VALUES (4, 4, N'Complete')
GO
INSERT [dbo].[tblTaskStatus] ([TSID], [TaskStatusID], [TaskStatusName]) VALUES (5, 5, N'Rejected')
GO
SET IDENTITY_INSERT [dbo].[tblTaskStatus] OFF
GO
ALTER TABLE [dbo].[tblSpace] ADD  DEFAULT ('') FOR [ModuleID]
GO
ALTER TABLE [dbo].[tblTasks] ADD  DEFAULT ((0)) FOR [DepartmentID]
GO
ALTER TABLE [dbo].[tblTasksHistory] ADD  DEFAULT ((0)) FOR [DepartmentID]
GO
ALTER TABLE [dbo].[tblCheckList]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[tblTasks] ([TaskID])
GO
ALTER TABLE [dbo].[tblCustomFields]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[tblProjects] ([ProjectID])
GO
ALTER TABLE [dbo].[tblDocuments]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[tblTasks] ([TaskID])
GO
ALTER TABLE [dbo].[tblList]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[tblProjects] ([ProjectID])
GO
ALTER TABLE [dbo].[tblProjects]  WITH CHECK ADD FOREIGN KEY([SpaceID])
REFERENCES [dbo].[tblSpace] ([SpaceID])
GO
ALTER TABLE [dbo].[tblTasks]  WITH CHECK ADD FOREIGN KEY([ListID])
REFERENCES [dbo].[tblList] ([ListID])
GO
ALTER TABLE [dbo].[tblTasks]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[tblProjects] ([ProjectID])
GO
ALTER TABLE [dbo].[tblTasks]  WITH CHECK ADD  CONSTRAINT [FK_tblTasks_TaskStatus_4c4d] FOREIGN KEY([TaskStatus])
REFERENCES [dbo].[tblTaskStatus] ([TaskStatusID])
GO
ALTER TABLE [dbo].[tblTasks] CHECK CONSTRAINT [FK_tblTasks_TaskStatus_4c4d]
GO
ALTER TABLE [dbo].[tblTasksHistory]  WITH CHECK ADD FOREIGN KEY([ListID])
REFERENCES [dbo].[tblList] ([ListID])
GO
ALTER TABLE [dbo].[tblTasksHistory]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[tblTasks] ([TaskID])
GO
ALTER TABLE [dbo].[tblTasksHistory]  WITH CHECK ADD  CONSTRAINT [FK_tblTasksHistory_TaskStatus_4c4d3R] FOREIGN KEY([TaskStatus])
REFERENCES [dbo].[tblTaskStatus] ([TaskStatusID])
GO
ALTER TABLE [dbo].[tblTasksHistory] CHECK CONSTRAINT [FK_tblTasksHistory_TaskStatus_4c4d3R]
GO
