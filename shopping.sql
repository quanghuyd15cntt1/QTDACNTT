USE [master]
GO
/****** Object:  Database [Shopping]    Script Date: 3/14/2023 8:36:33 AM ******/
CREATE DATABASE [Shopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shopping.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shopping_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Shopping] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Shopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shopping] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shopping] SET  MULTI_USER 
GO
ALTER DATABASE [Shopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shopping] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shopping] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shopping] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Shopping] SET QUERY_STORE = OFF
GO
USE [Shopping]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL,
	[ProductImage] [nvarchar](500) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[DateOrder] [datetime] NULL,
	[DateShip] [datetime] NULL,
	[IsPaid] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Price] [int] NULL,
	[CreatedBy] [int] NULL,
	[ViewCount] [int] NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[Quantity] [int] NULL,
	[PurchasedCount] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CategoryID] [int] NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nchar](12) NULL,
	[UserTypeID] [int] NULL,
	[Password] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[IsConfirm] [bit] NULL,
	[Captcha] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202209141214002_InitialCreate', N'CosmeticsShop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE33616BE2FB0EF20E8AA5BA4567E3A83D9C09E227592DDA0931F8C3383DE0D68897688912855A43209167DB2BDE823F51596942859E28F44D98AED14058A583CFC7878F8913C3C3C9CBFFEF7E7F8E7A728741E614A508C27EED1E8D07520F6E300E1E5C4CDE8E2C777EECFEFFFF1DDF822889E9CCFA5DC099763353199B80F9426A79E47FC071801328A909FC6245ED0911F471E0862EFF8F0F05FDED191071984CBB01C67FC31C3144530FFC17E4E63ECC3846620BC8E031812F19D95CC7254E706449024C08713771A930852E493D9439C8C0A79D7390B1160BACC60B8701D80714C01659A9E7E227046D3182F6709FB00C2FBE70432B9050809143D385D89DB76E6F09877C65B552CA1FC8CD038EA09787422ACE3C9D5D7B2B15B598FD9EF82D9993EF35EE7369CB85701CC3F7D8C436600B9C1D3699872E1897B5D357146921B484765C55101799932B86F71FA7554473C70ACEB1D546C3A1E1DF2FF0E9C6916D22C85130C339A82F0C0B9CBE621F27F85CFF7F15788272747F3C5C9BB376F4170F2F62778F2A6DE53D65726D7F8C03EDDA5710253A61B5C54FD771DAF59CF932B56D56A750AAB302EB189E13AD7E0E903C44BFAC0A6CCF13BD7B9444F3028BF08727DC288CD235689A619FB799385219887B02AF75ADBE4FF6F69F5F8CDDB415ABD018F68990FBDD43E9B38299B571F61989792079414D3AB31DE5F84D8651A47FC77935F45E997599CA53EEF4C6C14B907E912D2A676636F455E2B4A73A8E1695DA2EE3FB5B9A62ABDB5A2BC43EBCC84B2896DCF8652DF976DD79A716749C2062FA716B7481BE174DBD548AACFE851975AD1E7C8963E9875EBEFBC1A5E440085032C8716AD305F6481D20856BDFC2566E403B8B7CE778010B61A04FF01E4A14575F6E700AACFA09FA58CA4330AA2E4C55BBB7B8831BCC9A239E7FEF6DA1A6C68EEBFC597C0A7717A8179AD8DF13EC4FED738A317383807147EA27E09C87FDEA3C81E601075CE7C1F1272C9C80C8369CC5CED12F00AD393E3DE707C89DAB53B320D018AF4FE88B4987E2945573E895E42F14B0C623ADFA44DD50FF112613B554B51B3AA8544A7AA42ACAFAA1CCC4E532169563417E8D4B3901ACCDBCB476878772F87DD7F7F6FB3CDDBB416D4CC38632B24FC37C43065CB5870072885295E8D80CDBAB10B67211F3EDEE88BEF4D794B9F41980DDDD45AB3215F04869F0D39ECFECF865C4DF6F91105DC2BB1380495C20CDE4A5E7FBEEA9E739266DB9E0E8D6E6EBBF1EDAC01A6E9724648ECA37C1668C25F2278D1D49FF9704E7724A3E88D1C0D611D6344477CCB635F58DF5C9954B7F81C869042E7CC2FC28353407C10A866641D0A7A2856EEA81AC5565191A6723F286D32A6C3945702FC1044D84C4598AAD302611F2520ECB49254D3720BE37DAFDA904BCE6102316FB0D312368DEB83205C81AA1D6950BA2C34F66A8C6B27A2C16B358D79970BBB1A772536B1154E76F8CE065E0AFFED4588D96EB12D90B3DD24360A18037ABB20A838ABD812403EB8EC1B41A5139381A0C2A5DA0A419B16DB01419B267975042D8EA8B6E32F9D57F78D9ECD83F2F6B7F55673ED809B0D7BEC19350BDF93D5A1AC064C557A9ECF79217CA29AC319D3539CCF887075658A70F019A4CD90CDCADFD5FAA15E3B884CA236C015D13A40C555A002A44CA81ECA95B1BC56ED8417D103B68CBBB5C28AB55F82AD7140C5AE5F89D604CD17A73239AD4E1F55CF2A362824B73A2CD47034849017AF66C72D8C628ACBAA86B1F185FB78C3B58E89C168315087E76A3052D999C1AD5452B3DB4A3A87AC8F4BB6919524F7C960A5B233835B4970B4DB481AA7A0875BB091899A5BF84093AD8C7454BB4D5536F68A5C29F161EC1992AAC6D72049105ED692ACC417672632AC7E9CF54F3C8A0A0CCF279AFCA34ADBAA251AA76009A5527E5B1EC04B94127A0E2898031EE799069122A6DD5B0DCB7FD9647DFB5407B1DC074A69FEB788F1EA2EF01BBBADEA8E08944BD6C788FB3479205DC3007D7587A7BD8110A49AD8FD340EB3089B5D2C73EDE206AF5EBFF8A2228C3D497FC58552ECA538BA4DE35B0D8D3A2D061BA6CA87597FA8CC102683971E68DDE426AFD48C5206A9EA28A6C0D5CE86CEE4CCF41C2ED953EC3F5A9D082F33B7447A4A1D407CEA8951CB7050C06A65F6A8CD24943A66B3C41E51CA34A9434A453DB4ACE7933494AC17AC8567B0A85EC2BE053583A48EAE96DA236B7249EAD09AE235B0353ACB65F6A89A74933AB0A6D81E7B957B222FA37BBC7B19CF2F1B6C5FC52177B3FDCB80F1326BE230DB5FED2EBF0E54FBDC134BDCD62B60E2FB5EF2C978D2DB804F457463333E1930CCAB4FE31EBCB9F8B45EDE9B311B97DB8D05BEED72DF8CD78FB52FCA0DE5A8278B54AD57473EE9683716C72C9B4735D2B9AB10719DD28C6C737F261446232E309AFD1E4E4304F9525E0A5C038C1690D022A1C33D3E3C3A965EE5ECCF0B198F9020D41C534DCF649A63B685DC2CFC0852FF01A46AA6C406AF4856A04A10FA0A07F069E2FE37AF759AC733F85FF9E703E78A7CC2E8F78C15DCA71974FE50333F87C9AAB778C75129FAC7AB7820616FF2ABDFBE14550F9CDB944DA753E75032F43AC3DF7C36D14B9BA2EA06DAACFD98E2F5CEB6C62B052DAA345BD67F94304774900709A596DF47E0E99F7D55D33E3AD80851F3B06028BC414C687A38B00E96F1D140C07ED2FCD140BFCEEA1F11ACA39AF10101C2FDC1E4E703F6CB50597387FB90E6C8B48D2529B77367FAF546B998BBDE9B942CED8D26BA9A89DD036ED06CEBCD5C945796C53CD8D6A949521E0C7B97BC7FF1CCE47D49465E39EDBBCD41DE66DA71CBB5D2DF2ADB780FF2E334F93EBBCF29DE36D74C31E03D4FCCEC9739BC676413DBFCEEF383B74D36538078CFC9D62B0B78CFB8B6ABFD73C74CB3DE42779ED3ABA62719EE727451E4AE9CDD22E4CE8EFFF39891A0F0288BA796FA24B1B604D78E065722E646CDD96972C3CAC451DA5524DA9BEDD757B1E1B77656C8B4376BC8E96C6B5BACFFAD6D0B99F6B60D9992BBC836D6E62AEA32C03BD6B1B624AAD7945DDCE84947327B97CFDA7A31FF9A928907314A63F6186E975F4FEEF020261972EAF4C815562F8AD9DE59FB371AD9FE4DD07205C1FFC5460CFDC6AE59C95CE1455C6EDE9246A58814A1B98614046C4B3D4B295A009FB2621E80CEDF8AE7413D7E0D3287C115BECD689251D66518CDC346C08B3B016DEDE709D14D9DC7B709FF4586E8025313F1C0FD2DFE25436150E97DA989091920B87721C2BD7C2C290FFB2E9F2BA49B185B0209F3554ED13D8C929081915B3C038F701DDD18FD3EC025F09F5711401348F74034CD3E3E4760998288088C557DF6937138889EDEFF1F937B7DB0AA540000, N'6.4.4')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'114773830659587105003', N'048075f4-bf64-4cdc-bda1-a2bb62e168d6')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'114476020849571474120', N'4a13e689-651b-4965-bfa4-46fefadf7646')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'048075f4-bf64-4cdc-bda1-a2bb62e168d6', N'khuongip564gb@gmail.com', 0, NULL, N'9cde6425-e456-4b15-a411-b9adccc3b624', NULL, 0, 0, NULL, 1, 0, N'khuongip564gb@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4a13e689-651b-4965-bfa4-46fefadf7646', N'khuongip564gb1@gmail.com', 0, NULL, N'3a9816a3-a385-4467-9751-1f05062eed10', NULL, 0, 0, NULL, 1, 0, N'khuongip564gb1@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd5420e22-fc5b-434a-8f12-6e606acca310', N'lapankhuongnguyen@gmail.com', 0, N'ALRIoQePumycmTvVs0Rnqqup+p3n0NuZheKZLE9nMjHxPBzpN3JTY/iXRWokrzfedw==', N'92147203-ff35-4cf1-9856-b55775863bbd', NULL, 0, 0, NULL, 1, 0, N'lapankhuongnguyen@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1006, N'Skin', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (29, 2, 1, N'hi shop', CAST(N'2022-07-26T15:08:39.133' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (30, 2, 1, N'ấd', CAST(N'2022-07-26T15:08:49.193' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (31, 4, 1, N'hi shop', CAST(N'2022-07-28T20:57:06.260' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (32, 1, 4, N'chào bạn', CAST(N'2022-07-28T20:57:21.300' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (33, 4, 1, N'aaaaaaaaaaa', CAST(N'2022-07-28T20:57:27.650' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (34, 3, 1, N'ryut', CAST(N'2022-08-16T21:06:29.320' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (35, 3, 1, N'fgedfg', CAST(N'2022-08-16T21:06:35.967' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (36, 3, 1, N'asdasd', CAST(N'2022-08-16T21:06:38.037' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (37, 3, 1, N'dd', CAST(N'2022-08-16T21:07:04.450' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (38, 3, 1, N'oo', CAST(N'2022-08-16T21:09:04.690' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (39, 2, 1, N'dsa', CAST(N'2022-08-26T09:52:39.307' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (40, 2, 1, N'fdbdbf', CAST(N'2022-08-26T09:52:43.117' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (41, 2, 1, N'ewr', CAST(N'2022-08-26T09:52:46.790' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (42, 3, 1, N'htrh', CAST(N'2022-09-17T19:00:29.157' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (8, 10, N'Cerave Hyaluronic Acid Serum for Face', 17, 2, 7, N'81pYR5vNvjL._SX466_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (9, 1, N'Face Jack Black Double-Duty Face', 28, 1, 9, N'71bJ8sbepzL._SX522_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (10, 2, N'PCA SKIN Purifying Skin Care Face Mask', 50, 1, 10, N'61-cF2l6m2L._SY679_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (11, 9, N'Vanicream Daily Facial Moisturizer', 13, 1, 11, N'51VWboSvF6L._SX466_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (12, 1, N'Face Jack Black Double-Duty Face', 28, 1, 12, N'71bJ8sbepzL._SX522_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (13, 1, N'Face Jack Black Double-Duty Face', 28, 1, 13, N'71bJ8sbepzL._SX522_.jpg')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (7, 3, N'Complete', CAST(N'2022-09-18T17:59:08.713' AS DateTime), CAST(N'2022-09-22T16:40:15.837' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (8, 3, N'Complete', CAST(N'2022-09-18T17:59:12.723' AS DateTime), CAST(N'2022-09-22T16:40:17.763' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (9, 3, N'Complete', CAST(N'2022-09-18T18:01:04.527' AS DateTime), CAST(N'2022-09-22T16:40:18.913' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (10, 3, N'Complete', CAST(N'2022-09-18T18:05:00.083' AS DateTime), CAST(N'2022-09-22T16:40:20.010' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (11, 3, N'Complete', CAST(N'2022-09-18T18:06:48.697' AS DateTime), CAST(N'2022-09-22T16:40:21.067' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (12, 3, N'Complete', CAST(N'2022-09-18T18:10:25.793' AS DateTime), CAST(N'2022-09-22T16:40:22.113' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (13, 3, N'Complete', CAST(N'2022-09-18T18:11:39.153' AS DateTime), CAST(N'2022-09-22T16:40:23.257' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (1, N'Skin Perfecting 2% BHA Liquid Exfoliant', 34, 1, 0, N's2421360-main-zoom.jpg', N'p469502-av-9-zoom.jpg', N'p469502-av-11-zoom.jpg', 94, 10, N'
What it is: A daily leave-on exfoliant with two percent salicylic acid to sweep away dead skin cells, unclog pores, and visibly smooth wrinkles—practically overnight.

Skin Type: Normal, Dry, Combination, and Oily

Skincare Concerns: Pores, Uneven Texture, and Acne and Blemishes

Formulation: Liquid

Highlighted Ingredients:
- Salicylic Acid (BHA) 2%: Penetrates pores to clear blemish-causing buildup and shed dead skin.
- Green Tea: A potent antioxidant that soothes irritated skin while improving visible signs of aging.
- Methylpropanediol: Hydrates while visibly enhancing the skin’s glow and the formula’s penetration.

Ingredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, and triclosan. It is also gluten-free, cruelty-free, and comes in recyclable packaging.

What Else You Need to Know: With a two percent concentration of salicylic acid and a pH range of 3.2 to 3.8, this global bestseller breaks down complexion-dulling buildup on skin’s surface and within pores. It leaves skin feeling dramatically smoother and looking clearer and more radiant than before. People notice a natural, visible glow after just one use.

Clinical Results: In an independent consumer panel:
- 91% of users had visibly healthier skin
- 90% saw improved skin texture
- 82% experienced smaller-looking pores', 1, 1006, N'Oliy')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (2, N'Superfood Antioxidant Cleanser', 36, 1, 0, N's1863588-main-zoom.jpg', N's1863588-av-01-zoom.jpg', N's1863588-av-04-zoom.jpg', 7, 3, N'
What it is: An award-winning face wash with cold-pressed antioxidants to remove makeup, prevent buildup in pores, and support skin’s pH balance.
Skin Type: Normal, Dry, Combination, and Oily
Skincare Concerns: Pores, Dullness, and Blemishes
Formulation: Rich Gel
Highlighted Ingredients:
- Kale: Rich in skin-loving phytonutrients and vitamins C, E, and K to support skin and leave it visibly glowing.
- Spinach: A lightweight skin soother with cooling properties and rich with conditioning essential fatty acids.
- Green Tea: An antioxidant-rich powerhouse that fights visible signs of aging.
Ingredient Callouts: This product is vegan, cruelty-free, and gluten-free, and comes in recyclable packaging.
What Else You Need to Know: This daily green juice face cleanser is formulated with a proprietary superfood-extract blend of kale, spinach, and green tea. Effective for both single and double cleansing, this antioxidant-rich formula is sulfate- and alcohol-free to cleanse skin without drying for optimal pH balance.

Clean + Planet Positive at Sephora
When you see our Clean + Planet Positive seal, this brand''s products are formulating without certain ingredients that are potentially harmful to human health and environment. They also address ingredients clients are concerned about, including phthalates, formaldehyde or formaldehyde releasers, oxybenzone and octinoxate, hydroquinone, triclosan, coal tar, methylisothiazolinone and methylchloroisothiazolinone, insoluble plastic microbeads, and more: For the full list, check out the Ingredients tab.

On top of meeting the Clean at Sephora formulated without list, these brands are on a mission to do right by your routine and the planet by making climate commitments and focusing on sustainable sourcing, responsible packaging, and environmental giving.', 1, 1006, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (3, N'Protini™ Polypeptide Firming Moisturizer', 22, 1, 0, N's2385748-main-zoom.jpg', N's2385748-av-9-zoom.jpg', N's2385748-av-10-zoom.jpg', 7, 3, N'
What it is: A protein moisturizer that combines signal peptides, growth factors, amino acids, and pygmy waterlily to visibly improve skin‘s tone, texture, and firmness.



Skin Type: Normal, Dry, Combination, and Oily



Skincare Concerns: Dryness, Dullness and Uneven Texture, and Loss of Firmness and Elasticity



Highlighted Ingredients:

- Signal Peptide Complex (Growth Factors): Nine signal peptides (made up of amino

acids, which form proteins in the skin) bind moisture to skin—visibly plumping, firming,

and restoring bounce.

- Pygmy Waterlily Stem Cell Extract: An excellent source of antioxidants and nutrients to replenish the skin; extremely moisturizing, soothing, and calming; and effective in supporting healthy-, youthful-looking skin.

- Soybean Folic Acid Ferment Extract: This B vitamin plays a central role in maintaining youthful-, elastic-looking skin. Skin is thirsty for folic acid, especially after exposure to sun.



Ingredient Callouts: This product is vegan and cruelty-free.



What Else You Need to Know: Protini™ restores younger-, revived-looking skin. Lines, wrinkles, and sun damage appear reduced and skin feels strengthened and moisturized. Think of Protini™ like adding protein to your smoothie. Abundant with proteins and nutrients, it replenishes and restores skin to a visibly strong, healthy state. It has a pH of 4.0.

This cream is free of essential oils, silicones, and fragrance.

Drunk Elephant is committed to using only ingredients that either directly benefit the health of the skin or support the integrity of their formulations. The brand focuses on healthy pH levels, formulations the skin recognizes, small molecular structure that’s easily absorbed, and effective active ingredients that also support the skin’s acid mantle. All of their products are designed to be mixed together—what Drunk Elephant calls making a smoothie. (This is true for all of their products except their sunscreen, Umbra, which sits on top of the skin, protecting it from UV damage.) The result is skin that is reset to its happiest, healthiest state.

Drunk Elephant is a supporter of IEF (International Elephant Foundation) and is cruelty-free.

Award Wins:

CEW, 2019 Beauty Awards

Harper‘s BAZAAR, 2019 Anti-Aging Award

Byrdie Beauty, 2019 Skincare Award

Influenster, 2019 Best Indie Facial Moisturizer



Clinical Results: In a clinical study with 31 people after 8 weeks:

-96% showed improvement in skin’s tone, radiance, and luminosity

-93% showed improvement in texture

-90% showed improvement in skin’s hydration



Clean at Sephora

Clean at Sephora is a curation of brands committed to evolving the beauty industry. When you see our Clean seal, you can be sure this brand''s products are formulated without certain ingredients that are potentially harmful to human health and the environment and also address ingredients clients are concerned about, including phthalates, formaldehyde or formaldehyde releasers, oxybenzone and octinoxate, hydroquinone, triclosan, coal tar, methylisothiazolinone and methylchloroisothiazolinone, insoluble plastic microbeads, and more. For the full list, check out the Ingredients tab.', 1, 1006, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (4, N'The Water Cream Oil-Free Pore Minimizing', 69, 1, 0, N's1932920-main-zoom.jpg', N'p418218-av-01-zoom.jpg', N's1932920-av-8-zoom.jpg', 10, 5, N'
ONLY AT SEPHORA
Which skin type is it good for?
✔ Normal
✔ Oily
✔ Combination
✔ Sensitive
What it is:
An oil-free, anti-aging water cream that releases a burst of skin-improving Japanese nutrients, powerful botanicals, and optimal hydration for poreless-looking skin.
Solutions for:
- Dryness
- Pores
- Dullness and uneven texture
If you want to know more…
The Water Cream provides nutrient-rich, balanced hydration with the unique water-burst that breaks upon application to deliver nourishment without leaving skin sticky or greasy. It clarifies and refines skin with pure, powerful Japanese botanicals: Japanese wild rose visibly tightens pores and smooths skin texture; Japanese leopard lily helps control excess oil and purify skin by supporting natural skin turnover; and hadasei-3—an anti-aging trinity of green tea, rice, and algae—restores healthy-looking radiance. The formula imparts a subtle, shine-free glow with a touch of 23-karat gold.
What else you need to know:
Beauty icons for over 300 years, geisha adopted Japanese wild rose to create a refined, poreless-looking canvas underneath their makeup. The Water Cream has harnessed this potent botanical to honor the original makeup lover. This pure formula is noncomedogenic, non-irritating, non-sensitizing, dermatologist tested, and cruelty-free. It is formulated without mineral oil, synthetic fragrances, sulfate detergents, urea, DEA, or TEA.
Beauty that gives back: every Tatcha purchase you make supports girls’ education around the world. Tatcha is proud to partner with Room to Read to transform girls’ futures.—Victoria Tsai, Founder
Clean at Sephora
Clean at Sephora is a curation of brands committed to evolving the beauty industry. When you see our Clean seal, you can be sure this brand''s products are formulated without certain ingredients that are potentially harmful to human health and the environment and also address ingredients clients are concerned about, including phthalates, formaldehyde or formaldehyde releasers, oxybenzone and octinoxate, hydroquinone, triclosan, coal tar, methylisothiazolinone and methylchloroisothiazolinone, insoluble plastic microbeads, and more. For the full list, check out the Ingredients tab.', 1, 1006, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (5, N'The Rice Wash Skin-Softening Cleanser', 38, 1, 0, N's2382232-main-zoom.jpg', N's2382232-av-03-zoom.jpg', N's2382232-av-02-zoom.jpg', 10, 0, N'What it is: A PH-neutral, daily cream cleanser that gently washes away impurities without stripping skin—leaving it hydrated, feeling soft, and looking luminous.

Skin Type: Normal, Dry, and Combination

Skincare Concerns: Dryness

Formulation: Cream

Highlighted Ingredients:
- Blend of Japanese Algae: Leaves skin feeling soft, comforted, and nourished.
- Hyaluronic Acid: Helps skin look smooth and plump with hydration.
- Tatcha‘s Signature Hadasei-3: Restores a visibly healthy-, youthful-looking radiance.

Ingredient Callouts: This product is vegan, cruelty-free, and gluten-free.

What Else You Need to Know: For centuries, Japanese women have repurposed the milky water leftover from rinsing rice for cooking to use in their beauty rituals. A rich source of vitamins A, B2, B12, and E, this byproduct softens and boosts the look of luminosity. This original cleansing ritual was the inspiration for this wash, combining Okinawa red algae and hyaluronic acid with Japanese rice powder to replenish essential moisture for clean, hydrated skin.

Every Tatcha purchase supports equality in education through their Beautiful Faces, Beautiful Futures program.

Clinical Results: Based on an expert grader survey of 25 subjects over a 4-week period:
- +39% average boost in skin hydration was measured.

Based on a self-assessment of 25 subjects over a 4-week period:
- 92% felt skin was healthy-looking and felt softer
- 96% felt skin was balanced

Clean at Sephora
Clean at Sephora is a curation of brands committed to evolving the beauty industry. When you see our Clean seal, you can be sure this brand''s products are formulated without certain ingredients that are potentially harmful to human health and the environment and also address ingredients clients are concerned about, including phthalates, formaldehyde or formaldehyde releasers, oxybenzone and octinoxate, hydroquinone, triclosan, coal tar, methylisothiazolinone and methylchloroisothiazolinone, insoluble plastic microbeads, and more. For the full list, check out the Ingredients tab.', 1, 1006, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (6, N'Omega Water Cream Moisturizer', 9, 1, 0, N's2530756-main-zoom.jpg', N'p479354-av-7-zoom.jpg', N'p479354-av-8-zoom.jpg', 100, 0, N'
ONLY AT SEPHORA
What it is: A lightweight water-based gel moisturizer for all skin types that rapidly hydrates and supports a healthy skin barrier without causing oiliness.

Skin Type: Normal, Dry, Combination, and Oily

Skincare Concerns: Fine Lines and Wrinkles, Dryness, and Dullness

Formulation: Lightweight Gel

Highlighted Ingredients:
- Ceramosides™ 0.5%: Supports healthy-looking skin and optimizes long-lasting hydration.
- Betaine Complex 3%: Reduces moisture loss and rebalances skin hydration.
- Niacinamide 5%: Visibly reduces excess oil and evens skin tone.

Ingredient Callouts: This product is vegan, gluten-free, cruelty-free, and comes in recyclable packaging.

What Else You Need to Know: In this non-oily moisturizer, an omega fatty acid complex, glycerin, betaine, and niacinamide work together to optimize long-lasting hydration, visibly balance oil levels, and even out the look of skin tone.

Clean at Sephora
Clean at Sephora is a curation of brands committed to evolving the beauty industry. When you see our Clean seal, you can be sure this brand''s products are formulated without certain ingredients that are potentially harmful to human health and the environment and also address ingredients clients are concerned about, including phthalates, formaldehyde or formaldehyde releasers, oxybenzone and octinoxate, hydroquinone, triclosan, coal tar, methylisothiazolinone and methylchloroisothiazolinone, insoluble plastic microbeads, and more. For the full list, check out the Ingredients tab.', 1, 1006, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (7, N'Red Lacto Collagen Cleansing Oil 200ml', 16, 1, 0, N'thumb-66mU65SU7ZWE_405x405.jpg', N'thumb-7IOI7ZSE66Gc7KCd7Yq417_405x405.png', N'thumb-7IOI7ZSE66Gc7KCd7Yq418_405x405.png', 100, 0, N'Description
4 functional cleansing oils : deep cleansing, blackheads and sebum care, pore convergence, moisture care.
When natural oil meets water, it turns into a white cream, removing impurities and leaving only moisture on the skin.
Andilova seed oil helps moisturize the skin, and collagen enhances the effect.
French low-molecular collagen imparts firm power to the skin.
Free of preservatives, artificial colors, fragrances, and mineral oil.
6 kinds of amino acid ingredients make the skin vital.

Suggested Use
After pumping an appropriate amount and massaging it gently on your dry face, apply a little water to your hands and massage again for 30 seconds, then rinse thoroughly with lukewarm water.

Full Ingredients
Glycine Soja (Soybean) Oil(80%), Sorbeth-30 Tetraoleate, Caprylic/Capric Triglyceride, Simmondsia Chinensis (Jojoba) Seed Oil, Olea Europaea (Olive) Fruit Oil, Candida Bombicola/Glucose/Methyl Rapeseedate Ferment, Mentha Arvensis Leaf Oil, Prunus Armeniaca (Apricot) Kernel Oil, Tocopheryl Acetate, Oenothera Biennis (Evening Primrose) Oil, Barosma Betulina Leaf Extract, Oryza Sativa (Rice) Germ Oil, Rosa Damascena Flower Water, Vitis Vinifera (Grape) Seed Oil, Limnanthes Alba (Meadowfoam) Seed Oil, Argania Spinosa Kernel Oil, Centella Asiatica Leaf Extract, Camellia Sinensis Leaf Extract, Gardenia Jasminoides Fruit Extract, Schisandra Chinensis Fruit Extract, Curcuma Longa (Turmeric) Root Extract, Lithospermum Erythrorhizon Root Extract, Helianthus Annuus (Sunflower) Seed Oil , Carapa Guaianensis Seed Oil, Water, Lactobacillus Ferment(9.8 ppb), Butylene Glycol, Xylitylglucoside, Anhydroxylitol, Xylitol, Diospyros Kaki Leaf Extract, Vitis Vinifera (Grape) Fruit Extract , 1,2-Hexanediol, Coffea Arabica (Coffee) Seed Extract, Carthamus Tinctorius (Safflower) Flower Extract, Polygonum Cuspidatum Root Extract, Zanthoxylum Piperitum Fruit Extract, Castanea Crenata Shell Extract, Glucose, Glycine, Serine, Glutamic acid, Aspartic acid, Leucine, Alanine, Lysine, Arginine, Tyrosine, Phenylalanine, Proline, Valine, Threonine, Isoleucine, Pinus Palustris Leaf Extract, Ulmus Davidiana Root Extract, Pueraria Lobata Root Extract, Oenothera Biennis (Evening Primrose) Flower Extract, Histidine, Methionine, Cysteine, Ethylhexylglycerin, Hydrolyzed Collagen(0.01 ppb)', 1, 1006, N'Dry')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (8, N'Real Fresh Foam #Green Tea', 16, 1, 0, N'thumb-64Sk7Jik7KCg_405x405.jpg', N'71ZRmNVOJhL._SX522_.jpg', N'71eAOlyrAsL._SX522_.jpg', 100, 0, N'Description
Green Tea: This unique foam cleanser is a must try for oily, combination, or acne-prone skin. The start ingredient in this cleanser is fermented green tea extract, which brightens, calms, and hydrates skin.
The gentle foam effectively removes impurities such as sweat and dirt from the skin without stripping your skin''s natural oils.
Blueberry: This hydrating foam cleanser is packed with antioxidants and formulated with various botanical ingredients like blueberry water and moringa seed extract, as well as fermented ingredients, to fight off free radicals and help prevent premature aging.
Cereal: This unique foaming cleanser contains fermented rice seeds and oryza saliva (rice) seed extract to brighten and hydrate skin.
Cranberry: This unique foaming cleanser contains real fermented cranberries and cranberry fruit water, which contain powerful antioxidants to prevent signs of premature aging and won''t strip your skin of its natural oils.

Suggested Use
Use as the second step of your double cleansing, following an oil cleanser.
Pump one to two pumps and gently massage foam onto damp face.
Rinse off with lukewarm water.
Follow with the remaining steps of your skin care routine.', 1, 1006, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (9, N'Vanicream Daily Facial Moisturizer', 13, 1, 0, N'51VWboSvF6L._SX466_.jpg', N'61SIVj9-gUL._SX466_.jpg', N'71vm5tW6k2L._SX466_.jpg', 49, 3, N'Sensitive moisturizer: Vanicream fragrance-free daily face moisturizer is a lightweight, gluten-free moisturizer for sensitive skin
Mild formula: This unscented, hydrating moisturizer is formulated with 5 key ceramides, hyaluronic acid, squalane and glycerin; non-comedogenic won’t clog pores
No common chemical irritants: Our products are free of dyes, fragrance, masking fragrance, lanolin, parabens and formaldehyde releasers
Dermatologist tested: Dermatologists consider our ingredients to be desirable and not irritating or sensitizing to the skin
Directions: Apply as needed to face day or night; packaging may vary', 1, 1006, N'Sensitive')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (10, N'Cerave Hyaluronic Acid Serum for Face', 17, 1, 0, N'81pYR5vNvjL._SX466_.jpg', N'71CK-rlHW3L._SX466_.jpg', N'81oabRKXgwL._SX466_.jpg', 48, 2, N'About this item
[ HYALURONIC ACID SERUM ] CeraVe Hydrating Hyaluronic Acid Serum for Face is formulated with our highest concentration of hyaluronic acid, an ingredient that helps retain skin’s natural moisture. Helps skin appear more hydrated and smoother.
[ SMOOTH TEXTURE ] Lightweight, hydrating serum with a smooth, gel texture. If layering with an eye cream or facial moisturizer, apply HA Serum in a thin layer to slightly damp skin and allow to fully absorb into skin before applying additional products.
[ ALL DAY HYDRATION ] With Vitamin B5 to help soothe skin. Features CeraVe''s patented MVE ingredient-delivery technology to continually release moisturizing ingredients and provide 24-hour lasting hydration.
[ 3 ESSENTIAL CERAMIDES ] Ceramides are found naturally in the skin and make up 50% of the lipids in the skin barrier. All CeraVe products are formulated with three essential ceramides (1, 3, 6-II) to help restore and maintain the skin’s natural barrier
[ DERMATOLOGIST RECOMMENDED BRAND ] Noncomedogenic, paraben free, and fragrance free. CeraVe Skincare is developed with dermatologists and has products suitable for dry skin, sensitive skin, oily skin, acne-prone, and more', 1, 1006, N'Dry')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (11, N'Cica Care Balm 40ml', 22, 1, 0, N'thumb-RVTS01BMCica_500x500_405x405.jpg', N'thumb-RVTS01BMCica_500x500_405x405.jpg', N'thumb-RVTS01BMCica_500x500_405x405.jpg', 100, 0, N'Description
Pinkish Calamine soothes your troubles on your face and high enriched Madecassoside restores your sensitive skin to be healthy.

Suggested Use
Put appropriate amount of the product as your last step of skincare.', 1, 1006, N'Sensitive')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (12, N'Extra Moisture Trio', 82, 1, 0, N'thumb-HXS14Sext_405x405.jpg', N'thumb-HXS14Sext_405x405.jpg', N'thumb-HXS14Sext_405x405.jpg', 20, 0, N'Description
1. Toner; Extract It
A slightly acidic toner formulated with more than 90% naturally derived ingredients and cactus extract. It helps maintain the skin''s pH balance and leaves your skin clear and moisturized.

2. Oil; Light And More
A lightweight facial oil that contains prickly pear seed oil with outstanding moisturizing ability. It absorbs into the skin quickly, protects it from various stressors, and fortifies the skin.

3. Cream; More Than Moist
A deeply moisturizing cream that protects delicate and sensitive skin. It fortifies the skin''s natural barrier by forming a smooth moisture layer to make your skin healthy.
', 1, 1006, N'Sensitive')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (13, N'Cacao Moist And Mild Cream', 11, 1, 0, N'thumb-benton_405x405.jpg', N'thumb-benton_405x405.jpg', N'thumb-benton_405x405.jpg', 100, 7, N'Description
1. Benton''s Cacao Moist And Mild Cream is a light weight cream with a velvety smooth texture.
2. Contains Cacao extracts and Hyaluronic Acid to infuse a wealth of hydration to your skin.

3. Various botanical extracts further provide your skin with nutrients to leave it smooth and supple.

Recommended for the following:

- Those with dry and tight skin

- Those who want to balance their skin''s oil-moisture levels

- Those who want a non-aggravating means of supplying their skin with moisture

- Those whose skin has become sensitive to harmful external stimuli

- Those who want a light weight, non-sticky cream

Suggested Use
- Apply at the end of your skincare routine
TIP: Follow these massage tips to enhance the elasticity of your skin

a. Apply to the orbits of your eyes and gently massage from the tips to the end of your eyes

b. Use all ten of your fingers to press into your hair line and above your eyebrows, from the inside to the outside, to enhance blood circulation

c. Massage the hollow regions around your cheekbone and nose to volumize this area for a more youthful look

d. Close your mouth firmly, then use your index finger and thumb to to massage the tensed muscles. Use your thumb to relax the hollow area beneath your ears and lastly the region beneath your lips to the corners for a sharper jawline.

Active Ingredients
Theobroma Cacao (Cocoa) Extract, Theobroma Cacao (Cocoa) Seed Butter, Butylene Glycol, Glycerin, Water, Sorbitan Olivate, 1,2-Hexandiol, Pentylene Glycol, Theobroma Cacao (Cocoa) Seed Extract, Zanthoxylum Piperitum Fruit Extract, Pulsatilla Koreana Extract, Usnea Barbata (Lichen) Extract, Sodium Hyaluronate, Polyglutamic Acid, Madecassoside, Beta-Glucan, Carbomer, Arginine, Xanthan Gum
', 1, 1006, N'Sensitive')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (14, N'Low Ph Good Morning Gel Cleanser 150ml', 8, 1, 0, N'thumb-7YG066CM7KC4_405x405.jpg', N'thumb-7JWE66eI7KG0_405x405.jpg', N'thumb-7JWE66eI7KG0_405x405.jpg', 50, 0, N'Description
Sustain moisture every day and all day long!
For AM time & sensitive skin. Mildly acidic pH 5.0 ~ 6.0 similar to skin’s natural pH level.
Contain tea-tree oil : control oily skin, shrink pore size.
Contain natural BHA : refine skin texture.
WHY choose Good Morning Mildly Acidic Cleanser?
Low pH formula gel cleanser doesn’t strip your skin of its natural oils and contains purifying botanical ingredients and mild acids to gently cleanse your skin to its most supple and clear texture. It''s also formulated to remove makeup and other oil-based residue with a skin-happy pH of 5! Skin is mildly acidic !
Oily skin’s pH is lower dry, sensitive skin’s pH is higher.
Don’t get yourself fooled! Washing with water only in the morning is not acceptable even after the perfect wash day before at night! Skin produces dead skins and sebum while you sleep. Mildly acidic cleanser softly removes those wastes and leaves skin hydrated all day long.
Suggest Use
1. For AM time : Dispense the cleanser and massage onto a wet skin to dissolve and wash away sebum, dirt, dead skins, leaving skin extremely soft and comfortable.
2. For other time : Wash with your normal cleanser first, and do a second wash with Good Morning Mildly Acidic Cleanser onto your sensitive skin. Gently massage onto a skin and rinse thoroughly with a tepid water.', 1, 1006, N'Sensitive')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (15, N'Niacinamide Oil Control Serum', 8, 1, 0, N's2259992-main-zoom.jpg', N'p446942-av-9-zoom.jpg', N'p446942-av-10-zoom.jpg', 50, 0, N'
ONLY AT SEPHORA
What it is: A serum that''s perfect for oily skin to help control excess oil, while reducing blemishes, redness, and hyperpigmentation.

Skin Type: Oily

Skincare Concerns: Acne and Blemishes, Oiliness, and Pores

Formulation: Lightweight Serum

Highlighted Ingredients:
- Niacinamide 10% : Helps control excess oil and works to reduce blemishes and tackle redness.
- Multi Molecular Hyaluronic Acid 1%: Helps to hydrate and plump skin by acting as a moisture binding ingredient for maximum hydration.

Ingredient Callouts:This product is cruelty-free.

What Else You Need to Know: This lightweight, power-packed serum contains 10 percent niacinamide, a naturally occurring B3 vitamin that helps to control excess oil and fade the appearance of blemishes and redness. Additionally, this serum is formulated with one percent hyaluronic acid for added hydration and effective delivery.

Clean at Sephora
Clean at Sephora is formulated without a list of over 50 ingredients, including sulfates (SLS and SLES), parabens, phthalates, and more. For the full list, check out the Ingredients tab.', 1, 1006, N'Oily')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (16, N'Find Your Balance™ Oil Control Cleanser', 32, 1, 0, N's1910678-main-zoom.jpg', N'p416815-av-01-zoom.jpg', NULL, 50, 0, N'Which skin type is it good for?
✔ Oily
✔ Combination

What it is:
A pore-purifying cleanser with powerful AHAs to reduce excess oil and unclog pores, without stripping skin.

Solutions for:
- Oiliness
- Pores
- Acne and blemishes

If you want to know more…
Find Your Balance Oil Control Cleanser reduces excess oil and deeply cleanses pores. Formulated with Green Fusion Complex™ and neem seed oil, its deep cleansing action helps unclog and purify pores without stripping skin, while the invigorating eucalyptus scent awakens the senses. Powerful AHAs—glycolic and lactic acids—help loosen and lift dead skin cells that can cause pore-clogging build-up. Instantly, the complexion is refreshed and balanced with a healthy-looking glow.

What else you need to know:
During his own struggle with cystic acne, Ole had firsthand experience with harsh oil control cleansers that left skin feeling stripped. He wanted to create an alternative that is a joy to use. This cleanser features OleHenriksen’s Green Fusion Complex™, a proprietary blend of potent active botanicals—including green tea, eucalyptus, algae (kelp), and Irish moss extracts—with natural antiseptic properties to help absorb excess oil and refine pores.

This product is noncomedogenic.

Research results:
In an independent consumer study on 36 women after 1 week:
- 100% said it removes oil
- 100% said it refreshes skin
- 97% said it creates healthier-looking skin
- 97% said it improves skin quality
- 94% said it mattifies skin
- 94% said it controls excess oil
- 94% said it restores skin’s balance

Clean at Sephora
When you spot our Clean seal, you can be sure we’ve checked that this brand’s product is made without the ingredients you told us you’d most like to avoid.

Clean at Sephora™ is formulated without:
Sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, triclocarban. All skincare, hair, and makeup brands with the Clean Seal have less than one percent of synthetic fragrances.', 1, 1006, N'Oily')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (1, N'Admin', N'admin@gmail.com', N'1234567890  ', 1, N'123456', N'admin.jfif', N'Can Tho', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (2, N'Nguyễn Văn B', N'nvb@gmail.com', N'0907892198  ', 2, N'123456', N'user.jpg', N'Can Tho', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (3, N'Nguyen Van A', N'nva@gmail.com', N'1234567890  ', 2, N'123456', NULL, N'eeeeefdsf', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (4, N'Nguyen Nguyen', N'nguyen@gmail.com', N'1234567890  ', 2, N'123456', NULL, N'user.jpg', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (10, N'dsfsf', N'nlkhuong1800120@student.ctuet.edu.vn', N'123         ', 2, N'123', NULL, N'pr.jpg', 1, N'360551')
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (16, N'khuong nguyen', N'lapankhuongnguyen@gmail.com', N'123         ', 2, N'123', NULL, N'pr.jpg', 1, N'216047')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'Client')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/14/2023 8:36:34 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/14/2023 8:36:34 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/14/2023 8:36:34 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/14/2023 8:36:34 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/14/2023 8:36:34 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/14/2023 8:36:34 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__FromUse__36B12243] FOREIGN KEY([FromUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__FromUse__36B12243]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__ToUserI__37A5467C] FOREIGN KEY([ToUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__ToUserI__37A5467C]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__25869641] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Order__25869641]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__24927208] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Produ__24927208]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Catego__239E4DCF] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Catego__239E4DCF]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Create__276EDEB3] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Create__276EDEB3]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_QueueActivationSender]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Receiver') DROP SERVICE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender') DROP SERVICE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Receiver') DROP QUEUE [dbo].[dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender') DROP QUEUE [dbo].[dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06') DROP CONTRACT [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ID') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ID/old') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/FromUserID') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ToUserID') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Content') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Content/old') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/CreatedDate') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Send') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Send];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Send/old') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/Send/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/EndMessage') DROP MESSAGE TYPE [dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_5326eb3d-9107-4a58-8a2b-c8ae4722fe06_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_QueueActivationSender]    Script Date: 3/14/2023 8:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Receiver') DROP SERVICE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender') DROP SERVICE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Receiver') DROP QUEUE [dbo].[dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender') DROP QUEUE [dbo].[dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659') DROP CONTRACT [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ID') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ID/old') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/FromUserID') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ToUserID') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Content') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Content/old') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/CreatedDate') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Send') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Send];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Send/old') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/Send/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/EndMessage') DROP MESSAGE TYPE [dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_b1c178a1-8d64-4d26-859d-5a89c27a2659_QueueActivationSender];

        
    END
END
GO
USE [master]
GO
ALTER DATABASE [Shopping] SET  READ_WRITE 
GO
