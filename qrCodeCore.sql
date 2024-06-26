USE [QrCodeMenuDb]
GO
/****** Object:  Table [dbo].[TBL_BUSINESSES]    Script Date: 16.04.2024 22:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BUSINESSES](
	[Business_Id] [int] IDENTITY(1,1) NOT NULL,
	[Business_Name] [nvarchar](max) NOT NULL,
	[Business_Type] [int] NOT NULL,
	[Business_Address] [nvarchar](max) NOT NULL,
	[Business_CreatedDate] [datetime] NOT NULL,
	[Business_Status] [bit] NULL,
	[Business_Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBL_BUSINESSES] PRIMARY KEY CLUSTERED 
(
	[Business_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FOOD_TYPES]    Script Date: 16.04.2024 22:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FOOD_TYPES](
	[FoodType_Id] [int] IDENTITY(1,1) NOT NULL,
	[FoodType_Name] [nvarchar](50) NOT NULL,
	[FoodType_Status] [bit] NOT NULL,
	[FoodType_BusinessId] [int] NOT NULL,
	[FoodType_CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TBL_FOOD_TYPES] PRIMARY KEY CLUSTERED 
(
	[FoodType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FOODS]    Script Date: 16.04.2024 22:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FOODS](
	[Food_Id] [int] IDENTITY(1,1) NOT NULL,
	[Food_Name] [nvarchar](50) NOT NULL,
	[Food_Price] [nvarchar](50) NOT NULL,
	[Food_CreatedDate] [datetime] NOT NULL,
	[Food_Type] [int] NOT NULL,
	[Food_Business] [int] NOT NULL,
	[Food_Description] [nvarchar](100) NOT NULL,
	[Food_Photo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TBL_FOODS] PRIMARY KEY CLUSTERED 
(
	[Food_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_TYPES]    Script Date: 16.04.2024 22:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_TYPES](
	[Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](50) NOT NULL,
	[Type_Status] [bit] NOT NULL,
 CONSTRAINT [PK_TBL_TYPES] PRIMARY KEY CLUSTERED 
(
	[Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_USERS]    Script Date: 16.04.2024 22:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USERS](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[User_LastName] [nvarchar](50) NOT NULL,
	[User_FullName] [nvarchar](101) NOT NULL,
	[User_UserName] [nvarchar](50) NOT NULL,
	[User_Password] [nvarchar](50) NOT NULL,
	[User_Status] [bit] NOT NULL,
	[User_BusinessId] [int] NOT NULL,
 CONSTRAINT [PK_TBL_USERS] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_BUSINESSES] ON 

INSERT [dbo].[TBL_BUSINESSES] ([Business_Id], [Business_Name], [Business_Type], [Business_Address], [Business_CreatedDate], [Business_Status], [Business_Photo]) VALUES (1, N'ASPAVA', 1, N'Ankara', CAST(N'2024-01-14T00:00:00.000' AS DateTime), 1, N'/Images/1.jpeg')
INSERT [dbo].[TBL_BUSINESSES] ([Business_Id], [Business_Name], [Business_Type], [Business_Address], [Business_CreatedDate], [Business_Status], [Business_Photo]) VALUES (2, N'CLINIC COFFEe', 2, N'Ankara', CAST(N'2024-01-16T00:00:00.000' AS DateTime), 1, N'/Images/2.jpg')
SET IDENTITY_INSERT [dbo].[TBL_BUSINESSES] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FOOD_TYPES] ON 

INSERT [dbo].[TBL_FOOD_TYPES] ([FoodType_Id], [FoodType_Name], [FoodType_Status], [FoodType_BusinessId], [FoodType_CreatedDate]) VALUES (2, N'Ara Sıcaklar', 0, 1, CAST(N'2024-01-14T20:07:03.0000000' AS DateTime2))
INSERT [dbo].[TBL_FOOD_TYPES] ([FoodType_Id], [FoodType_Name], [FoodType_Status], [FoodType_BusinessId], [FoodType_CreatedDate]) VALUES (7, N'Tatlılar', 1, 1, CAST(N'2024-04-14T15:18:01.6866667' AS DateTime2))
INSERT [dbo].[TBL_FOOD_TYPES] ([FoodType_Id], [FoodType_Name], [FoodType_Status], [FoodType_BusinessId], [FoodType_CreatedDate]) VALUES (8, N'string', 1, 0, CAST(N'2024-04-16T19:10:10.8733333' AS DateTime2))
INSERT [dbo].[TBL_FOOD_TYPES] ([FoodType_Id], [FoodType_Name], [FoodType_Status], [FoodType_BusinessId], [FoodType_CreatedDate]) VALUES (9, N'Ara Soğuk', 1, 1, CAST(N'2024-04-16T22:14:45.7266667' AS DateTime2))
INSERT [dbo].[TBL_FOOD_TYPES] ([FoodType_Id], [FoodType_Name], [FoodType_Status], [FoodType_BusinessId], [FoodType_CreatedDate]) VALUES (10, N'string', 1, 0, CAST(N'2024-04-16T19:24:08.3700000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TBL_FOOD_TYPES] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FOODS] ON 

INSERT [dbo].[TBL_FOODS] ([Food_Id], [Food_Name], [Food_Price], [Food_CreatedDate], [Food_Type], [Food_Business], [Food_Description], [Food_Photo]) VALUES (2, N'Su', N'9.99', CAST(N'2024-04-14T15:11:57.773' AS DateTime), 3, 1, N'0.5 Ml Su', N'..')
INSERT [dbo].[TBL_FOODS] ([Food_Id], [Food_Name], [Food_Price], [Food_CreatedDate], [Food_Type], [Food_Business], [Food_Description], [Food_Photo]) VALUES (4, N'string', N'string', CAST(N'2024-04-16T17:39:35.847' AS DateTime), 0, 0, N'string', N'string')
SET IDENTITY_INSERT [dbo].[TBL_FOODS] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_TYPES] ON 

INSERT [dbo].[TBL_TYPES] ([Type_Id], [Type_Name], [Type_Status]) VALUES (1, N'Resturant', 1)
INSERT [dbo].[TBL_TYPES] ([Type_Id], [Type_Name], [Type_Status]) VALUES (2, N'Kafe', 1)
SET IDENTITY_INSERT [dbo].[TBL_TYPES] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_USERS] ON 

INSERT [dbo].[TBL_USERS] ([User_Id], [User_Name], [User_LastName], [User_FullName], [User_UserName], [User_Password], [User_Status], [User_BusinessId]) VALUES (1, N'Enes', N'KILIÇ', N'Enes KILIÇ', N'enes.kilic', N'123456', 1, 1)
INSERT [dbo].[TBL_USERS] ([User_Id], [User_Name], [User_LastName], [User_FullName], [User_UserName], [User_Password], [User_Status], [User_BusinessId]) VALUES (2, N'Batın', N'ŞAHİN', N'Batın ŞAHİN', N'batin.sahin', N'123456', 1, 1)
INSERT [dbo].[TBL_USERS] ([User_Id], [User_Name], [User_LastName], [User_FullName], [User_UserName], [User_Password], [User_Status], [User_BusinessId]) VALUES (3, N'Ahmet', N'DAĞ', N'Ahmet DAĞ', N'ahmet.dag', N'123456', 1, 2)
SET IDENTITY_INSERT [dbo].[TBL_USERS] OFF
GO
