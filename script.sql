USE [testify3]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[ID] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Incorrect] [bit] NOT NULL,
	[QuestionID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[TotalStudent] [int] NOT NULL,
	[GradeID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Quiz]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Quiz](
	[ClassID] [uniqueidentifier] NOT NULL,
	[QuizID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[QuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [uniqueidentifier] NOT NULL,
	[InParent] [bit] NOT NULL,
	[ParentID] [uniqueidentifier] NULL,
	[AnswerTime] [datetime] NOT NULL,
	[TeacherID] [uniqueidentifier] NULL,
	[StudentID] [uniqueidentifier] NULL,
	[SubjectID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[ID] [uniqueidentifier] NOT NULL,
	[Context] [nvarchar](max) NOT NULL,
	[Time] [datetime] NOT NULL,
	[StudentID] [uniqueidentifier] NULL,
	[TeacherID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ID] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[QuizID] [uniqueidentifier] NULL,
	[TimeLimit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[duration] [datetime] NULL,
	[timelimit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[ID] [uniqueidentifier] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[StudentID] [uniqueidentifier] NULL,
	[QuizID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Mail] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Image] [nvarchar](255) NULL,
	[FirstLogin] [datetime] NOT NULL,
	[SubjectID] [uniqueidentifier] NULL,
	[StudentCode] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAnswer]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnswer](
	[StudentID] [uniqueidentifier] NOT NULL,
	[AnswerID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students_Teachers]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_Teachers](
	[TeacherID] [uniqueidentifier] NOT NULL,
	[StudentID] [uniqueidentifier] NOT NULL,
	[TeacherStudentID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Students_Teachers] PRIMARY KEY CLUSTERED 
(
	[TeacherStudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[SubjectID] [uniqueidentifier] NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[FirstLogin] [datetime] NOT NULL,
	[phoneNumber] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Class]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Class](
	[TeacherID] [uniqueidentifier] NOT NULL,
	[ClassID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Student]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Student](
	[TeacherID] [uniqueidentifier] NOT NULL,
	[StudentID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Teacher_Student] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 20/03/2025 2:40:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'c3beaa41-97dd-415e-860e-341b7840d4ae', N'Blue Whale', 0, N'fb5403ec-e588-4133-88c8-32a0e2419a30')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'2684278c-45de-42e0-b638-36088d7cb580', N'Au', 0, N'cc8cc1b7-d5ea-454e-a5db-cec5719d906a')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'305a608e-5ec0-4c54-82f9-3728254a0d38', N'Hanoi', 0, N'3f8c40f6-fada-43bb-a8cb-ddead7433140')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'9bc9b3d9-60c3-4999-adc2-701e48e85199', N'Charles Dickens', 1, N'0d037f92-037e-4c12-87bc-1136707b47d0')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'eca55df0-57f1-430b-bab1-731cd11ff570', N'Jupiter', 1, N'aa4d250d-08c6-471e-908e-a4c622d5c4b0')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'b25f223c-dcef-405d-a362-7c3b5d658f68', N'Ho Chi Minh City', 1, N'3f8c40f6-fada-43bb-a8cb-ddead7433140')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'90a9a4ff-da2f-4662-ba57-a90f4e014a5d', N'William Shakespeare', 0, N'0d037f92-037e-4c12-87bc-1136707b47d0')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'c7269c7b-a239-44be-ad5f-c8eb5ecb17b8', N'Elephant', 1, N'fb5403ec-e588-4133-88c8-32a0e2419a30')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'50baa8b4-112a-4c3e-a13e-d387667b978b', N'Mars', 0, N'aa4d250d-08c6-471e-908e-a4c622d5c4b0')
INSERT [dbo].[Answer] ([ID], [Text], [Incorrect], [QuestionID]) VALUES (N'7525e070-8a02-4585-b265-dc5b2876fa77', N'Ag', 1, N'cc8cc1b7-d5ea-454e-a5db-cec5719d906a')
GO
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'337f4ff1-38d4-4d47-bb09-0583d33ecacc', N'Class 2C4', 34, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'3e2249a2-217d-4cf1-aff2-1981d2a492dd', N'Class 2C7', 36, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'0a711335-a426-42c0-934e-285f078dfe26', N'Class 4A1', 30, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'f87c483c-b580-4427-8a46-3ffb2ac7c681', N'Class 2C8', 29, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'3e63eccc-10c1-49c2-a434-412d4d18f52a', N'Class 3C2', 26, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'6a056894-d2c3-43d2-aeee-42c0deeb7783', N'Class 2C5', 23, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'e4f4821b-9eda-42a1-a30a-50af81594559', N'Class 4A3', 20, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'411dafe0-1c5d-4b65-9a2f-53453f9b5a74', N'Class 3C3', 35, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'0912dc98-18ca-4f0f-8e2a-5c1e1c53849e', N'Class 2C10', 22, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'5e84b660-f526-44c3-85ca-5d2c4509c63a', N'Class 2C6', 31, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'bfa18a5f-eb35-4e44-8599-700a41983957', N'Class 2C2', 22, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'88479bd9-604b-4fe3-b4a4-7c34c7049f6d', N'Class 2C3', 30, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'6e80bdb6-8253-48be-a846-9ae52c1c7e90', N'Class 3C9', 28, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'382dc1d9-fd8f-4947-b80a-9c5bf9509a63', N'Class 5B3', 27, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'1a7004c2-1f31-4c52-9903-ae0ce000efdc', N'Class 2C9', 30, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'1843c635-a521-437e-8aef-b83e31aa3c7d', N'Class 3C1', 29, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'3198cd4b-6fe8-40cb-b7e8-c040ddd1cfd5', N'Class 4A2', 25, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'ca1772bb-e6d9-447b-840f-c980c4b01055', N'Class 5B1', 28, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'1d5f1906-ef0a-4206-8fe4-ef6f7eb47527', N'Class 2C1', 24, NULL)
INSERT [dbo].[Class] ([ID], [Name], [TotalStudent], [GradeID]) VALUES (N'2f279c96-c811-4c11-a428-f0e3c38d4459', N'Class 5B2', 32, NULL)
GO
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'707436ba-c616-4aa1-91b9-1202911391dc', N'Notification 4: Upcoming exam on Friday.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'43f03dca-0d18-4fda-82e7-4133a91c071e', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'b276a948-959e-461b-8d95-2440c4c41478', N'Notification 8: Parent-teacher meeting scheduled.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'7a7b8590-7780-47dd-901f-5ea71283a6f6', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'd228ffe3-24b0-434b-a803-3d3c898fd4d6', N'Notification 7: Group project guidelines released.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'7bf750cd-67b8-4eba-af22-5b42323665c5', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'4f191da2-63ec-4f81-9691-40b2fb652f5d', N'Notification 6: New materials have been uploaded.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'7f4f64be-0e74-4669-9069-5271528681b7', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'e92136b4-90c1-480b-b169-43cdbe3ccca1', N'Notification 19: Health and safety training.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'1363bebe-1eb0-47e4-b1ca-e57dcbdef626', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'734d1d08-9625-4e20-bb6f-50aeee84e824', N'Notification 13: Reminder: Library books are due.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'01bd0978-0559-4eca-a8cd-948f1650a54a', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'cd07a6ce-49fc-440e-891d-62dabc12cf1a', N'Notification 9: Extra credit opportunity available.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'465c00c9-1b40-4359-9405-683240b9f58e', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'e1b36dbc-3036-44da-a0a9-892031b92747', N'Notification 18: Scholarship applications open.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'dd856b9f-4166-45b9-a1d3-d891a4fb9905', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'f97ddfc7-7343-4538-9f9e-9d0250dff93a', N'Notification 17: Guest speaker next week.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'35a0db1f-3d89-480d-b299-d774b526add4', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'c2916535-e359-4da6-b022-9f5875ad3620', N'Notification 10: Field trip next month.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'93fb68c8-3659-4bb5-862d-74b31d32123d', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'7ad0fda6-02d9-4d29-8299-a7f665bb2269', N'Notification 14: Club meetings every Monday.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'22483812-1673-402c-916a-9c6b9db23286', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'2daf51f3-56eb-46e5-a40f-d22b145403b2', N'Notification 15: Sports day is approaching!', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'bc1fa14e-4b4b-4211-9a45-c28f7d8216b8', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'ea10d4a8-5786-45bf-8f67-d75846beed9a', N'Notification 12: Check your grades online.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'e683c9e9-1422-40b8-9cd6-8ad39e27c37e', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'08e264fb-3bb2-4a08-b99f-da7105e5f115', N'Notification 20: Feedback on the last project is ready.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'1363bebe-1eb0-47e4-b1ca-e57dcbdef626', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'5f24bb23-fa66-45e7-b7b1-de8f9d647936', N'Notification 3: Class canceled next week.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'c4c680e8-0f44-45b6-8f65-334fe52c0d71', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'9a29c5f1-c367-4b4c-95cd-e603e3b4959b', N'Notification 5: Please check your emails regularly.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'13dcc272-55bc-4b2b-abe9-4ae019e7cef5', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'923bf402-7ee1-46d9-808a-e86b73be5c76', N'Notification 1: Welcome to the class!', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'952cf10e-fd12-4ff1-9f11-30ee5674176e', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'8983a762-06dc-4a30-abb7-f177f6254eea', N'Notification 11: Please submit your projects.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'84dff094-d87b-44f0-9c9c-7efdb5aa3e9b', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'899b264c-5ab5-4ff0-9057-fc746f462c4a', N'Notification 16: New semester starts soon.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'2e447032-4600-495b-8a0c-d11262dd69e9', NULL)
INSERT [dbo].[Notification] ([ID], [Context], [Time], [StudentID], [TeacherID]) VALUES (N'0c873f89-7391-4b0f-8f23-fdff3008fa00', N'Notification 2: Homework is due tomorrow.', CAST(N'2025-03-12T14:34:31.800' AS DateTime), N'c4c680e8-0f44-45b6-8f65-334fe52c0d71', NULL)
GO
INSERT [dbo].[Question] ([ID], [Content], [QuizID], [TimeLimit]) VALUES (N'0d037f92-037e-4c12-87bc-1136707b47d0', N'Who wrote "Romeo and Juliet"?', N'7992d529-dd25-4680-b949-12f0450510b3', NULL)
INSERT [dbo].[Question] ([ID], [Content], [QuizID], [TimeLimit]) VALUES (N'fb5403ec-e588-4133-88c8-32a0e2419a30', N'What is the largest mammal in the world?', N'7992d529-dd25-4680-b949-12f0450510b3', NULL)
INSERT [dbo].[Question] ([ID], [Content], [QuizID], [TimeLimit]) VALUES (N'aa4d250d-08c6-471e-908e-a4c622d5c4b0', N'Which planet is known as the Red Planet?', N'7992d529-dd25-4680-b949-12f0450510b3', NULL)
INSERT [dbo].[Question] ([ID], [Content], [QuizID], [TimeLimit]) VALUES (N'cc8cc1b7-d5ea-454e-a5db-cec5719d906a', N'What is the chemical symbol for gold?', N'7992d529-dd25-4680-b949-12f0450510b3', NULL)
INSERT [dbo].[Question] ([ID], [Content], [QuizID], [TimeLimit]) VALUES (N'3f8c40f6-fada-43bb-a8cb-ddead7433140', N'What is the capital of Vietnam?', N'7992d529-dd25-4680-b949-12f0450510b3', NULL)
GO
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'7992d529-dd25-4680-b949-12f0450510b3', N'Quiz 18', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:40:00.000' AS DateTime), CAST(N'1900-01-01T00:15:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'3a4e6b2f-6b8e-4e2b-8f3d-1e5c7f9a2e8d', N'Quiz 7', CAST(N'2025-06-30' AS Date), CAST(N'1900-01-01T00:55:00.000' AS DateTime), CAST(N'1900-01-01T00:18:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'9f2b1a4e-3e4b-4e1c-a5d6-1f2e3c6b7d8e', N'Quiz 8', CAST(N'2025-05-31' AS Date), CAST(N'1900-01-01T01:15:00.000' AS DateTime), CAST(N'1900-01-01T00:22:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'0317ee5a-f539-4816-8675-2600076e1180', N'Quiz 5', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:35:00.000' AS DateTime), CAST(N'1900-01-01T00:12:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'f8ee942b-ad58-4c25-bcb9-2a5bf678d6fe', N'Quiz 20', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T01:10:00.000' AS DateTime), CAST(N'1900-01-01T00:40:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'c071ae64-84fe-4271-80d2-2d3cd5df6276', N'Quiz 20', CAST(N'2025-03-11' AS Date), CAST(N'2025-03-11T06:34:52.417' AS DateTime), CAST(N'2025-03-11T06:34:52.417' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'2c3d7f8e-4e2b-4e5c-8e1c-3c6a3f2b7a5e', N'Quiz 6', CAST(N'2025-07-31' AS Date), CAST(N'1900-01-01T00:40:00.000' AS DateTime), CAST(N'1900-01-01T00:12:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'3198fab9-b7ab-4946-8eac-3c9b231c65f7', N'Quiz 4', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:20:00.000' AS DateTime), CAST(N'1900-01-01T00:05:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'aff98ea6-9c72-410d-9d06-53d578218786', N'Quiz 3', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T01:00:00.000' AS DateTime), CAST(N'1900-01-01T00:20:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'4e5b3c9f-1e2c-4d6e-8b1c-5f8d2a3f6e9a', N'Quiz 10', CAST(N'2025-03-31' AS Date), CAST(N'1900-01-01T01:00:00.000' AS DateTime), CAST(N'1900-01-01T00:20:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'8d592cae-3d37-4230-8687-63ba9a96aacb', N'Quiz 8', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:40:00.000' AS DateTime), CAST(N'1900-01-01T00:15:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'7f69f9cb-1d6b-46d7-9e30-6a5c313f0396', N'22', CAST(N'2025-03-11' AS Date), CAST(N'2025-03-11T06:35:56.127' AS DateTime), CAST(N'2025-03-11T06:35:56.127' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'7aa2a52f-b3f2-40ad-b9fe-6b8692651626', N'Quiz 16', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:20:00.000' AS DateTime), CAST(N'1900-01-01T00:05:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'5a1c8f42-7c8b-4e4f-bb56-6e3d5e3d7f2e', N'Quiz 3', CAST(N'2025-10-31' AS Date), CAST(N'1900-01-01T00:45:00.000' AS DateTime), CAST(N'1900-01-01T00:20:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'8e7a1f5f-3e4f-4e2c-a5c4-7d6b3a2f9f1b', N'Quiz 5', CAST(N'2025-08-31' AS Date), CAST(N'1900-01-01T01:30:00.000' AS DateTime), CAST(N'1900-01-01T00:30:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'6f9b3d2c-1e4f-4c6e-9a5b-7e2a8f3c5c1d', N'Quiz 9', CAST(N'2025-04-30' AS Date), CAST(N'1900-01-01T00:35:00.000' AS DateTime), CAST(N'1900-01-01T00:10:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'318e13a2-94f3-4b54-b9a9-906f3769e535', N'Quiz 2', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:45:00.000' AS DateTime), CAST(N'1900-01-01T00:15:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'5d89cd02-003c-470e-8241-98cd88a95e5f', N'Quiz 14', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:35:00.000' AS DateTime), CAST(N'1900-01-01T00:20:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'd4c0e9f0-1e2b-4c4e-9f9c-9a3f8d3f3e8e', N'Quiz 4', CAST(N'2025-09-30' AS Date), CAST(N'1900-01-01T00:50:00.000' AS DateTime), CAST(N'1900-01-01T00:25:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'a8e478eb-b592-40fd-aea7-9ab2a7358280', N'Quiz 15', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:50:00.000' AS DateTime), CAST(N'1900-01-01T00:25:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'4fbc8ec1-3d49-43ff-89c1-9e4084ee936e', N'Quiz 1', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:30:00.000' AS DateTime), CAST(N'1900-01-01T00:10:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'211adc88-98cb-4074-b1e4-ab0b82fb75d5', N'Quiz 12', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:30:00.000' AS DateTime), CAST(N'1900-01-01T00:12:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'0e91080d-e3d9-4db2-90d2-ab18beeac688', N'Quiz 13', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:45:00.000' AS DateTime), CAST(N'1900-01-01T00:15:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'b1e3e5d9-48f9-4c8f-b8b0-ae7e8c2f2e8b', N'Quiz 2', CAST(N'2025-11-30' AS Date), CAST(N'1900-01-01T01:00:00.000' AS DateTime), CAST(N'1900-01-01T00:15:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'fe4a7d16-152c-4405-a183-b576a27e095e', N'Quiz 9', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:55:00.000' AS DateTime), CAST(N'1900-01-01T00:35:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'7f2b0d8b-2c0e-4d5b-9a22-bc1c0f7a7f8c', N'Quiz 1', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:30:00.000' AS DateTime), CAST(N'1900-01-01T00:10:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'37630dde-12c7-45af-a67b-da16cb7474a0', N'Quiz 19', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:55:00.000' AS DateTime), CAST(N'1900-01-01T00:35:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'aebef191-d9bf-4af2-8d07-e1587d94a5d6', N'Quiz 10', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T01:10:00.000' AS DateTime), CAST(N'1900-01-01T00:40:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'1295be76-413f-4bd6-8b18-e770371af6d3', N'Quiz 11', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:25:00.000' AS DateTime), CAST(N'1900-01-01T00:10:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'24251298-e6c0-4877-b1d3-f531ff33deca', N'Quiz 6', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:50:00.000' AS DateTime), CAST(N'1900-01-01T00:25:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'e9fd4a2c-10cf-4f22-9eb8-f8978b66de14', N'Quiz 17', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T01:00:00.000' AS DateTime), CAST(N'1900-01-01T00:30:00.000' AS DateTime))
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleCode]) VALUES (N'314d4cb1-5267-4768-a6fc-20578977b948', N'User', N'USER')
INSERT [dbo].[Roles] ([RoleId], [RoleName], [RoleCode]) VALUES (N'35d7ca33-6080-4318-acc2-aaaf90a70ed9', N'Admin', N'ADMIN')
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'd06e870d-526a-4123-a7b5-0726afc8b347', N'Đỗ Thị K', N'Male', N'dothik@example.com', N'0911444555', CAST(N'2000-09-10' AS Date), N'default.png', CAST(N'2025-03-06T08:45:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST010')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'560c9d89-2c78-4596-8cfa-165585bf94cf', N'Võ Thị Q', N'Female', N'vothiq@example.com', N'0922777888', CAST(N'2002-02-22' AS Date), N'default.png', CAST(N'2025-03-06T09:15:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST016')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'88679e4b-a691-4992-888e-18b2ffb6507a', N'Cao Văn P', N'Male', N'caovanp@example.com', N'0977666888', CAST(N'2003-05-07' AS Date), N'default.png', CAST(N'2025-03-06T09:10:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST015')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'952cf10e-fd12-4ff1-9f11-30ee5674176e', N'huy', N'Male', N'huy@gmail.com', N'0123456789', CAST(N'2025-03-11' AS Date), N'string', CAST(N'2025-03-11T07:23:01.880' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'huy01')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'c4c680e8-0f44-45b6-8f65-334fe52c0d71', N'Phạm Văn C', N'Male', N'phamvanc@example.com', N'0912345678', CAST(N'2000-11-10' AS Date), N'default.png', CAST(N'2025-03-06T08:10:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST003')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'592691fb-7f88-46c9-896e-411c79c98a08', N'Lê Thị D', N'Female', N'lethid@example.com', N'0965432187', CAST(N'2001-07-25' AS Date), N'default.png', CAST(N'2025-03-06T08:15:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST004')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'43f03dca-0d18-4fda-82e7-4133a91c071e', N'Lương Thị S', N'Male', N'luongthis@example.com', N'0966555777', CAST(N'2001-11-15' AS Date), N'default.png', CAST(N'2025-03-06T09:25:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST018')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'13dcc272-55bc-4b2b-abe9-4ae019e7cef5', N'Hoàng Văn E', N'Male', N'hoangvane@example.com', N'0932111222', CAST(N'2003-02-18' AS Date), N'default.png', CAST(N'2025-03-06T08:20:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST005')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7f4f64be-0e74-4669-9069-5271528681b7', N'Trương Thị O', N'Female', N'truongthio@example.com', N'0933444555', CAST(N'2001-10-05' AS Date), N'default.png', CAST(N'2025-03-06T09:05:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST014')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7bf750cd-67b8-4eba-af22-5b42323665c5', N'Ngô Văn I', N'Male', N'ngovanii@example.com', N'0922333444', CAST(N'2001-01-21' AS Date), N'default.png', CAST(N'2025-03-06T08:40:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST009')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7a7b8590-7780-47dd-901f-5ea71283a6f6', N'Châu Văn T', N'Male', N'chauvant@example.com', N'0988222111', CAST(N'2003-01-09' AS Date), N'default.png', CAST(N'2025-03-06T09:30:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST019')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'465c00c9-1b40-4359-9405-683240b9f58e', N'Nguyễn Văn A', N'Male', N'nguyenvana@example.com', N'0987654321', CAST(N'2001-05-15' AS Date), N'default.png', CAST(N'2025-03-06T08:00:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST001')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'93fb68c8-3659-4bb5-862d-74b31d32123d', N'Phan Văn L', N'Female', N'phanvanl@example.com', N'0955666777', CAST(N'2003-03-08' AS Date), N'default.png', CAST(N'2025-03-06T08:50:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST011')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'84dff094-d87b-44f0-9c9c-7efdb5aa3e9b', N'Bùi Thị H', N'Male', N'buithih@example.com', N'0988111222', CAST(N'2002-06-14' AS Date), N'default.png', CAST(N'2025-03-06T08:35:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST008')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'e683c9e9-1422-40b8-9cd6-8ad39e27c37e', N'Tống Thị M', N'Female', N'tongthim@example.com', N'0944555666', CAST(N'2002-08-29' AS Date), N'default.png', CAST(N'2025-03-06T08:55:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST012')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'01bd0978-0559-4eca-a8cd-948f1650a54a', N'Vũ Văn G', N'Male', N'vuvang@example.com', N'0909090909', CAST(N'2001-12-05' AS Date), N'default.png', CAST(N'2025-03-06T08:30:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST007')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'22483812-1673-402c-916a-9c6b9db23286', N'Truong Dan Huy', N'Male', N'danhuy@gmail.com', N'021545414521', CAST(N'2004-01-01' AS Date), N'url', CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'SE4845')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'bc1fa14e-4b4b-4211-9a45-c28f7d8216b8', N'Trần Thị B', N'Male', N'tranthib@example.com', N'0978123456', CAST(N'2002-09-20' AS Date), N'default.png', CAST(N'2025-03-06T08:05:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST002')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'2e447032-4600-495b-8a0c-d11262dd69e9', N'Nguyễn Văn N', N'Male', N'nguyenvann@example.com', N'0911222333', CAST(N'2000-12-12' AS Date), N'default.png', CAST(N'2025-03-06T09:00:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST013')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'35a0db1f-3d89-480d-b299-d774b526add4', N'Đinh Văn R', N'Female', N'dinhvanr@example.com', N'0903334444', CAST(N'2000-07-30' AS Date), N'default.png', CAST(N'2025-03-06T09:20:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST017')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'dd856b9f-4166-45b9-a1d3-d891a4fb9905', N'Đặng Thị F', N'Female', N'dangthif@example.com', N'0944333444', CAST(N'2000-04-30' AS Date), N'default.png', CAST(N'2025-03-06T08:25:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST006')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'1363bebe-1eb0-47e4-b1ca-e57dcbdef626', N'string', N'Male', N'string', N'string', CAST(N'2025-03-07' AS Date), N'string', CAST(N'2025-03-07T03:04:54.140' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'string')
GO
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'Toán', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'Math', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'dac2c658-569b-468e-834b-66c5c848ba0b', N'Anh', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'Ð?a lý', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'Van', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'L?ch s?', N'url')
GO
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'60f9de47-2ade-4891-b783-4adfddd74b4c', N'Lê Van U', CAST(N'1986-06-22' AS Date), N'u@example.com', N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'male', N'url_to_image_U', CAST(N'2023-11-01T00:00:00.000' AS DateTime), N'0123456799')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd5295b62-2e8a-481a-af9c-5de6dce35b9b', N'Nguy?n Van W', CAST(N'1983-03-03' AS Date), N'w@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_W', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456701')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd30a460b-ff55-446f-8179-7ccf21d45e7a', N'Nguy?n Van O', CAST(N'1981-09-10' AS Date), N'o@example.com', N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'male', N'url_to_image_O', CAST(N'2023-05-01T00:00:00.000' AS DateTime), N'0123456793')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd421d04d-a993-4edf-832b-8a068fb60542', N'Ph?m Th? V', CAST(N'1991-04-28' AS Date), N'v@example.com', N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'female', N'url_to_image_V', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'0123456700')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'32238b3d-f414-4672-9619-8f9025702f5e', N'Tr?n Th? L', CAST(N'1989-03-15' AS Date), N'l@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_L', CAST(N'2023-02-01T00:00:00.000' AS DateTime), N'0123456790')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'71bc6fcf-73d8-415e-b255-921e89caa317', N'Nguy?n Van E', CAST(N'1982-09-10' AS Date), N'e@example.com', N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'male', N'url_to_image_E', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456783')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'f8f7facb-f580-4da7-ab4b-92448b0d1b52', N'Ph?m Th? R', CAST(N'1994-11-25' AS Date), N'r@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_R', CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'0123456796')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'0a262f41-3baf-4430-a6a5-97253b2f95c9', N'Tr?n Th? F', CAST(N'1992-12-05' AS Date), N'f@example.com', N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'female', N'url_to_image_F', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456784')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'3576cd46-4cb9-40d3-8e16-9d0943e91d1c', N'Ph?m Th? N', CAST(N'1992-01-30' AS Date), N'n@example.com', N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'female', N'url_to_image_N', CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'0123456792')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'34857279-8cef-4826-8074-a31ba3674619', N'Lê Van Q', CAST(N'1988-08-18' AS Date), N'q@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_Q', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'0123456795')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'92fcf14d-c47c-4896-915c-acbd1abf570d', N'Nguy?n Van K', CAST(N'1984-02-20' AS Date), N'k@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_K', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456789')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'f3555684-a1fe-499e-8ec4-af7ca12f467b', N'Lê Van M', CAST(N'1995-07-25' AS Date), N'm@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_M', CAST(N'2023-03-01T00:00:00.000' AS DateTime), N'0123456791')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'8dba2fea-8afb-4000-a49a-b01f3be52fe8', N'Lê Van C', CAST(N'1988-07-25' AS Date), N'c@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_C', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456781')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'39fc79cd-e79c-4a63-9ba5-be3432024336', N'Nguy?n Van S', CAST(N'1987-05-30' AS Date), N's@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_S', CAST(N'2023-09-01T00:00:00.000' AS DateTime), N'0123456797')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'826b13bf-35b4-4307-92f7-c13b195f4e2b', N'Lê Van Y', CAST(N'1990-05-15' AS Date), N'y@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_Y', CAST(N'2023-03-01T00:00:00.000' AS DateTime), N'0123456703')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'7e045801-01d1-4e33-98a8-c4901c9ddbe2', N'Ph?m Th? Z', CAST(N'1992-11-30' AS Date), N'z@example.com', N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'female', N'url_to_image_Z', CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'0123456704')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'f3e9c78c-de30-4c3a-b938-d13d85ea6b20', N'Tr?n Th? X', CAST(N'1985-12-12' AS Date), N'x@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_X', CAST(N'2023-02-01T00:00:00.000' AS DateTime), N'0123456702')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'070561e0-7d63-4c1a-8654-d891aa940c4c', N'Tr?n Th? T', CAST(N'1993-10-14' AS Date), N't@example.com', N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'female', N'url_to_image_T', CAST(N'2023-10-01T00:00:00.000' AS DateTime), N'0123456798')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'9ee05ad9-8b87-4ae7-a265-f190ef22579d', N'Nguy?n Van A', CAST(N'1985-05-20' AS Date), N'a@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_A', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456789')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd2911d46-289e-4f69-acce-f1a088ceacce', N'Tr?n Th? B', CAST(N'1990-03-15' AS Date), N'b@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_B', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456780')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'170c05fa-7875-40b3-8d70-fe880fabf184', N'Tr?n Th? P', CAST(N'1990-12-05' AS Date), N'p@example.com', N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'female', N'url_to_image_P', CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'0123456794')
GO
INSERT [dbo].[UserLogin] ([UserId], [UserName], [Password], [RoleId]) VALUES (N'7f64f7dd-f4f9-4952-9738-49089cfc785b', N'adminUser', N'hashed_password_here', N'35d7ca33-6080-4318-acc2-aaaf90a70ed9')
INSERT [dbo].[UserLogin] ([UserId], [UserName], [Password], [RoleId]) VALUES (N'f7896888-7c32-473c-96a4-6f421983af32', N'Anh', N'1234566@b', N'314d4cb1-5267-4768-a6fc-20578977b948')
INSERT [dbo].[UserLogin] ([UserId], [UserName], [Password], [RoleId]) VALUES (N'4e1757d4-43ba-46e8-b090-8dd882f2ff3f', N'normalUser', N'hashed_password_here', N'314d4cb1-5267-4768-a6fc-20578977b948')
INSERT [dbo].[UserLogin] ([UserId], [UserName], [Password], [RoleId]) VALUES (N'd5c6c595-6e4e-40f0-9519-db8f0c9abbd1', N'HUY', N'123456@a', N'35d7ca33-6080-4318-acc2-aaaf90a70ed9')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Role__D62CB59C3EDD6881]    Script Date: 20/03/2025 2:40:42 CH ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__1FC88604C9A6B29A]    Script Date: 20/03/2025 2:40:42 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__2724B2D16E24B519]    Script Date: 20/03/2025 2:40:42 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Teacher__A9D1053484637759]    Script Date: 20/03/2025 2:40:42 CH ******/
ALTER TABLE [dbo].[Teacher] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__UserLogi__C9F28456D19D1F1B]    Script Date: 20/03/2025 2:40:42 CH ******/
ALTER TABLE [dbo].[UserLogin] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Grade] FOREIGN KEY([GradeID])
REFERENCES [dbo].[Grade] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Grade]
GO
ALTER TABLE [dbo].[Class_Quiz]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ID])
GO
ALTER TABLE [dbo].[Class_Quiz]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([ID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Student]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Subject]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Teacher]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Student]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Teacher]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Subject]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD FOREIGN KEY([AnswerID])
REFERENCES [dbo].[Answer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students_Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Students_Teachers_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Students_Teachers] CHECK CONSTRAINT [FK_Students_Teachers_Student]
GO
ALTER TABLE [dbo].[Students_Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Students_Teachers_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
GO
ALTER TABLE [dbo].[Students_Teachers] CHECK CONSTRAINT [FK_Students_Teachers_Teacher]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Teacher_Class]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_Class]  WITH CHECK ADD FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_Student]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Student_Student] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Teacher_Student] CHECK CONSTRAINT [FK_Teacher_Student_Student]
GO
ALTER TABLE [dbo].[Teacher_Student]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Student_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
GO
ALTER TABLE [dbo].[Teacher_Student] CHECK CONSTRAINT [FK_Teacher_Student_Teacher]
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD CHECK  (([Status]='Not Started' OR [Status]='In Progress' OR [Status]='Completed'))
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([Gender]='Other' OR [Gender]='Female' OR [Gender]='Male'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Gender]='Other' OR [Gender]='Female' OR [Gender]='Male'))
GO
