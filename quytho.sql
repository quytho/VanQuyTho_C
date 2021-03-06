USE [VanQuyThoDB]
GO
/****** Object:  Table [dbo].[UserAcount]    Script Date: 21/06/2021 9:14:10 SA ******/
DROP TABLE [dbo].[UserAcount]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 21/06/2021 9:14:10 SA ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21/06/2021 9:14:10 SA ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21/06/2021 9:14:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 21/06/2021 9:14:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_ID] [int] NULL,
	[Name] [nvarchar](250) NOT NULL,
	[UnitCost] [decimal](18, 1) NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAcount]    Script Date: 21/06/2021 9:14:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAcount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[Status] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (1, N'Cafe', N'Hương vị cafe quê hương')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (2, N'Cafe gói-Cafe u?ng li?n', N'Cafe tiện lợi')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (3, N'Ðá Xay-Matcha', N'Hương vị tươi mới')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (4, N'Bánh-Snack', N'Đồ ăn vặt')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (1, 1, N'B?C S?U', CAST(24000.0 AS Decimal(18, 1)), N'20', N'1.jpg', N'Mỗi cái nhấp môi vào li Caramel Macchiato sẽ đem đến một sự ngạc nhiên thú vị, vì nhiều hương vị được gói gọn trong một li Caramel Macchiato', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (2, 1, N'cafe', CAST(25000.0 AS Decimal(18, 1)), N'40', N'2.jpg', N'ngon', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (3, 1, N'CÀ PHÊ ÐEN', CAST(25000.0 AS Decimal(18, 1)), N'20', N'2.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (4, 1, N'CÀ PHÊ S?A', CAST(25000.0 AS Decimal(18, 1)), N'20', N'3.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (5, 1, N'CAPPUCCINO', CAST(25000.0 AS Decimal(18, 1)), N'20', N'4.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (6, 1, N'CARAMEL MACCHIATO', CAST(25000.0 AS Decimal(18, 1)), N'20', N'5.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (7, 1, N'COLD BREW PHÚC B?N T?', CAST(25000.0 AS Decimal(18, 1)), N'20', N'6.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (8, 2, N'COLD BREW S?A TUOI', CAST(25000.0 AS Decimal(18, 1)), N'20', N'7.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (9, 2, N'Combo 4 Lon Cà Phê S?a Ðá', CAST(25000.0 AS Decimal(18, 1)), N'20', N'8.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (10, 2, N'Cà Phê Rich Finish', CAST(25000.0 AS Decimal(18, 1)), N'20', N'9.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (11, 2, N'CÀ PHÊ PHIN', CAST(25000.0 AS Decimal(18, 1)), N'20', N'10.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (12, 3, N'CÀ PHÊ ARABICA', CAST(25000.0 AS Decimal(18, 1)), N'20', N'2.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (13, 3, N'TRÀ H?T SEN', CAST(25000.0 AS Decimal(18, 1)), N'20', N'3.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (14, 3, N'TRÀ ÐÀO CAM S?', CAST(25000.0 AS Decimal(18, 1)), N'20', N'4.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (15, 4, N'TRÀ PHÚC B?N T?', CAST(25000.0 AS Decimal(18, 1)), N'20', N'5.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (16, 4, N'Bánh mì que', CAST(25000.0 AS Decimal(18, 1)), N'20', N'6.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (17, 4, N'cam tuoi s?y d?o', CAST(25000.0 AS Decimal(18, 1)), N'20', N'7.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
INSERT [dbo].[Product] ([ID], [Category_ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (18, 4, N'i?u vàng m?t ong', CAST(25000.0 AS Decimal(18, 1)), N'20', N'2.jpg', N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát', N'activities')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[UserAcount] ON 

INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (2, N'QuyTho1', N'12345', N'Blocked')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (3, N'QuyTho2', N'12345', N'Activities')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (4, N'QuyTho3', N'6789', N'Activities')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (5, N'VanTho', N'3456789', N'Activities')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (6, N'VanThanh', N'12789', N'Activities')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (7, N'VanThuan', N'1289', N'Blocked')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (8, N'VanTuan', N'1234', N'Blocked')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (9, N'Quyhieu', N'3456789', N'Activities')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (10, N'anhtho', N'b81446c3c413a9e344a68596a18351b2', N'Blocked')
INSERT [dbo].[UserAcount] ([ID], [UserName], [Password], [Status]) VALUES (11, N'test', N'1111', N'Blocked')
SET IDENTITY_INSERT [dbo].[UserAcount] OFF
