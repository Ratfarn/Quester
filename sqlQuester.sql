USE [Quester3]
GO
/****** Object:  Table [dbo].[Difficulty]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Difficulty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Difficulty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lists]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListTask]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListTask](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTask] [int] NULL,
	[IdList] [int] NULL,
 CONSTRAINT [PK_ListTask] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Experience] [int] NULL,
	[Lvl] [int] NULL,
	[needExperience] [int] NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IdDifficulty] [int] NULL,
	[IsChecked] [bit] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskSkill]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskSkill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTask] [int] NULL,
	[IdSkill] [int] NULL,
 CONSTRAINT [PK_TaskSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserList]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[IdList] [int] NULL,
 CONSTRAINT [PK_UserList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Experience] [int] NULL,
	[Lvl] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSkill]    Script Date: 06.06.2023 15:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[IdSkill] [int] NULL,
 CONSTRAINT [PK_UserSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Difficulty] ON 

INSERT [dbo].[Difficulty] ([Id], [Title]) VALUES (1, N'Лёгкая')
INSERT [dbo].[Difficulty] ([Id], [Title]) VALUES (2, N'Средняя')
INSERT [dbo].[Difficulty] ([Id], [Title]) VALUES (3, N'Тяжёлая')
SET IDENTITY_INSERT [dbo].[Difficulty] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Experience], [Lvl], [Name], [Email], [Password]) VALUES (1005, NULL, NULL, N'Egor', N'email@mail.ru', N'qwe321')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ListTask]  WITH CHECK ADD  CONSTRAINT [FK_ListTask_Lists] FOREIGN KEY([IdList])
REFERENCES [dbo].[Lists] ([Id])
GO
ALTER TABLE [dbo].[ListTask] CHECK CONSTRAINT [FK_ListTask_Lists]
GO
ALTER TABLE [dbo].[ListTask]  WITH CHECK ADD  CONSTRAINT [FK_ListTask_Tasks] FOREIGN KEY([IdTask])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[ListTask] CHECK CONSTRAINT [FK_ListTask_Tasks]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Difficulty] FOREIGN KEY([IdDifficulty])
REFERENCES [dbo].[Difficulty] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Difficulty]
GO
ALTER TABLE [dbo].[TaskSkill]  WITH CHECK ADD  CONSTRAINT [FK_TaskSkill_Skills] FOREIGN KEY([IdSkill])
REFERENCES [dbo].[Skills] ([Id])
GO
ALTER TABLE [dbo].[TaskSkill] CHECK CONSTRAINT [FK_TaskSkill_Skills]
GO
ALTER TABLE [dbo].[TaskSkill]  WITH CHECK ADD  CONSTRAINT [FK_TaskSkill_Tasks] FOREIGN KEY([IdTask])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[TaskSkill] CHECK CONSTRAINT [FK_TaskSkill_Tasks]
GO
ALTER TABLE [dbo].[UserList]  WITH CHECK ADD  CONSTRAINT [FK_UserList_Lists] FOREIGN KEY([IdList])
REFERENCES [dbo].[Lists] ([Id])
GO
ALTER TABLE [dbo].[UserList] CHECK CONSTRAINT [FK_UserList_Lists]
GO
ALTER TABLE [dbo].[UserList]  WITH CHECK ADD  CONSTRAINT [FK_UserList_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserList] CHECK CONSTRAINT [FK_UserList_Users]
GO
ALTER TABLE [dbo].[UserSkill]  WITH CHECK ADD  CONSTRAINT [FK_UserSkill_Skills] FOREIGN KEY([IdSkill])
REFERENCES [dbo].[Skills] ([Id])
GO
ALTER TABLE [dbo].[UserSkill] CHECK CONSTRAINT [FK_UserSkill_Skills]
GO
ALTER TABLE [dbo].[UserSkill]  WITH CHECK ADD  CONSTRAINT [FK_UserSkill_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserSkill] CHECK CONSTRAINT [FK_UserSkill_Users]
GO
USE [master]
GO
ALTER DATABASE [Quester] SET  READ_WRITE 
GO
