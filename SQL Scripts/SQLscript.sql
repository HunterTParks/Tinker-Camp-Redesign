USE [tinker]
GO
/****** Object:  Table [dbo].[Child_Object]    Script Date: 6/22/2017 9:47:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[First] [varchar](255) NULL,
	[Last] [varchar](255) NULL,
	[Age] [varchar](255) NULL,
	[Grade] [varchar](255) NULL,
	[Gender] [varchar](255) NULL,
	[Race] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip] [varchar](255) NULL,
	[Phone] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Child_Sessions]    Script Date: 6/22/2017 9:47:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child_Sessions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[child_id] [int] NOT NULL,
	[session_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parent_Child]    Script Date: 6/22/2017 9:47:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent_Child](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NOT NULL,
	[child_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parent_Object]    Script Date: 6/22/2017 9:47:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[First] [varchar](255) NULL,
	[Last] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[City] [varchar](255) NOT NULL,
	[State] [varchar](255) NOT NULL,
	[Zip] [varchar](255) NULL,
	[Phone] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Code] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Session_Object]    Script Date: 6/22/2017 9:47:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Child_Object] ON 

INSERT [dbo].[Child_Object] ([id], [First], [Last], [Age], [Grade], [Gender], [Race], [Address], [City], [State], [Zip], [Phone]) VALUES (1, N'POK', N'POK', N'9', N'4th', N'he-him', N'anglo-white', N'POJIP', N'OJP', N'OJP', N'OJ', N'POJ')
INSERT [dbo].[Child_Object] ([id], [First], [Last], [Age], [Grade], [Gender], [Race], [Address], [City], [State], [Zip], [Phone]) VALUES (2, N'POK', N'POK', N'9', N'4th', N'he-him', N'anglo-white', N'POJIP', N'OJP', N'OJP', N'OJ', N'POJ')
SET IDENTITY_INSERT [dbo].[Child_Object] OFF
SET IDENTITY_INSERT [dbo].[Child_Sessions] ON 

INSERT [dbo].[Child_Sessions] ([id], [child_id], [session_id]) VALUES (1, 2, 1)
SET IDENTITY_INSERT [dbo].[Child_Sessions] OFF
SET IDENTITY_INSERT [dbo].[Parent_Child] ON 

INSERT [dbo].[Parent_Child] ([id], [parent_id], [child_id]) VALUES (1, 2, 2)
SET IDENTITY_INSERT [dbo].[Parent_Child] OFF
SET IDENTITY_INSERT [dbo].[Parent_Object] ON 

INSERT [dbo].[Parent_Object] ([id], [First], [Last], [Address], [City], [State], [Zip], [Phone], [Email], [Code]) VALUES (1, N'POK', N'POJ', N'POJ', N'POJ', N'POJ', N'POJ', N'POJ', N'POJ@GMAIO', N'POJ')
INSERT [dbo].[Parent_Object] ([id], [First], [Last], [Address], [City], [State], [Zip], [Phone], [Email], [Code]) VALUES (2, N'POK', N'POJ', N'POJ', N'POJ', N'POJ', N'POJ', N'POJ', N'POJ@GMAIO', N'POJ')
SET IDENTITY_INSERT [dbo].[Parent_Object] OFF
SET IDENTITY_INSERT [dbo].[Session_Object] ON 

INSERT [dbo].[Session_Object] ([id], [name]) VALUES (1, N'Miniature Worlds (7/10-7/14)')
INSERT [dbo].[Session_Object] ([id], [name]) VALUES (2, N'Carnival (7/17-7/21)')
INSERT [dbo].[Session_Object] ([id], [name]) VALUES (3, N'Flight (7/24-7/28)')
INSERT [dbo].[Session_Object] ([id], [name]) VALUES (4, N'Urban Adventure (7/31-8/4)')
SET IDENTITY_INSERT [dbo].[Session_Object] OFF
ALTER TABLE [dbo].[Parent_Child] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[Parent_Child] ADD  DEFAULT (NULL) FOR [child_id]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [First]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Last]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [State]
GO
