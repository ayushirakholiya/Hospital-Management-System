USE [master]
GO
/****** Object:  Database [Advanced_Hospital]    Script Date: 2/23/2023 11:22:54 PM ******/
CREATE DATABASE [Advanced_Hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Advanced_Hospital', FILENAME = N'C:\Users\Raiyani\Advanced_Hospital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Advanced_Hospital_log', FILENAME = N'C:\Users\Raiyani\Advanced_Hospital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Advanced_Hospital] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Advanced_Hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Advanced_Hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Advanced_Hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Advanced_Hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Advanced_Hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Advanced_Hospital] SET  MULTI_USER 
GO
ALTER DATABASE [Advanced_Hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Advanced_Hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Advanced_Hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Advanced_Hospital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Advanced_Hospital] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Advanced_Hospital] SET QUERY_STORE = OFF
GO
USE [Advanced_Hospital]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Advanced_Hospital]
GO
/****** Object:  Table [dbo].[Add_InPatient]    Script Date: 2/23/2023 11:22:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Add_InPatient](
	[id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[dob] [varchar](50) NULL,
	[age] [varchar](10) NULL,
	[gender] [varchar](50) NULL,
	[mailid] [varchar](50) NULL,
	[mobileno] [varchar](12) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[natproblem] [varchar](50) NULL,
	[ad_date] [varchar](50) NULL,
	[RoomNo] [varchar](10) NULL,
	[Description] [varchar](max) NULL,
	[AdmitDate] [varchar](50) NULL,
	[MedicalAmount] [varchar](50) NULL,
	[RoomAmoiunt] [varchar](50) NULL,
	[Total] [bigint] NULL,
	[DischargeDate] [varchar](50) NULL,
 CONSTRAINT [PK_Add_InPatient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addadmin]    Script Date: 2/23/2023 11:22:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addadmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[docname] [varchar](50) NULL,
	[dob] [date] NULL,
	[mobileno] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[doj] [date] NULL,
	[qualification] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_Addadmin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adddoctor]    Script Date: 2/23/2023 11:22:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adddoctor](
	[Doc_ID] [int] NOT NULL,
	[UserName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[docname] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[mobileno] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[doj] [varchar](50) NULL,
	[qualification] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[specialization] [varchar](50) NULL,
	[PerDaysal] [bigint] NULL,
 CONSTRAINT [PK_Adddoctor] PRIMARY KEY CLUSTERED 
(
	[Doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddEmployee]    Script Date: 2/23/2023 11:22:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddEmployee](
	[Emp_Id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[mobileno] [varchar](50) NULL,
	[mailid] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[doj] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[PerDaysal] [bigint] NULL,
 CONSTRAINT [PK_AddEmployee] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddHospital]    Script Date: 2/23/2023 11:22:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddHospital](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Branchid] [int] NULL,
	[Address] [varchar](max) NULL,
	[Mailid] [varchar](50) NULL,
	[MobileNo] [varchar](10) NULL,
 CONSTRAINT [PK_AddHospital] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 2/23/2023 11:22:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[name] [varchar](50) NULL,
	[mobile] [varchar](12) NULL,
	[age] [varchar](50) NULL,
	[select_date] [varchar](50) NULL,
	[select_time] [varchar](50) NULL,
	[Docid] [varchar](50) NULL,
	[BookedBy] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 2/23/2023 11:22:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocAtt]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocAtt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Docid] [int] NULL,
	[Attdate] [int] NULL,
	[Attmonth] [varchar](50) NULL,
	[year] [varchar](50) NULL,
 CONSTRAINT [PK_DocAtt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docsalary]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docsalary](
	[sl_no] [int] NULL,
	[sal_id] [int] IDENTITY(1,1) NOT NULL,
	[Doc_id] [int] NULL,
	[month] [varchar](20) NULL,
	[year] [numeric](4, 0) NULL,
	[salary] [numeric](4, 0) NULL,
	[no_of_day] [int] NULL,
	[total] [numeric](10, 0) NULL,
 CONSTRAINT [PK_Salary_1] PRIMARY KEY CLUSTERED 
(
	[sal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpAtt]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpAtt](
	[Id] [int] NULL,
	[Empid] [int] NULL,
	[Attdate] [int] NULL,
	[Attmonth] [varchar](50) NULL,
	[year] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empsalary]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empsalary](
	[sl_no] [int] NULL,
	[sal_id] [int] IDENTITY(1,1) NOT NULL,
	[Emp_id] [int] NULL,
	[month] [varchar](20) NULL,
	[year] [numeric](4, 0) NULL,
	[salary] [numeric](4, 0) NULL,
	[no_of_day] [int] NULL,
	[total] [numeric](10, 0) NULL,
 CONSTRAINT [PK_Salary_2] PRIMARY KEY CLUSTERED 
(
	[sal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[FeedBack] [varchar](100) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LP_CITY_MASTER]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LP_CITY_MASTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[StateID] [int] NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LP_COUNTRY_MASTER]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LP_COUNTRY_MASTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CountryCode] [varchar](5) NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LP_STATE_MASTER]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LP_STATE_MASTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organ]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organ](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Patientid] [int] NULL,
	[Parts] [varchar](50) NULL,
	[BloodGroup] [varchar](50) NULL,
 CONSTRAINT [PK_Organ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Out_patient]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Out_patient](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[natprobelm] [varchar](50) NULL,
	[bloodtestno] [varchar](50) NULL,
	[xrayno] [varchar](50) NULL,
	[ctscan] [varchar](50) NULL,
	[prescription] [varchar](50) NULL,
	[Commends] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patmaintains]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patmaintains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[natureofproblem] [varchar](50) NULL,
	[bloodtestno] [varchar](50) NULL,
	[xrayno] [varchar](50) NULL,
	[ctscan] [varchar](50) NULL,
	[prescription] [varchar](max) NULL,
	[comments] [varchar](max) NULL,
	[date] [varchar](50) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Patmaintains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[ExpDate] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 2/23/2023 11:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[Productid] [int] NULL,
	[supId] [int] NULL,
	[Qty] [numeric](9, 0) NULL,
	[Price] [numeric](9, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomDetails]    Script Date: 2/23/2023 11:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [int] NULL,
	[RoomType] [varchar](4) NULL,
	[Status] [int] NULL,
	[RentAt] [date] NULL,
 CONSTRAINT [PK_RoomDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2/23/2023 11:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 2/23/2023 11:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treatment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[Disease] [varchar](50) NULL,
	[Treatement] [varchar](50) NULL,
	[DoctorNote] [varchar](50) NULL,
	[DateOfVisit] [varchar](50) NULL,
 CONSTRAINT [PK_Treatment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 2/23/2023 11:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReg](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[natproblem] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[mailid] [varchar](50) NULL,
	[mobileno] [varchar](50) NULL,
	[age] [varchar](50) NULL,
 CONSTRAINT [PK_UserReg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Add_InPatient] ([id], [name], [dob], [age], [gender], [mailid], [mobileno], [address], [city], [state], [natproblem], [ad_date], [RoomNo], [Description], [AdmitDate], [MedicalAmount], [RoomAmoiunt], [Total], [DischargeDate]) VALUES (274, N'vani      ', N'19/04/1990', N'28', N'Female', N'vani@gmail.com', N'9894694339', N'Gandhipuram', N'Tamil Nadu', N'Tamil Nadu', N'Feaver', N'29/03/2019', N'2', N'Feaver Patient', N'03-29-2019', N'5000', N'15000', 20000, N'03-29-2019')
GO
INSERT [dbo].[Add_InPatient] ([id], [name], [dob], [age], [gender], [mailid], [mobileno], [address], [city], [state], [natproblem], [ad_date], [RoomNo], [Description], [AdmitDate], [MedicalAmount], [RoomAmoiunt], [Total], [DischargeDate]) VALUES (469, N'mala      ', N'16/06/2009', N'9', N'Female', N'mala76@gmail.com', N'9894694339', N'Gandhipuram', N'Tamil Nadu', N'Tamil Nadu', N'Feaver', N'28/03/2019', N'3', N'Nil', N'03-29-2019', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Addadmin] ON 
GO
INSERT [dbo].[Addadmin] ([ID], [UserName], [password], [docname], [dob], [mobileno], [email], [Address], [city], [state], [doj], [qualification], [designation], [createDate]) VALUES (1, N'keerthi', N'123456789', N'KEERTHIVASAN', CAST(N'2019-02-07' AS Date), N'9894694339', N'nxtlogic@gmail.com', N'Gandhipuram', N'Coimbatore', N'Tamil Nadu', CAST(N'2019-02-07' AS Date), N'Nil', N'Admin', CAST(N'2019-02-07T13:46:58.100' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Addadmin] OFF
GO
INSERT [dbo].[Adddoctor] ([Doc_ID], [UserName], [password], [docname], [dob], [mobileno], [email], [Address], [city], [state], [doj], [qualification], [designation], [specialization], [PerDaysal]) VALUES (842, N'ravi', N'12345678', N'RAVI', N'3/18/2019', N'9894694339', N'nxtlogic@gmail.com', N'Gandhipuram', N'Chembarambakkam', N'Tamil Nadu', N'3/18/2019', N'Nil', N'Admin', N'Eye', 2500)
GO
INSERT [dbo].[AddEmployee] ([Emp_Id], [name], [password], [dob], [mobileno], [mailid], [address], [city], [state], [doj], [Designation], [PerDaysal]) VALUES (559, N'RAM', N'12345678', N'3/19/2019', N'9894694339', N'nxtlogic@gmail.com', N'Gandhipuram', N'Tamil Nadu', N'Coimbatore', N'3/19/2019', N'Security', 500)
GO
INSERT [dbo].[AddHospital] ([id], [Name], [Branchid], [Address], [Mailid], [MobileNo]) VALUES (1, N'VASAN', 1, N'CBe', N'vasan@gmail.com', N'6565465465')
GO
INSERT [dbo].[AddHospital] ([id], [Name], [Branchid], [Address], [Mailid], [MobileNo]) VALUES (2, N'ASD', 5, N'Erode', N'Keerthi@gmail.com', N'9955441155')
GO
INSERT [dbo].[AddHospital] ([id], [Name], [Branchid], [Address], [Mailid], [MobileNo]) VALUES (3, N'1AWS', 1, N'', N'', N'9999999999')
GO
INSERT [dbo].[Appointment] ([name], [mobile], [age], [select_date], [select_time], [Docid], [BookedBy]) VALUES (N'230', N'9988774455', N'27', N'29/03/2019', N'10:30 PM', N'842', N'vino')
GO
SET IDENTITY_INSERT [dbo].[Branch] ON 
GO
INSERT [dbo].[Branch] ([id], [name]) VALUES (1, N'Coimbatore')
GO
INSERT [dbo].[Branch] ([id], [name]) VALUES (2, N'Mettupalayam')
GO
INSERT [dbo].[Branch] ([id], [name]) VALUES (3, N'RS Puram')
GO
INSERT [dbo].[Branch] ([id], [name]) VALUES (4, N'Tiruppur')
GO
INSERT [dbo].[Branch] ([id], [name]) VALUES (5, N'Erode')
GO
SET IDENTITY_INSERT [dbo].[Branch] OFF
GO
SET IDENTITY_INSERT [dbo].[DocAtt] ON 
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (1, 1, 1, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (2, 1, 2, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (3, 1, 3, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (4, 1, 4, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (5, 1, 5, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (6, 1, 6, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (7, 1, 7, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (8, 1, 8, N'February', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (9, 1, 18, N'March', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (10, 1, 17, N'March', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (11, 1, 16, N'March', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (12, 842, 15, N'March', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (13, 842, 16, N'March', N'2019')
GO
INSERT [dbo].[DocAtt] ([Id], [Docid], [Attdate], [Attmonth], [year]) VALUES (14, 842, 17, N'March', N'2019')
GO
SET IDENTITY_INSERT [dbo].[DocAtt] OFF
GO
SET IDENTITY_INSERT [dbo].[Docsalary] ON 
GO
INSERT [dbo].[Docsalary] ([sl_no], [sal_id], [Doc_id], [month], [year], [salary], [no_of_day], [total]) VALUES (NULL, 4, 842, N'March', CAST(2019 AS Numeric(4, 0)), CAST(2500 AS Numeric(4, 0)), 3, CAST(7500 AS Numeric(10, 0)))
GO
SET IDENTITY_INSERT [dbo].[Docsalary] OFF
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 10, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 11, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 12, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 13, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 14, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 15, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 20, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 21, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 559, 22, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 1, 1, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 1, 2, N'March', N'2019')
GO
INSERT [dbo].[EmpAtt] ([Id], [Empid], [Attdate], [Attmonth], [year]) VALUES (NULL, 1, 3, N'March', N'2019')
GO
SET IDENTITY_INSERT [dbo].[Empsalary] ON 
GO
INSERT [dbo].[Empsalary] ([sl_no], [sal_id], [Emp_id], [month], [year], [salary], [no_of_day], [total]) VALUES (NULL, 3, 559, N'March', CAST(2019 AS Numeric(4, 0)), CAST(500 AS Numeric(4, 0)), 9, CAST(4500 AS Numeric(10, 0)))
GO
SET IDENTITY_INSERT [dbo].[Empsalary] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 
GO
INSERT [dbo].[FeedBack] ([id], [UserName], [FeedBack]) VALUES (1, N'Keerthi', N'Nil')
GO
INSERT [dbo].[FeedBack] ([id], [UserName], [FeedBack]) VALUES (2, N'1', N'asfas')
GO
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[LP_CITY_MASTER] ON 
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19102, N'Abiramam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19103, N'Achampudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19104, N'Acharapakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19105, N'Acharipallam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19106, N'Achipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19107, N'Adikaratti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19108, N'Adiramapattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19109, N'Aduturai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19110, N'Adyar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19111, N'Agaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19112, N'Agasthiswaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19113, N'Akkaraipettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19114, N'Alagappapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19115, N'Alagapuri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19116, N'Alampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19117, N'Alandur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19118, N'Alanganallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19119, N'Alangayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19120, N'Alangudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19121, N'Alangulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19122, N'Alanthurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19123, N'Alapakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19124, N'Allapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19125, N'Alur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19126, N'Alwar Tirunagari', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19127, N'Alwarkurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19128, N'Ambasamudram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19129, N'Ambur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19130, N'Ammainaickanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19131, N'Ammaparikuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19132, N'Ammapettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19133, N'Ammavarikuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19134, N'Ammur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19135, N'Anaimalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19136, N'Anaiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19137, N'Anakaputhur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19138, N'Ananthapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19139, N'Andanappettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19140, N'Andipalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19141, N'Andippatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19142, N'Anjugramam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19143, N'Annamalainagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19144, N'Annavasal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19145, N'Annur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19146, N'Anthiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19147, N'Appakudal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19148, N'Arachalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19149, N'Arakandanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19150, N'Arakonam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19151, N'Aralvaimozhi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19152, N'Arani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19153, N'Arani Road', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19154, N'Arantangi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19155, N'Arasiramani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19156, N'Aravakurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19157, N'Aravankadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19158, N'Arcot', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19159, N'Arimalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19160, N'Ariyalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19161, N'Ariyappampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19162, N'Ariyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19163, N'Arni', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19164, N'Arulmigu Thirumuruganpundi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19165, N'Arumanai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19166, N'Arumbavur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19167, N'Arumuganeri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19168, N'Aruppukkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19169, N'Ashokapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19170, N'Athani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19171, N'Athanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19172, N'Athimarapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19173, N'Athipattu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19174, N'Athur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19175, N'Attayyampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19176, N'Attur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19177, N'Auroville', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19178, N'Avadattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19179, N'Avadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19180, N'Avalpundurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19181, N'Avaniapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19182, N'Avinashi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19183, N'Ayakudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19184, N'Ayanadaippu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19185, N'Aygudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19186, N'Ayothiapattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19187, N'Ayyalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19188, N'Ayyampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19189, N'Ayyampettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19190, N'Azhagiapandiapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19191, N'Balakrishnampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19192, N'Balakrishnapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19193, N'Balapallam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19194, N'Balasamudram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19195, N'Bargur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19196, N'Belur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19197, N'Berhatty', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19198, N'Bhavani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19199, N'Bhawanisagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19200, N'Bhuvanagiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19201, N'Bikketti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19202, N'Bodinayakkanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19203, N'Brahmana Periya Agraharam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19204, N'Buthapandi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19205, N'Buthipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19206, N'Chatrapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19207, N'Chembarambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19208, N'Chengalpattu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19209, N'Chengam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19210, N'Chennai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19211, N'Chennasamudram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19212, N'Chennimalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19213, N'Cheranmadevi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19214, N'Cheruvanki', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19215, N'Chetpet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19216, N'Chettiarpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19217, N'Chettipalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19218, N'Chettipalayam Cantonment', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19219, N'Chettithangal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19220, N'Cheyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19221, N'Cheyyar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19222, N'Chidambaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19223, N'Chinalapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19224, N'Chinna Anuppanadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19225, N'Chinna Salem', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19226, N'Chinnakkampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19227, N'Chinnammanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19228, N'Chinnampalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19229, N'Chinnasekkadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19230, N'Chinnavedampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19231, N'Chitlapakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19232, N'Chittodu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19233, N'Cholapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19234, N'Coimbatore', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19235, N'Coonoor', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19236, N'Courtalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19237, N'Cuddalore', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19238, N'Dalavaipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19239, N'Darasuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19240, N'Denkanikottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19241, N'Desur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19242, N'Devadanapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19243, N'Devakkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19244, N'Devakottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19245, N'Devanangurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19246, N'Devarshola', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19247, N'Devasthanam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19248, N'Dhalavoipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19249, N'Dhali', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19250, N'Dhaliyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19251, N'Dharapadavedu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19252, N'Dharapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19253, N'Dharmapuri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19254, N'Dindigul', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19255, N'Dusi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19256, N'Edaganasalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19257, N'Edaikodu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19258, N'Edakalinadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19259, N'Elathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19260, N'Elayirampannai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19261, N'Elumalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19262, N'Eral', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19263, N'Eraniel', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19264, N'Eriodu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19265, N'Erode', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19266, N'Erumaipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19267, N'Eruvadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19268, N'Ethapur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19269, N'Ettaiyapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19270, N'Ettimadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19271, N'Ezhudesam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19272, N'Ganapathipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19273, N'Gandhi Nagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19274, N'Gangaikondan', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19275, N'Gangavalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19276, N'Ganguvarpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19277, N'Gingi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19278, N'Gopalasamudram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19279, N'Gopichettipalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19280, N'Gudalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19281, N'Gudiyattam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19282, N'Guduvanchery', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19283, N'Gummidipoondi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19284, N'Hanumanthampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19285, N'Harur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19286, N'Harveypatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19287, N'Highways', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19288, N'Hosur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19289, N'Hubbathala', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19290, N'Huligal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19291, N'Idappadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19292, N'Idikarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19293, N'Ilampillai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19294, N'Ilanji', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19295, N'Iluppaiyurani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19296, N'Iluppur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19297, N'Inam Karur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19298, N'Injambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19299, N'Irugur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19300, N'Jaffrabad', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19301, N'Jagathala', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19302, N'Jalakandapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19303, N'Jalladiampet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19304, N'Jambai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19305, N'Jayankondam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19306, N'Jolarpet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19307, N'Kadambur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19308, N'Kadathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19309, N'Kadayal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19310, N'Kadayampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19311, N'Kadayanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19312, N'Kadiapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19313, N'Kalakkad', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19314, N'Kalambur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19315, N'Kalapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19316, N'Kalappanaickenpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19317, N'Kalavai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19318, N'Kalinjur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19319, N'Kaliyakkavilai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19320, N'Kallakkurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19321, N'Kallakudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19322, N'Kallidaikurichchi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19323, N'Kallukuttam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19324, N'Kallupatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19325, N'Kalpakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19326, N'Kalugumalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19327, N'Kamayagoundanpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19328, N'Kambainallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19329, N'Kambam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19330, N'Kamuthi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19331, N'Kanadukathan', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19332, N'Kanakkampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19333, N'Kanam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19334, N'Kanchipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19335, N'Kandanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19336, N'Kangayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19337, N'Kangayampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19338, N'Kangeyanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19339, N'Kaniyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19340, N'Kanjikoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19341, N'Kannadendal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19342, N'Kannamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19343, N'Kannampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19344, N'Kannankurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19345, N'Kannapalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19346, N'Kannivadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19347, N'Kanyakumari', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19348, N'Kappiyarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19349, N'Karaikkudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19350, N'Karamadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19351, N'Karambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19352, N'Karambakkudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19353, N'Kariamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19354, N'Kariapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19355, N'Karugampattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19356, N'Karumandi Chellipalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19357, N'Karumathampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19358, N'Karumbakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19359, N'Karungal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19360, N'Karunguzhi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19361, N'Karuppur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19362, N'Karur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19363, N'Kasipalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19364, N'Kasipalayam G', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19365, N'Kathirvedu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19366, N'Kathujuganapalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19367, N'Katpadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19368, N'Kattivakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19369, N'Kattumannarkoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19370, N'Kattupakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19371, N'Kattuputhur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19372, N'Kaveripakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19373, N'Kaveripattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19374, N'Kavundampalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19375, N'Kavundampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19376, N'Kayalpattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19377, N'Kayattar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19378, N'Kelamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19379, N'Kelambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19380, N'Kembainaickenpalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19381, N'Kethi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19382, N'Kilakarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19383, N'Kilampadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19384, N'Kilkulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19385, N'Kilkunda', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19386, N'Killiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19387, N'Killlai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19388, N'Kilpennathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19389, N'Kilvelur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19390, N'Kinathukadavu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19391, N'Kiramangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19392, N'Kiranur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19393, N'Kiripatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19394, N'Kizhapavur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19395, N'Kmarasamipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19396, N'Kochadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19397, N'Kodaikanal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19398, N'Kodambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19399, N'Kodavasal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19400, N'Kodumudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19401, N'Kolachal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19402, N'Kolappalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19403, N'Kolathupalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19404, N'Kolathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19405, N'Kollankodu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19406, N'Kollankoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19407, N'Komaralingam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19408, N'Komarapalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19409, N'Kombai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19410, N'Konakkarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19411, N'Konavattam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19412, N'Kondalampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19413, N'Konganapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19414, N'Koradacheri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19415, N'Korampallam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19416, N'Kotagiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19417, N'Kothinallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19418, N'Kottaiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19419, N'Kottakuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19420, N'Kottaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19421, N'Kottivakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19422, N'Kottur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19423, N'Kovilpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19424, N'Koyampattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19425, N'Krishnagiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19426, N'Krishnarayapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19427, N'Krishnasamudram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19428, N'Kuchanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19429, N'Kuhalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19430, N'Kulasekarappattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19431, N'Kulasekarapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19432, N'Kulithalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19433, N'Kumarapalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19434, N'Kumarapalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19435, N'Kumarapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19436, N'Kumbakonam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19437, N'Kundrathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19438, N'Kuniyamuthur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19439, N'Kunnathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19440, N'Kunur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19441, N'Kuraikundu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19442, N'Kurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19443, N'Kurinjippadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19444, N'Kurudampalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19445, N'Kurumbalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19446, N'Kuthalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19447, N'Kuthappar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19448, N'Kuttalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19449, N'Kuttanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19450, N'Kuzhithurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19451, N'Labbaikudikadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19452, N'Lakkampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19453, N'Lalgudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19454, N'Lalpet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19455, N'Llayangudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19456, N'Madambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19457, N'Madanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19458, N'Madathukulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19459, N'Madhavaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19460, N'Madippakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19461, N'Madukkarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19462, N'Madukkur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19463, N'Madurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19464, N'Maduranthakam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19465, N'Maduravoyal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19466, N'Mahabalipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19467, N'Makkinanpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19468, N'Mallamuppampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19469, N'Mallankinaru', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19470, N'Mallapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19471, N'Mallasamudram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19472, N'Mallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19473, N'Mamallapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19474, N'Mamsapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19475, N'Manachanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19476, N'Manali', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19477, N'Manalmedu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19478, N'Manalurpet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19479, N'Manamadurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19480, N'Manapakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19481, N'Manapparai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19482, N'Manavalakurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19483, N'Mandaikadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19484, N'Mandapam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19485, N'Mangadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19486, N'Mangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19487, N'Mangalampet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19488, N'Manimutharu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19489, N'Mannargudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19490, N'Mappilaiurani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19491, N'Maraimalai Nagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19492, N'Marakkanam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19493, N'Maramangalathupatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19494, N'Marandahalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19495, N'Markayankottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19496, N'Marudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19497, N'Marungur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19498, N'Masinigudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19499, N'Mathigiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19500, N'Mattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19501, N'Mayiladuthurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19502, N'Mecheri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19503, N'Melacheval', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19504, N'Melachokkanathapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19505, N'Melagaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19506, N'Melamadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19507, N'Melamaiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19508, N'Melanattam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19509, N'Melathiruppanthuruthi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19510, N'Melattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19511, N'Melmananbedu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19512, N'Melpattampakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19513, N'Melur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19514, N'Melvisharam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19515, N'Mettupalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19516, N'Mettur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19517, N'Meyyanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19518, N'Milavittan', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19519, N'Minakshipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19520, N'Minambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19521, N'Minjur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19522, N'Modakurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19523, N'Mohanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19524, N'Mopperipalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19525, N'Mudalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19526, N'Mudichur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19527, N'Mudukulathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19528, N'Mukasipidariyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19529, N'Mukkudal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19530, N'Mulagumudu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19531, N'Mulakaraipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19532, N'Mulanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19533, N'Mullakkadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19534, N'Muruganpalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19535, N'Musiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19536, N'Muthupet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19537, N'Muthur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19538, N'Muttayyapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19539, N'Muttupet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19540, N'Muvarasampettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19541, N'Myladi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19542, N'Mylapore', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19543, N'Nadukkuthagai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19544, N'Naduvattam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19545, N'Nagapattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19546, N'Nagavakulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19547, N'Nagercoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19548, N'Nagojanahalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19549, N'Nallampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19550, N'Nallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19551, N'Namagiripettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19552, N'Namakkal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19553, N'Nambiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19554, N'Nambutalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19555, N'Nandambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19556, N'Nandivaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19557, N'Nangavalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19558, N'Nangavaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19559, N'Nanguneri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19560, N'Nanjikottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19561, N'Nannilam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19562, N'Naranammalpuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19563, N'Naranapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19564, N'Narasimhanaickenpalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19565, N'Narasingapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19566, N'Narasojipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19567, N'Naravarikuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19568, N'Nasiyanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19569, N'Natham', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19570, N'Nathampannai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19571, N'Natrampalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19572, N'Nattam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19573, N'Nattapettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19574, N'Nattarasankottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19575, N'Navalpattu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19576, N'Nazarethpettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19577, N'Nazerath', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19578, N'Neikkarapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19579, N'Neiyyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19580, N'Nellikkuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19581, N'Nelliyalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19582, N'Nemili', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19583, N'Nemilicheri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19584, N'Neripperichal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19585, N'Nerkunram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19586, N'Nerkuppai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19587, N'Nerunjipettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19588, N'Neykkarappatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19589, N'Neyveli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19590, N'Nidamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19591, N'Nilagiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19592, N'Nilakkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19593, N'Nilankarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19594, N'Odaipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19595, N'Odaiyakulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19596, N'Oddanchatram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19597, N'Odugathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19598, N'Oggiyamduraipakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19599, N'Olagadam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19600, N'Omalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19601, N'Ooty', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19602, N'Orathanadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19603, N'Othakadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19604, N'Othakalmandapam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19605, N'Ottapparai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19606, N'Pacode', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19607, N'Padaividu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19608, N'Padianallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19609, N'Padirikuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19610, N'Padmanabhapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19611, N'Padririvedu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19612, N'Palaganangudy', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19613, N'Palaimpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19614, N'Palakkodu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19615, N'Palamedu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19616, N'Palani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19617, N'Palani Chettipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19618, N'Palavakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19619, N'Palavansathu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19620, N'Palayakayal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19621, N'Palayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19622, N'Palayamkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19623, N'Palladam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19624, N'Pallapalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19625, N'Pallapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19626, N'Pallattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19627, N'Pallavaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19628, N'Pallikaranai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19629, N'Pallikonda', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19630, N'Pallipalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19631, N'Pallipalaiyam Agraharam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19632, N'Pallipattu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19633, N'Pammal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19634, N'Panagudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19635, N'Panaimarathupatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19636, N'Panapakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19637, N'Panboli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19638, N'Pandamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19639, N'Pannaikadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19640, N'Pannaipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19641, N'Pannuratti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19642, N'Panruti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19643, N'Papanasam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19644, N'Pappankurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19645, N'Papparapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19646, N'Pappireddipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19647, N'Paramakkudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19648, N'Paramankurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19649, N'Paramathi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19650, N'Parangippettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19651, N'Paravai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19652, N'Pasur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19653, N'Pathamadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19654, N'Pattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19655, N'Pattiviranpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19656, N'Pattukkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19657, N'Pazhugal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19658, N'Pennadam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19659, N'Pennagaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19660, N'Pennathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19661, N'Peraiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19662, N'Peralam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19663, N'Perambalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19664, N'Peranamallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19665, N'Peravurani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19666, N'Periyakodiveri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19667, N'Periyakulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19668, N'Periyanayakkanpalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19669, N'Periyanegamam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19670, N'Periyapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19671, N'Periyasemur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19672, N'Pernambut', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19673, N'Perumagalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19674, N'Perumandi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19675, N'Perumuchi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19676, N'Perundurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19677, N'Perungalathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19678, N'Perungudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19679, N'Perungulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19680, N'Perur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19681, N'Perur Chettipalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19682, N'Pethampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19683, N'Pethanaickenpalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19684, N'Pillanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19685, N'Pirkankaranai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19686, N'Polichalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19687, N'Pollachi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19688, N'Polur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19689, N'Ponmani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19690, N'Ponnamaravathi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19691, N'Ponnampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19692, N'Ponneri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19693, N'Porur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19694, N'Pothanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19695, N'Pothatturpettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19696, N'Pudukadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19697, N'Pudukkottai Cantonment', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19698, N'Pudukottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19699, N'Pudupalaiyam Aghraharam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19700, N'Pudupalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19701, N'Pudupatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19702, N'Pudupattinam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19703, N'Pudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19704, N'Puduvayal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19705, N'Pulambadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19706, N'Pulampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19707, N'Puliyampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19708, N'Puliyankudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19709, N'Puliyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19710, N'Pullampadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19711, N'Puluvapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19712, N'Punamalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19713, N'Punjai Puliyampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19714, N'Punjai Thottakurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19715, N'Punjaipugalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19716, N'Puthalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19717, N'Putteri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19718, N'Puvalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19719, N'Puzhal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19720, N'Puzhithivakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19721, N'Rajapalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19722, N'Ramanathapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19723, N'Ramapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19724, N'Rameswaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19725, N'Ranipet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19726, N'Rasipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19727, N'Rayagiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19728, N'Rithapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19729, N'Rosalpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19730, N'Rudravathi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19731, N'Sadayankuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19732, N'Saint Thomas Mount', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19733, N'Salangapalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19734, N'Salem', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19735, N'Samalapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19736, N'Samathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19737, N'Sambavar Vadagarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19738, N'Sankaramanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19739, N'Sankarankoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19740, N'Sankarapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19741, N'Sankari', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19742, N'Sankarnagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19743, N'Saravanampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19744, N'Sarcarsamakulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19745, N'Sathiyavijayanagaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19746, N'Sathuvachari', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19747, N'Sathyamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19748, N'Sattankulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19749, N'Sattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19750, N'Sayalgudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19751, N'Sayapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19752, N'Seithur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19753, N'Sembakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19754, N'Semmipalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19755, N'Sennirkuppam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19756, N'Senthamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19757, N'Sentharapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19758, N'Senur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19759, N'Sethiathoppu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19760, N'Sevilimedu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19761, N'Sevugampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19762, N'Shenbakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19763, N'Shencottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19764, N'Shenkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19765, N'Sholavandan', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19766, N'Sholinganallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19767, N'Sholingur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19768, N'Sholur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19769, N'Sikkarayapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19770, N'Singampuneri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19771, N'Singanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19772, N'Singaperumalkoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19773, N'Sirapalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19774, N'Sirkali', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19775, N'Sirugamani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19776, N'Sirumugai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19777, N'Sithayankottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19778, N'Sithurajapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19779, N'Sivaganga', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19780, N'Sivagiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19781, N'Sivakasi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19782, N'Sivanthipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19783, N'Sivur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19784, N'Soranjeri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19785, N'South Kannanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19786, N'South Kodikulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19787, N'Srimushnam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19788, N'Sriperumpudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19789, N'Sriramapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19790, N'Srirangam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19791, N'Srivaikuntam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19792, N'Srivilliputtur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19793, N'Suchindram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19794, N'Suliswaranpatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19795, N'Sulur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19796, N'Sundarapandiam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19797, N'Sundarapandiapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19798, N'Surampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19799, N'Surandai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19800, N'Suriyampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19801, N'Swamimalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19802, N'TNPL Pugalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19803, N'Tambaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19804, N'Taramangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19805, N'Tattayyangarpettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19806, N'Tayilupatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19807, N'Tenkasi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19808, N'Thadikombu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19809, N'Thakkolam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19810, N'Thalainayar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19811, N'Thalakudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19812, N'Thamaraikulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19813, N'Thammampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19814, N'Thanjavur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19815, N'Thanthoni', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19816, N'Tharangambadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19817, N'Thedavur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19818, N'Thenambakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19819, N'Thengampudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19820, N'Theni', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19821, N'Theni Allinagaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19822, N'Thenkarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19823, N'Thenthamaraikulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19824, N'Thenthiruperai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19825, N'Thesur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19826, N'Thevaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19827, N'Thevur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19828, N'Thiagadurgam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19829, N'Thiagarajar Colony', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19830, N'Thingalnagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19831, N'Thiruchirapalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19832, N'Thirukarungudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19833, N'Thirukazhukundram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19834, N'Thirumalayampalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19835, N'Thirumazhisai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19836, N'Thirunagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19837, N'Thirunageswaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19838, N'Thirunindravur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19839, N'Thirunirmalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19840, N'Thiruparankundram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19841, N'Thiruparappu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19842, N'Thiruporur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19843, N'Thiruppanandal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19844, N'Thirupuvanam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19845, N'Thiruthangal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19846, N'Thiruthuraipundi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19847, N'Thiruvaivaru', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19848, N'Thiruvalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19849, N'Thiruvarur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19850, N'Thiruvattaru', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19851, N'Thiruvenkatam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19852, N'Thiruvennainallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19853, N'Thiruvithankodu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19854, N'Thisayanvilai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19855, N'Thittacheri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19856, N'Thondamuthur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19857, N'Thorapadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19858, N'Thottipalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19859, N'Thottiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19860, N'Thudiyalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19861, N'Thuthipattu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19862, N'Thuvakudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19863, N'Timiri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19864, N'Tindivanam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19865, N'Tinnanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19866, N'Tiruchchendur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19867, N'Tiruchengode', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19868, N'Tirukkalukkundram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19869, N'Tirukkattuppalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19870, N'Tirukkoyilur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19871, N'Tirumangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19872, N'Tirumullaivasal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19873, N'Tirumuruganpundi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19874, N'Tirunageswaram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19875, N'Tirunelveli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19876, N'Tirupathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19877, N'Tirupattur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19878, N'Tiruppuvanam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19879, N'Tirupur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19880, N'Tirusulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19881, N'Tiruttani', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19882, N'Tiruvallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19883, N'Tiruvannamalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19884, N'Tiruverambur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19885, N'Tiruverkadu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19886, N'Tiruvethipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19887, N'Tiruvidaimarudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19888, N'Tiruvottiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19889, N'Tittakudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19890, N'Tondi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19891, N'Turaiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19892, N'Tuticorin', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19893, N'Udagamandalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19894, N'Udagamandalam Valley', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19895, N'Udankudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19896, N'Udayarpalayam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19897, N'Udumalaipettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19898, N'Udumalpet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19899, N'Ullur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19900, N'Ulundurpettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19901, N'Unjalaur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19902, N'Unnamalaikadai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19903, N'Uppidamangalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19904, N'Uppiliapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19905, N'Urachikkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19906, N'Urapakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19907, N'Usilampatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19908, N'Uthangarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19909, N'Uthayendram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19910, N'Uthiramerur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19911, N'Uthukkottai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19912, N'Uttamapalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19913, N'Uttukkuli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19914, N'Vadakarai Kizhpadugai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19915, N'Vadakkanandal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19916, N'Vadakku Valliyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19917, N'Vadalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19918, N'Vadamadurai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19919, N'Vadavalli', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19920, N'Vadipatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19921, N'Vadugapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19922, N'Vaithiswarankoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19923, N'Valangaiman', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19924, N'Valasaravakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19925, N'Valavanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19926, N'Vallam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19927, N'Valparai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19928, N'Valvaithankoshtam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19929, N'Vanavasi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19930, N'Vandalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19931, N'Vandavasi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19932, N'Vandiyur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19933, N'Vaniputhur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19934, N'Vaniyambadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19935, N'Varadarajanpettai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19936, N'Varadharajapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19937, N'Vasudevanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19938, N'Vathirairuppu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19939, N'Vattalkundu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19940, N'Vazhapadi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19941, N'Vedapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19942, N'Vedaranniyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19943, N'Vedasandur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19944, N'Velampalaiyam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19945, N'Velankanni', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19946, N'Vellakinar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19947, N'Vellakoil', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19948, N'Vellalapatti', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19949, N'Vellalur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19950, N'Vellanur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19951, N'Vellimalai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19952, N'Vellore', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19953, N'Vellottamparappu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19954, N'Velluru', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19955, N'Vengampudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19956, N'Vengathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19957, N'Vengavasal', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19958, N'Venghatur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19959, N'Venkarai', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19960, N'Vennanthur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19961, N'Veppathur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19962, N'Verkilambi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19963, N'Vettaikaranpudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19964, N'Vettavalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19965, N'Vijayapuri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19966, N'Vikramasingapuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19967, N'Vikravandi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19968, N'Vilangudi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19969, N'Vilankurichi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19970, N'Vilapakkam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19971, N'Vilathikulam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19972, N'Vilavur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19973, N'Villukuri', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19974, N'Villupuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19975, N'Viraganur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19976, N'Virakeralam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19977, N'Virakkalpudur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19978, N'Virapandi', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19979, N'Virapandi Cantonment', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19980, N'Virappanchatram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19981, N'Viravanallur', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19982, N'Virudambattu', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19983, N'Virudhachalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19984, N'Virudhunagar', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19985, N'Virupakshipuram', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19986, N'Viswanatham', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19987, N'Vriddhachalam', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19988, N'Walajabad', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19989, N'Walajapet', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19990, N'Wellington', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19991, N'Yercaud', 1659)
GO
INSERT [dbo].[LP_CITY_MASTER] ([ID], [Name], [StateID]) VALUES (19992, N'Zamin Uthukuli', 1659)
GO
SET IDENTITY_INSERT [dbo].[LP_CITY_MASTER] OFF
GO
SET IDENTITY_INSERT [dbo].[LP_COUNTRY_MASTER] ON 
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (1, N'Afghanistan', N'AF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (2, N'Albania', N'AL')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (3, N'Algeria', N'DZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (4, N'American Samoa', N'AS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (5, N'Andorra', N'AD')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (6, N'Angola', N'AO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (7, N'Anguilla', N'AI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (8, N'Antarctica', N'AQ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (9, N'Antigua And Barbuda', N'AG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (10, N'Argentina', N'AR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (11, N'Armenia', N'AM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (12, N'Aruba', N'AW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (13, N'Australia', N'AU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (14, N'Austria', N'AT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (15, N'Azerbaijan', N'AZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (16, N'Bahamas The', N'BS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (17, N'Bahrain', N'BH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (18, N'Bangladesh', N'BD')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (19, N'Barbados', N'BB')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (20, N'Belarus', N'BY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (21, N'Belgium', N'BE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (22, N'Belize', N'BZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (23, N'Benin', N'BJ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (24, N'Bermuda', N'BM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (25, N'Bhutan', N'BT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (26, N'Bolivia', N'BO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (27, N'Bosnia and Herzegovina', N'BA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (28, N'Botswana', N'BW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (29, N'Bouvet Island', N'BV')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (30, N'Brazil', N'BR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (31, N'British Indian Ocean Territory', N'IO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (32, N'Brunei', N'BN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (33, N'Bulgaria', N'BG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (34, N'Burkina Faso', N'BF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (35, N'Burundi', N'BI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (36, N'Cambodia', N'KH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (37, N'Cameroon', N'CM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (38, N'Canada', N'CA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (39, N'Cape Verde', N'CV')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (40, N'Cayman Islands', N'KY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (41, N'Central African Republic', N'CF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (42, N'Chad', N'TD')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (43, N'Chile', N'CL')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (44, N'China', N'CN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (45, N'Christmas Island', N'CX')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (46, N'Cocos (Keeling) Islands', N'CC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (47, N'Colombia', N'CO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (48, N'Comoros', N'KM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (49, N'Congo', N'CG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (50, N'Congo The Democratic Republic Of The', N'CD')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (51, N'Cook Islands', N'CK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (52, N'Costa Rica', N'CR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (53, N'Cote D''Ivoire (Ivory Coast)', N'CI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (54, N'Croatia (Hrvatska)', N'HR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (55, N'Cuba', N'CU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (56, N'Cyprus', N'CY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (57, N'Czech Republic', N'CZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (58, N'Denmark', N'DK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (59, N'Djibouti', N'DJ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (60, N'Dominica', N'DM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (61, N'Dominican Republic', N'DO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (62, N'East Timor', N'TP')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (63, N'Ecuador', N'EC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (64, N'Egypt', N'EG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (65, N'El Salvador', N'SV')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (66, N'Equatorial Guinea', N'GQ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (67, N'Eritrea', N'ER')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (68, N'Estonia', N'EE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (69, N'Ethiopia', N'ET')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (70, N'External Territories of Australia', N'XA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (71, N'Falkland Islands', N'FK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (72, N'Faroe Islands', N'FO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (73, N'Fiji Islands', N'FJ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (74, N'Finland', N'FI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (75, N'France', N'FR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (76, N'French Guiana', N'GF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (77, N'French Polynesia', N'PF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (78, N'French Southern Territories', N'TF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (79, N'Gabon', N'GA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (80, N'Gambia The', N'GM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (81, N'Georgia', N'GE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (82, N'Germany', N'DE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (83, N'Ghana', N'GH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (84, N'Gibraltar', N'GI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (85, N'Greece', N'GR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (86, N'Greenland', N'GL')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (87, N'Grenada', N'GD')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (88, N'Guadeloupe', N'GP')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (89, N'Guam', N'GU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (90, N'Guatemala', N'GT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (91, N'Guernsey and Alderney', N'XU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (92, N'Guinea', N'GN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (93, N'Guinea-Bissau', N'GW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (94, N'Guyana', N'GY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (95, N'Haiti', N'HT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (96, N'Heard and McDonald Islands', N'HM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (97, N'Honduras', N'HN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (98, N'Hong Kong S.A.R.', N'HK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (99, N'Hungary', N'HU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (100, N'Iceland', N'IS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (101, N'India', N'IN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (102, N'Indonesia', N'ID')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (103, N'Iran', N'IR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (104, N'Iraq', N'IQ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (105, N'Ireland', N'IE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (106, N'Israel', N'IL')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (107, N'Italy', N'IT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (108, N'Jamaica', N'JM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (109, N'Japan', N'JP')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (110, N'Jersey', N'XJ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (111, N'Jordan', N'JO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (112, N'Kazakhstan', N'KZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (113, N'Kenya', N'KE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (114, N'Kiribati', N'KI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (115, N'Korea North', N'KP')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (116, N'Korea South', N'KR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (117, N'Kuwait', N'KW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (118, N'Kyrgyzstan', N'KG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (119, N'Laos', N'LA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (120, N'Latvia', N'LV')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (121, N'Lebanon', N'LB')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (122, N'Lesotho', N'LS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (123, N'Liberia', N'LR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (124, N'Libya', N'LY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (125, N'Liechtenstein', N'LI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (126, N'Lithuania', N'LT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (127, N'Luxembourg', N'LU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (128, N'Macau S.A.R.', N'MO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (129, N'Macedonia', N'MK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (130, N'Madagascar', N'MG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (131, N'Malawi', N'MW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (132, N'Malaysia', N'MY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (133, N'Maldives', N'MV')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (134, N'Mali', N'ML')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (135, N'Malta', N'MT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (136, N'Man (Isle of)', N'XM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (137, N'Marshall Islands', N'MH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (138, N'Martinique', N'MQ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (139, N'Mauritania', N'MR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (140, N'Mauritius', N'MU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (141, N'Mayotte', N'YT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (142, N'Mexico', N'MX')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (143, N'Micronesia', N'FM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (144, N'Moldova', N'MD')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (145, N'Monaco', N'MC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (146, N'Mongolia', N'MN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (147, N'Montserrat', N'MS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (148, N'Morocco', N'MA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (149, N'Mozambique', N'MZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (150, N'Myanmar', N'MM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (151, N'Namibia', N'NA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (152, N'Nauru', N'NR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (153, N'Nepal', N'NP')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (154, N'Netherlands Antilles', N'AN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (155, N'Netherlands The', N'NL')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (156, N'New Caledonia', N'NC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (157, N'New Zealand', N'NZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (158, N'Nicaragua', N'NI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (159, N'Niger', N'NE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (160, N'Nigeria', N'NG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (161, N'Niue', N'NU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (162, N'Norfolk Island', N'NF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (163, N'Northern Mariana Islands', N'MP')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (164, N'Norway', N'NO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (165, N'Oman', N'OM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (166, N'Pakistan', N'PK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (167, N'Palau', N'PW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (168, N'Palestinian Territory Occupied', N'PS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (169, N'Panama', N'PA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (170, N'Papua new Guinea', N'PG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (171, N'Paraguay', N'PY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (172, N'Peru', N'PE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (173, N'Philippines', N'PH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (174, N'Pitcairn Island', N'PN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (175, N'Poland', N'PL')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (176, N'Portugal', N'PT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (177, N'Puerto Rico', N'PR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (178, N'Qatar', N'QA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (179, N'Reunion', N'RE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (180, N'Romania', N'RO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (181, N'Russia', N'RU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (182, N'Rwanda', N'RW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (183, N'Saint Helena', N'SH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (184, N'Saint Kitts And Nevis', N'KN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (185, N'Saint Lucia', N'LC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (186, N'Saint Pierre and Miquelon', N'PM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (187, N'Saint Vincent And The Grenadines', N'VC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (188, N'Samoa', N'WS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (189, N'San Marino', N'SM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (190, N'Sao Tome and Principe', N'ST')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (191, N'Saudi Arabia', N'SA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (192, N'Senegal', N'SN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (193, N'Serbia', N'RS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (194, N'Seychelles', N'SC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (195, N'Sierra Leone', N'SL')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (196, N'Singapore', N'SG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (197, N'Slovakia', N'SK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (198, N'Slovenia', N'SI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (199, N'Smaller Territories of the UK', N'XG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (200, N'Solomon Islands', N'SB')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (201, N'Somalia', N'SO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (202, N'South Africa', N'ZA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (203, N'South Georgia', N'GS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (204, N'South Sudan', N'SS')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (205, N'Spain', N'ES')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (206, N'Sri Lanka', N'LK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (207, N'Sudan', N'SD')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (208, N'Suriname', N'SR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (209, N'Svalbard And Jan Mayen Islands', N'SJ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (210, N'Swaziland', N'SZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (211, N'Sweden', N'SE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (212, N'Switzerland', N'CH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (213, N'Syria', N'SY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (214, N'Taiwan', N'TW')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (215, N'Tajikistan', N'TJ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (216, N'Tanzania', N'TZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (217, N'Thailand', N'TH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (218, N'Togo', N'TG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (219, N'Tokelau', N'TK')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (220, N'Tonga', N'TO')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (221, N'Trinidad And Tobago', N'TT')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (222, N'Tunisia', N'TN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (223, N'Turkey', N'TR')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (224, N'Turkmenistan', N'TM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (225, N'Turks And Caicos Islands', N'TC')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (226, N'Tuvalu', N'TV')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (227, N'Uganda', N'UG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (228, N'Ukraine', N'UA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (229, N'United Arab Emirates', N'AE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (230, N'United Kingdom', N'GB')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (231, N'United States', N'US')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (232, N'United States Minor Outlying Islands', N'UM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (233, N'Uruguay', N'UY')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (234, N'Uzbekistan', N'UZ')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (235, N'Vanuatu', N'VU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (236, N'Vatican City State (Holy See)', N'VA')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (237, N'Venezuela', N'VE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (238, N'Vietnam', N'VN')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (239, N'Virgin Islands (British)', N'VG')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (240, N'Virgin Islands (US)', N'VI')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (241, N'Wallis And Futuna Islands', N'WF')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (242, N'Western Sahara', N'EH')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (243, N'Yemen', N'YE')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (244, N'Yugoslavia', N'YU')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (245, N'Zambia', N'ZM')
GO
INSERT [dbo].[LP_COUNTRY_MASTER] ([ID], [Name], [CountryCode]) VALUES (246, N'Zimbabwe', N'ZW')
GO
SET IDENTITY_INSERT [dbo].[LP_COUNTRY_MASTER] OFF
GO
SET IDENTITY_INSERT [dbo].[LP_STATE_MASTER] ON 
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1, N'Badakhshan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2, N'Badgis', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3, N'Baglan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4, N'Balkh', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (5, N'Bamiyan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (6, N'Farah', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (7, N'Faryab', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (8, N'Gawr', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (9, N'Gazni', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (10, N'Herat', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (11, N'Hilmand', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (12, N'Jawzjan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (13, N'Kabul', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (14, N'Kapisa', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (15, N'Khawst', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (16, N'Kunar', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (17, N'Lagman', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (18, N'Lawghar', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (19, N'Nangarhar', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (20, N'Nimruz', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (21, N'Nuristan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (22, N'Paktika', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (23, N'Paktiya', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (24, N'Parwan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (25, N'Qandahar', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (26, N'Qunduz', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (27, N'Samangan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (28, N'Sar-e Pul', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (29, N'Takhar', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (30, N'Uruzgan', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (31, N'Wardag', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (32, N'Zabul', 1)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (33, N'Berat', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (34, N'Bulqize', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (35, N'Delvine', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (36, N'Devoll', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (37, N'Dibre', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (38, N'Durres', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (39, N'Elbasan', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (40, N'Fier', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (41, N'Gjirokaster', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (42, N'Gramsh', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (43, N'Has', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (44, N'Kavaje', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (45, N'Kolonje', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (46, N'Korce', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (47, N'Kruje', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (48, N'Kucove', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (49, N'Kukes', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (50, N'Kurbin', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (51, N'Lezhe', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (52, N'Librazhd', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (53, N'Lushnje', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (54, N'Mallakaster', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (55, N'Malsi e Madhe', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (56, N'Mat', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (57, N'Mirdite', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (58, N'Peqin', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (59, N'Permet', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (60, N'Pogradec', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (61, N'Puke', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (62, N'Sarande', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (63, N'Shkoder', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (64, N'Skrapar', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (65, N'Tepelene', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (66, N'Tirane', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (67, N'Tropoje', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (68, N'Vlore', 2)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (69, N'Adrar', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (70, N'al-Aghwat', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (71, N'al-Bayadh', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (72, N'Algiers', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (73, N'al-Jaza''ir', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (74, N'al-Wad', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (75, N'Annabah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (76, N'ash-Shalif', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (77, N'at-Tarif', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (78, N'''Ayn Daflah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (79, N'''Ayn Tamushanat', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (80, N'Bashshar', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (81, N'Batnah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (82, N'Bijayah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (83, N'Biskrah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (84, N'Blidah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (85, N'Buirah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (86, N'Bumardas', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (87, N'Burj Bu Arririj', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (88, N'Ghalizan', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (89, N'Ghardayah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (90, N'Ilizi', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (91, N'Jijili', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (92, N'Jilfah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (93, N'Khanshalah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (94, N'Masilah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (95, N'Midyah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (96, N'Milah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (97, N'Muaskar', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (98, N'Mustaghanam', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (99, N'Naama', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (100, N'Oran', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (101, N'Ouargla', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (102, N'Qalmah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (103, N'Qustantinah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (104, N'Sakikdah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (105, N'Satif', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (106, N'Sayda''', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (107, N'Sidi ban-al-''Abbas', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (108, N'Suq Ahras', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (109, N'Tamanghasat', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (110, N'Tibazah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (111, N'Tibissah', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (112, N'Tilimsan', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (113, N'Tinduf', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (114, N'Tisamsilt', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (115, N'Tiyarat', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (116, N'Tizi Wazu', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (117, N'Umm-al-Bawaghi', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (118, N'Wahran', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (119, N'Warqla', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (120, N'Wilaya d Alger', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (121, N'Wilaya de Bejaia', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (122, N'Wilaya de Constantine', 3)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (123, N'Eastern', 4)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (124, N'Manu''a', 4)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (125, N'Swains Island', 4)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (126, N'Western', 4)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (127, N'Andorra la Vella', 5)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (128, N'Canillo', 5)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (129, N'Encamp', 5)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (130, N'La Massana', 5)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (131, N'Les Escaldes', 5)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (132, N'Ordino', 5)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (133, N'Sant Julia de Loria', 5)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (134, N'Bengo', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (135, N'Benguela', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (136, N'Bie', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (137, N'Cabinda', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (138, N'Cunene', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (139, N'Huambo', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (140, N'Huila', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (141, N'Kuando-Kubango', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (142, N'Kwanza Norte', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (143, N'Kwanza Sul', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (144, N'Luanda', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (145, N'Lunda Norte', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (146, N'Lunda Sul', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (147, N'Malanje', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (148, N'Moxico', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (149, N'Namibe', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (150, N'Uige', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (151, N'Zaire', 6)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (152, N'Other Provinces', 7)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (153, N'Sector claimed by Argentina/Ch', 8)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (154, N'Sector claimed by Argentina/UK', 8)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (155, N'Sector claimed by Australia', 8)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (156, N'Sector claimed by France', 8)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (157, N'Sector claimed by New Zealand', 8)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (158, N'Sector claimed by Norway', 8)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (159, N'Unclaimed Sector', 8)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (160, N'Barbuda', 9)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (161, N'Saint George', 9)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (162, N'Saint John', 9)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (163, N'Saint Mary', 9)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (164, N'Saint Paul', 9)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (165, N'Saint Peter', 9)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (166, N'Saint Philip', 9)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (167, N'Buenos Aires', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (168, N'Catamarca', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (169, N'Chaco', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (170, N'Chubut', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (171, N'Cordoba', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (172, N'Corrientes', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (173, N'Distrito Federal', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (174, N'Entre Rios', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (175, N'Formosa', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (176, N'Jujuy', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (177, N'La Pampa', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (178, N'La Rioja', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (179, N'Mendoza', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (180, N'Misiones', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (181, N'Neuquen', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (182, N'Rio Negro', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (183, N'Salta', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (184, N'San Juan', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (185, N'San Luis', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (186, N'Santa Cruz', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (187, N'Santa Fe', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (188, N'Santiago del Estero', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (189, N'Tierra del Fuego', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (190, N'Tucuman', 10)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (191, N'Aragatsotn', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (192, N'Ararat', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (193, N'Armavir', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (194, N'Gegharkunik', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (195, N'Kotaik', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (196, N'Lori', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (197, N'Shirak', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (198, N'Stepanakert', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (199, N'Syunik', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (200, N'Tavush', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (201, N'Vayots Dzor', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (202, N'Yerevan', 11)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (203, N'Aruba', 12)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (204, N'Auckland', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (205, N'Australian Capital Territory', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (206, N'Balgowlah', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (207, N'Balmain', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (208, N'Bankstown', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (209, N'Baulkham Hills', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (210, N'Bonnet Bay', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (211, N'Camberwell', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (212, N'Carole Park', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (213, N'Castle Hill', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (214, N'Caulfield', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (215, N'Chatswood', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (216, N'Cheltenham', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (217, N'Cherrybrook', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (218, N'Clayton', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (219, N'Collingwood', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (220, N'Frenchs Forest', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (221, N'Hawthorn', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (222, N'Jannnali', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (223, N'Knoxfield', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (224, N'Melbourne', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (225, N'New South Wales', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (226, N'Northern Territory', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (227, N'Perth', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (228, N'Queensland', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (229, N'South Australia', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (230, N'Tasmania', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (231, N'Templestowe', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (232, N'Victoria', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (233, N'Werribee south', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (234, N'Western Australia', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (235, N'Wheeler', 13)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (236, N'Bundesland Salzburg', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (237, N'Bundesland Steiermark', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (238, N'Bundesland Tirol', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (239, N'Burgenland', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (240, N'Carinthia', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (241, N'Karnten', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (242, N'Liezen', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (243, N'Lower Austria', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (244, N'Niederosterreich', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (245, N'Oberosterreich', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (246, N'Salzburg', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (247, N'Schleswig-Holstein', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (248, N'Steiermark', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (249, N'Styria', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (250, N'Tirol', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (251, N'Upper Austria', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (252, N'Vorarlberg', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (253, N'Wien', 14)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (254, N'Abseron', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (255, N'Baki Sahari', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (256, N'Ganca', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (257, N'Ganja', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (258, N'Kalbacar', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (259, N'Lankaran', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (260, N'Mil-Qarabax', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (261, N'Mugan-Salyan', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (262, N'Nagorni-Qarabax', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (263, N'Naxcivan', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (264, N'Priaraks', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (265, N'Qazax', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (266, N'Saki', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (267, N'Sirvan', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (268, N'Xacmaz', 15)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (269, N'Abaco', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (270, N'Acklins Island', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (271, N'Andros', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (272, N'Berry Islands', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (273, N'Biminis', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (274, N'Cat Island', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (275, N'Crooked Island', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (276, N'Eleuthera', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (277, N'Exuma and Cays', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (278, N'Grand Bahama', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (279, N'Inagua Islands', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (280, N'Long Island', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (281, N'Mayaguana', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (282, N'New Providence', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (283, N'Ragged Island', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (284, N'Rum Cay', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (285, N'San Salvador', 16)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (286, N'al-Manamah', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (287, N'al-Muharraq', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (288, N'ar-Rifa''a', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (289, N'Badiyah', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (290, N'Hidd', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (291, N'''Isa', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (292, N'Jidd Hafs', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (293, N'Mahama', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (294, N'Manama', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (295, N'Sitrah', 17)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (296, N'Bagar Hat', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (297, N'Bandarban', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (298, N'Barguna', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (299, N'Barisal', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (300, N'Bhola', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (301, N'Bogora', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (302, N'Brahman Bariya', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (303, N'Chandpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (304, N'Chattagam', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (305, N'Chittagong Division', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (306, N'Chuadanga', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (307, N'Dhaka', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (308, N'Dinajpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (309, N'Faridpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (310, N'Feni', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (311, N'Gaybanda', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (312, N'Gazipur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (313, N'Gopalganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (314, N'Habiganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (315, N'Jaipur Hat', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (316, N'Jamalpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (317, N'Jessor', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (318, N'Jhalakati', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (319, N'Jhanaydah', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (320, N'Khagrachhari', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (321, N'Khulna', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (322, N'Kishorganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (323, N'Koks Bazar', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (324, N'Komilla', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (325, N'Kurigram', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (326, N'Kushtiya', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (327, N'Lakshmipur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (328, N'Lalmanir Hat', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (329, N'Madaripur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (330, N'Magura', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (331, N'Maimansingh', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (332, N'Manikganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (333, N'Maulvi Bazar', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (334, N'Meherpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (335, N'Munshiganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (336, N'Naral', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (337, N'Narayanganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (338, N'Narsingdi', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (339, N'Nator', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (340, N'Naugaon', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (341, N'Nawabganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (342, N'Netrakona', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (343, N'Nilphamari', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (344, N'Noakhali', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (345, N'Pabna', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (346, N'Panchagarh', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (347, N'Patuakhali', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (348, N'Pirojpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (349, N'Rajbari', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (350, N'Rajshahi', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (351, N'Rangamati', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (352, N'Rangpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (353, N'Satkhira', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (354, N'Shariatpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (355, N'Sherpur', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (356, N'Silhat', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (357, N'Sirajganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (358, N'Sunamganj', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (359, N'Tangayal', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (360, N'Thakurgaon', 18)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (361, N'Christ Church', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (362, N'Saint Andrew', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (363, N'Saint George', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (364, N'Saint James', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (365, N'Saint John', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (366, N'Saint Joseph', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (367, N'Saint Lucy', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (368, N'Saint Michael', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (369, N'Saint Peter', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (370, N'Saint Philip', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (371, N'Saint Thomas', 19)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (372, N'Brest', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (373, N'Homjel''', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (374, N'Hrodna', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (375, N'Mahiljow', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (376, N'Mahilyowskaya Voblasts', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (377, N'Minsk', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (378, N'Minskaja Voblasts''', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (379, N'Petrik', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (380, N'Vicebsk', 20)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (381, N'Antwerpen', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (382, N'Berchem', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (383, N'Brabant', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (384, N'Brabant Wallon', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (385, N'Brussel', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (386, N'East Flanders', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (387, N'Hainaut', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (388, N'Liege', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (389, N'Limburg', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (390, N'Luxembourg', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (391, N'Namur', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (392, N'Ontario', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (393, N'Oost-Vlaanderen', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (394, N'Provincie Brabant', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (395, N'Vlaams-Brabant', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (396, N'Wallonne', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (397, N'West-Vlaanderen', 21)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (398, N'Belize', 22)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (399, N'Cayo', 22)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (400, N'Corozal', 22)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (401, N'Orange Walk', 22)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (402, N'Stann Creek', 22)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (403, N'Toledo', 22)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (404, N'Alibori', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (405, N'Atacora', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (406, N'Atlantique', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (407, N'Borgou', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (408, N'Collines', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (409, N'Couffo', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (410, N'Donga', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (411, N'Littoral', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (412, N'Mono', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (413, N'Oueme', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (414, N'Plateau', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (415, N'Zou', 23)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (416, N'Hamilton', 24)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (417, N'Saint George', 24)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (418, N'Bumthang', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (419, N'Chhukha', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (420, N'Chirang', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (421, N'Daga', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (422, N'Geylegphug', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (423, N'Ha', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (424, N'Lhuntshi', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (425, N'Mongar', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (426, N'Pemagatsel', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (427, N'Punakha', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (428, N'Rinpung', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (429, N'Samchi', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (430, N'Samdrup Jongkhar', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (431, N'Shemgang', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (432, N'Tashigang', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (433, N'Timphu', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (434, N'Tongsa', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (435, N'Wangdiphodrang', 25)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (436, N'Beni', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (437, N'Chuquisaca', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (438, N'Cochabamba', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (439, N'La Paz', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (440, N'Oruro', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (441, N'Pando', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (442, N'Potosi', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (443, N'Santa Cruz', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (444, N'Tarija', 26)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (445, N'Federacija Bosna i Hercegovina', 27)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (446, N'Republika Srpska', 27)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (447, N'Central Bobonong', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (448, N'Central Boteti', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (449, N'Central Mahalapye', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (450, N'Central Serowe-Palapye', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (451, N'Central Tutume', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (452, N'Chobe', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (453, N'Francistown', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (454, N'Gaborone', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (455, N'Ghanzi', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (456, N'Jwaneng', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (457, N'Kgalagadi North', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (458, N'Kgalagadi South', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (459, N'Kgatleng', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (460, N'Kweneng', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (461, N'Lobatse', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (462, N'Ngamiland', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (463, N'Ngwaketse', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (464, N'North East', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (465, N'Okavango', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (466, N'Orapa', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (467, N'Selibe Phikwe', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (468, N'South East', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (469, N'Sowa', 28)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (470, N'Bouvet Island', 29)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (471, N'Acre', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (472, N'Alagoas', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (473, N'Amapa', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (474, N'Amazonas', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (475, N'Bahia', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (476, N'Ceara', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (477, N'Distrito Federal', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (478, N'Espirito Santo', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (479, N'Estado de Sao Paulo', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (480, N'Goias', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (481, N'Maranhao', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (482, N'Mato Grosso', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (483, N'Mato Grosso do Sul', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (484, N'Minas Gerais', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (485, N'Para', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (486, N'Paraiba', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (487, N'Parana', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (488, N'Pernambuco', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (489, N'Piaui', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (490, N'Rio de Janeiro', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (491, N'Rio Grande do Norte', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (492, N'Rio Grande do Sul', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (493, N'Rondonia', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (494, N'Roraima', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (495, N'Santa Catarina', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (496, N'Sao Paulo', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (497, N'Sergipe', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (498, N'Tocantins', 30)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (499, N'British Indian Ocean Territory', 31)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (500, N'Belait', 32)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (501, N'Brunei-Muara', 32)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (502, N'Temburong', 32)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (503, N'Tutong', 32)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (504, N'Blagoevgrad', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (505, N'Burgas', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (506, N'Dobrich', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (507, N'Gabrovo', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (508, N'Haskovo', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (509, N'Jambol', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (510, N'Kardzhali', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (511, N'Kjustendil', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (512, N'Lovech', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (513, N'Montana', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (514, N'Oblast Sofiya-Grad', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (515, N'Pazardzhik', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (516, N'Pernik', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (517, N'Pleven', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (518, N'Plovdiv', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (519, N'Razgrad', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (520, N'Ruse', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (521, N'Shumen', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (522, N'Silistra', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (523, N'Sliven', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (524, N'Smoljan', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (525, N'Sofija grad', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (526, N'Sofijska oblast', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (527, N'Stara Zagora', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (528, N'Targovishte', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (529, N'Varna', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (530, N'Veliko Tarnovo', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (531, N'Vidin', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (532, N'Vraca', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (533, N'Yablaniza', 33)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (534, N'Bale', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (535, N'Bam', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (536, N'Bazega', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (537, N'Bougouriba', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (538, N'Boulgou', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (539, N'Boulkiemde', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (540, N'Comoe', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (541, N'Ganzourgou', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (542, N'Gnagna', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (543, N'Gourma', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (544, N'Houet', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (545, N'Ioba', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (546, N'Kadiogo', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (547, N'Kenedougou', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (548, N'Komandjari', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (549, N'Kompienga', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (550, N'Kossi', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (551, N'Kouritenga', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (552, N'Kourweogo', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (553, N'Leraba', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (554, N'Mouhoun', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (555, N'Nahouri', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (556, N'Namentenga', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (557, N'Noumbiel', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (558, N'Oubritenga', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (559, N'Oudalan', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (560, N'Passore', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (561, N'Poni', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (562, N'Sanguie', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (563, N'Sanmatenga', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (564, N'Seno', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (565, N'Sissili', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (566, N'Soum', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (567, N'Sourou', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (568, N'Tapoa', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (569, N'Tuy', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (570, N'Yatenga', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (571, N'Zondoma', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (572, N'Zoundweogo', 34)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (573, N'Bubanza', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (574, N'Bujumbura', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (575, N'Bururi', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (576, N'Cankuzo', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (577, N'Cibitoke', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (578, N'Gitega', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (579, N'Karuzi', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (580, N'Kayanza', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (581, N'Kirundo', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (582, N'Makamba', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (583, N'Muramvya', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (584, N'Muyinga', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (585, N'Ngozi', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (586, N'Rutana', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (587, N'Ruyigi', 35)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (588, N'Banteay Mean Chey', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (589, N'Bat Dambang', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (590, N'Kampong Cham', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (591, N'Kampong Chhnang', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (592, N'Kampong Spoeu', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (593, N'Kampong Thum', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (594, N'Kampot', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (595, N'Kandal', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (596, N'Kaoh Kong', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (597, N'Kracheh', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (598, N'Krong Kaeb', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (599, N'Krong Pailin', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (600, N'Krong Preah Sihanouk', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (601, N'Mondol Kiri', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (602, N'Otdar Mean Chey', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (603, N'Phnum Penh', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (604, N'Pousat', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (605, N'Preah Vihear', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (606, N'Prey Veaeng', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (607, N'Rotanak Kiri', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (608, N'Siem Reab', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (609, N'Stueng Traeng', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (610, N'Svay Rieng', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (611, N'Takaev', 36)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (612, N'Adamaoua', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (613, N'Centre', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (614, N'Est', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (615, N'Littoral', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (616, N'Nord', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (617, N'Nord Extreme', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (618, N'Nordouest', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (619, N'Ouest', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (620, N'Sud', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (621, N'Sudouest', 37)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (622, N'Alberta', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (623, N'British Columbia', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (624, N'Manitoba', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (625, N'New Brunswick', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (626, N'Newfoundland and Labrador', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (627, N'Northwest Territories', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (628, N'Nova Scotia', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (629, N'Nunavut', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (630, N'Ontario', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (631, N'Prince Edward Island', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (632, N'Quebec', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (633, N'Saskatchewan', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (634, N'Yukon', 38)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (635, N'Boavista', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (636, N'Brava', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (637, N'Fogo', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (638, N'Maio', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (639, N'Sal', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (640, N'Santo Antao', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (641, N'Sao Nicolau', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (642, N'Sao Tiago', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (643, N'Sao Vicente', 39)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (644, N'Grand Cayman', 40)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (645, N'Bamingui-Bangoran', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (646, N'Bangui', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (647, N'Basse-Kotto', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (648, N'Haute-Kotto', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (649, N'Haut-Mbomou', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (650, N'Kemo', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (651, N'Lobaye', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (652, N'Mambere-Kadei', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (653, N'Mbomou', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (654, N'Nana-Gribizi', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (655, N'Nana-Mambere', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (656, N'Ombella Mpoko', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (657, N'Ouaka', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (658, N'Ouham', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (659, N'Ouham-Pende', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (660, N'Sangha-Mbaere', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (661, N'Vakaga', 41)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (662, N'Batha', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (663, N'Biltine', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (664, N'Bourkou-Ennedi-Tibesti', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (665, N'Chari-Baguirmi', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (666, N'Guera', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (667, N'Kanem', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (668, N'Lac', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (669, N'Logone Occidental', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (670, N'Logone Oriental', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (671, N'Mayo-Kebbi', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (672, N'Moyen-Chari', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (673, N'Ouaddai', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (674, N'Salamat', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (675, N'Tandjile', 42)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (676, N'Aisen', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (677, N'Antofagasta', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (678, N'Araucania', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (679, N'Atacama', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (680, N'Bio Bio', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (681, N'Coquimbo', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (682, N'Libertador General Bernardo O''', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (683, N'Los Lagos', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (684, N'Magellanes', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (685, N'Maule', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (686, N'Metropolitana', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (687, N'Metropolitana de Santiago', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (688, N'Tarapaca', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (689, N'Valparaiso', 43)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (690, N'Anhui', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (691, N'Anhui Province', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (692, N'Anhui Sheng', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (693, N'Aomen', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (694, N'Beijing', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (695, N'Beijing Shi', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (696, N'Chongqing', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (697, N'Fujian', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (698, N'Fujian Sheng', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (699, N'Gansu', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (700, N'Guangdong', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (701, N'Guangdong Sheng', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (702, N'Guangxi', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (703, N'Guizhou', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (704, N'Hainan', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (705, N'Hebei', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (706, N'Heilongjiang', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (707, N'Henan', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (708, N'Hubei', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (709, N'Hunan', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (710, N'Jiangsu', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (711, N'Jiangsu Sheng', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (712, N'Jiangxi', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (713, N'Jilin', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (714, N'Liaoning', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (715, N'Liaoning Sheng', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (716, N'Nei Monggol', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (717, N'Ningxia Hui', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (718, N'Qinghai', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (719, N'Shaanxi', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (720, N'Shandong', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (721, N'Shandong Sheng', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (722, N'Shanghai', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (723, N'Shanxi', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (724, N'Sichuan', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (725, N'Tianjin', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (726, N'Xianggang', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (727, N'Xinjiang', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (728, N'Xizang', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (729, N'Yunnan', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (730, N'Zhejiang', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (731, N'Zhejiang Sheng', 44)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (732, N'Christmas Island', 45)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (733, N'Cocos (Keeling) Islands', 46)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (734, N'Amazonas', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (735, N'Antioquia', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (736, N'Arauca', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (737, N'Atlantico', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (738, N'Bogota', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (739, N'Bolivar', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (740, N'Boyaca', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (741, N'Caldas', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (742, N'Caqueta', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (743, N'Casanare', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (744, N'Cauca', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (745, N'Cesar', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (746, N'Choco', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (747, N'Cordoba', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (748, N'Cundinamarca', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (749, N'Guainia', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (750, N'Guaviare', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (751, N'Huila', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (752, N'La Guajira', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (753, N'Magdalena', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (754, N'Meta', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (755, N'Narino', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (756, N'Norte de Santander', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (757, N'Putumayo', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (758, N'Quindio', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (759, N'Risaralda', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (760, N'San Andres y Providencia', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (761, N'Santander', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (762, N'Sucre', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (763, N'Tolima', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (764, N'Valle del Cauca', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (765, N'Vaupes', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (766, N'Vichada', 47)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (767, N'Mwali', 48)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (768, N'Njazidja', 48)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (769, N'Nzwani', 48)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (770, N'Bouenza', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (771, N'Brazzaville', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (772, N'Cuvette', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (773, N'Kouilou', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (774, N'Lekoumou', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (775, N'Likouala', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (776, N'Niari', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (777, N'Plateaux', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (778, N'Pool', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (779, N'Sangha', 49)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (780, N'Bandundu', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (781, N'Bas-Congo', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (782, N'Equateur', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (783, N'Haut-Congo', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (784, N'Kasai-Occidental', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (785, N'Kasai-Oriental', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (786, N'Katanga', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (787, N'Kinshasa', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (788, N'Maniema', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (789, N'Nord-Kivu', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (790, N'Sud-Kivu', 50)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (791, N'Aitutaki', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (792, N'Atiu', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (793, N'Mangaia', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (794, N'Manihiki', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (795, N'Mauke', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (796, N'Mitiaro', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (797, N'Nassau', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (798, N'Pukapuka', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (799, N'Rakahanga', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (800, N'Rarotonga', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (801, N'Tongareva', 51)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (802, N'Alajuela', 52)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (803, N'Cartago', 52)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (804, N'Guanacaste', 52)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (805, N'Heredia', 52)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (806, N'Limon', 52)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (807, N'Puntarenas', 52)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (808, N'San Jose', 52)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (809, N'Abidjan', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (810, N'Agneby', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (811, N'Bafing', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (812, N'Denguele', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (813, N'Dix-huit Montagnes', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (814, N'Fromager', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (815, N'Haut-Sassandra', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (816, N'Lacs', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (817, N'Lagunes', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (818, N'Marahoue', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (819, N'Moyen-Cavally', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (820, N'Moyen-Comoe', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (821, N'N''zi-Comoe', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (822, N'Sassandra', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (823, N'Savanes', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (824, N'Sud-Bandama', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (825, N'Sud-Comoe', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (826, N'Vallee du Bandama', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (827, N'Worodougou', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (828, N'Zanzan', 53)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (829, N'Bjelovar-Bilogora', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (830, N'Dubrovnik-Neretva', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (831, N'Grad Zagreb', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (832, N'Istra', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (833, N'Karlovac', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (834, N'Koprivnica-Krizhevci', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (835, N'Krapina-Zagorje', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (836, N'Lika-Senj', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (837, N'Medhimurje', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (838, N'Medimurska Zupanija', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (839, N'Osijek-Baranja', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (840, N'Osjecko-Baranjska Zupanija', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (841, N'Pozhega-Slavonija', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (842, N'Primorje-Gorski Kotar', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (843, N'Shibenik-Knin', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (844, N'Sisak-Moslavina', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (845, N'Slavonski Brod-Posavina', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (846, N'Split-Dalmacija', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (847, N'Varazhdin', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (848, N'Virovitica-Podravina', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (849, N'Vukovar-Srijem', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (850, N'Zadar', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (851, N'Zagreb', 54)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (852, N'Camaguey', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (853, N'Ciego de Avila', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (854, N'Cienfuegos', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (855, N'Ciudad de la Habana', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (856, N'Granma', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (857, N'Guantanamo', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (858, N'Habana', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (859, N'Holguin', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (860, N'Isla de la Juventud', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (861, N'La Habana', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (862, N'Las Tunas', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (863, N'Matanzas', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (864, N'Pinar del Rio', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (865, N'Sancti Spiritus', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (866, N'Santiago de Cuba', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (867, N'Villa Clara', 55)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (868, N'Government controlled area', 56)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (869, N'Limassol', 56)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (870, N'Nicosia District', 56)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (871, N'Paphos', 56)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (872, N'Turkish controlled area', 56)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (873, N'Central Bohemian', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (874, N'Frycovice', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (875, N'Jihocesky Kraj', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (876, N'Jihochesky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (877, N'Jihomoravsky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (878, N'Karlovarsky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (879, N'Klecany', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (880, N'Kralovehradecky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (881, N'Liberecky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (882, N'Lipov', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (883, N'Moravskoslezsky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (884, N'Olomoucky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (885, N'Olomoucky Kraj', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (886, N'Pardubicky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (887, N'Plzensky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (888, N'Praha', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (889, N'Rajhrad', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (890, N'Smirice', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (891, N'South Moravian', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (892, N'Straz nad Nisou', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (893, N'Stredochesky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (894, N'Unicov', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (895, N'Ustecky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (896, N'Valletta', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (897, N'Velesin', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (898, N'Vysochina', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (899, N'Zlinsky', 57)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (900, N'Arhus', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (901, N'Bornholm', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (902, N'Frederiksborg', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (903, N'Fyn', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (904, N'Hovedstaden', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (905, N'Kobenhavn', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (906, N'Kobenhavns Amt', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (907, N'Kobenhavns Kommune', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (908, N'Nordjylland', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (909, N'Ribe', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (910, N'Ringkobing', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (911, N'Roervig', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (912, N'Roskilde', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (913, N'Roslev', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (914, N'Sjaelland', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (915, N'Soeborg', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (916, N'Sonderjylland', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (917, N'Storstrom', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (918, N'Syddanmark', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (919, N'Toelloese', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (920, N'Vejle', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (921, N'Vestsjalland', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (922, N'Viborg', 58)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (923, N'''Ali Sabih', 59)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (924, N'Dikhil', 59)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (925, N'Jibuti', 59)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (926, N'Tajurah', 59)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (927, N'Ubuk', 59)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (928, N'Saint Andrew', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (929, N'Saint David', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (930, N'Saint George', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (931, N'Saint John', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (932, N'Saint Joseph', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (933, N'Saint Luke', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (934, N'Saint Mark', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (935, N'Saint Patrick', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (936, N'Saint Paul', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (937, N'Saint Peter', 60)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (938, N'Azua', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (939, N'Bahoruco', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (940, N'Barahona', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (941, N'Dajabon', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (942, N'Distrito Nacional', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (943, N'Duarte', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (944, N'El Seybo', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (945, N'Elias Pina', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (946, N'Espaillat', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (947, N'Hato Mayor', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (948, N'Independencia', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (949, N'La Altagracia', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (950, N'La Romana', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (951, N'La Vega', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (952, N'Maria Trinidad Sanchez', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (953, N'Monsenor Nouel', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (954, N'Monte Cristi', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (955, N'Monte Plata', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (956, N'Pedernales', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (957, N'Peravia', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (958, N'Puerto Plata', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (959, N'Salcedo', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (960, N'Samana', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (961, N'San Cristobal', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (962, N'San Juan', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (963, N'San Pedro de Macoris', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (964, N'Sanchez Ramirez', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (965, N'Santiago', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (966, N'Santiago Rodriguez', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (967, N'Valverde', 61)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (968, N'Aileu', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (969, N'Ainaro', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (970, N'Ambeno', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (971, N'Baucau', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (972, N'Bobonaro', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (973, N'Cova Lima', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (974, N'Dili', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (975, N'Ermera', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (976, N'Lautem', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (977, N'Liquica', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (978, N'Manatuto', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (979, N'Manufahi', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (980, N'Viqueque', 62)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (981, N'Azuay', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (982, N'Bolivar', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (983, N'Canar', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (984, N'Carchi', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (985, N'Chimborazo', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (986, N'Cotopaxi', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (987, N'El Oro', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (988, N'Esmeraldas', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (989, N'Galapagos', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (990, N'Guayas', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (991, N'Imbabura', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (992, N'Loja', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (993, N'Los Rios', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (994, N'Manabi', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (995, N'Morona Santiago', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (996, N'Napo', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (997, N'Orellana', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (998, N'Pastaza', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (999, N'Pichincha', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1000, N'Sucumbios', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1001, N'Tungurahua', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1002, N'Zamora Chinchipe', 63)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1003, N'ad-Daqahliyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1004, N'al-Bahr-al-Ahmar', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1005, N'al-Buhayrah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1006, N'al-Fayyum', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1007, N'al-Gharbiyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1008, N'al-Iskandariyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1009, N'al-Ismailiyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1010, N'al-Jizah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1011, N'al-Minufiyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1012, N'al-Minya', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1013, N'al-Qahira', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1014, N'al-Qalyubiyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1015, N'al-Uqsur', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1016, N'al-Wadi al-Jadid', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1017, N'ash-Sharqiyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1018, N'as-Suways', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1019, N'Aswan', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1020, N'Asyut', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1021, N'Bani Suwayf', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1022, N'Bur Sa''id', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1023, N'Cairo', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1024, N'Dumyat', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1025, N'Kafr-ash-Shaykh', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1026, N'Matruh', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1027, N'Muhafazat ad Daqahliyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1028, N'Muhafazat al Fayyum', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1029, N'Muhafazat al Gharbiyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1030, N'Muhafazat al Iskandariyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1031, N'Muhafazat al Qahirah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1032, N'Qina', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1033, N'Sawhaj', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1034, N'Sina al-Janubiyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1035, N'Sina ash-Shamaliyah', 64)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1036, N'Ahuachapan', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1037, N'Cabanas', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1038, N'Chalatenango', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1039, N'Cuscatlan', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1040, N'La Libertad', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1041, N'La Paz', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1042, N'La Union', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1043, N'Morazan', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1044, N'San Miguel', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1045, N'San Salvador', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1046, N'San Vicente', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1047, N'Santa Ana', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1048, N'Sonsonate', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1049, N'Usulutan', 65)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1050, N'Annobon', 66)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1051, N'Bioko Norte', 66)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1052, N'Bioko Sur', 66)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1053, N'Centro Sur', 66)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1054, N'Kie-Ntem', 66)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1055, N'Litoral', 66)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1056, N'Wele-Nzas', 66)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1057, N'Anseba', 67)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1058, N'Debub', 67)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1059, N'Debub-Keih-Bahri', 67)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1060, N'Gash-Barka', 67)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1061, N'Maekel', 67)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1062, N'Semien-Keih-Bahri', 67)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1063, N'Harju', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1064, N'Hiiu', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1065, N'Ida-Viru', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1066, N'Jarva', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1067, N'Jogeva', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1068, N'Laane', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1069, N'Laane-Viru', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1070, N'Parnu', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1071, N'Polva', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1072, N'Rapla', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1073, N'Saare', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1074, N'Tartu', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1075, N'Valga', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1076, N'Viljandi', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1077, N'Voru', 68)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1078, N'Addis Abeba', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1079, N'Afar', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1080, N'Amhara', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1081, N'Benishangul', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1082, N'Diredawa', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1083, N'Gambella', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1084, N'Harar', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1085, N'Jigjiga', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1086, N'Mekele', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1087, N'Oromia', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1088, N'Somali', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1089, N'Southern', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1090, N'Tigray', 69)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1091, N'Christmas Island', 70)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1092, N'Cocos Islands', 70)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1093, N'Coral Sea Islands', 70)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1094, N'Falkland Islands', 71)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1095, N'South Georgia', 71)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1096, N'Klaksvik', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1097, N'Nor ara Eysturoy', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1098, N'Nor oy', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1099, N'Sandoy', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1100, N'Streymoy', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1101, N'Su uroy', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1102, N'Sy ra Eysturoy', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1103, N'Torshavn', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1104, N'Vaga', 72)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1105, N'Central', 73)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1106, N'Eastern', 73)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1107, N'Northern', 73)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1108, N'South Pacific', 73)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1109, N'Western', 73)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1110, N'Ahvenanmaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1111, N'Etela-Karjala', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1112, N'Etela-Pohjanmaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1113, N'Etela-Savo', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1114, N'Etela-Suomen Laani', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1115, N'Ita-Suomen Laani', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1116, N'Ita-Uusimaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1117, N'Kainuu', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1118, N'Kanta-Hame', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1119, N'Keski-Pohjanmaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1120, N'Keski-Suomi', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1121, N'Kymenlaakso', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1122, N'Lansi-Suomen Laani', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1123, N'Lappi', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1124, N'Northern Savonia', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1125, N'Ostrobothnia', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1126, N'Oulun Laani', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1127, N'Paijat-Hame', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1128, N'Pirkanmaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1129, N'Pohjanmaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1130, N'Pohjois-Karjala', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1131, N'Pohjois-Pohjanmaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1132, N'Pohjois-Savo', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1133, N'Saarijarvi', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1134, N'Satakunta', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1135, N'Southern Savonia', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1136, N'Tavastia Proper', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1137, N'Uleaborgs Lan', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1138, N'Uusimaa', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1139, N'Varsinais-Suomi', 74)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1140, N'Ain', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1141, N'Aisne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1142, N'Albi Le Sequestre', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1143, N'Allier', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1144, N'Alpes-Cote dAzur', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1145, N'Alpes-de-Haute-Provence', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1146, N'Alpes-Maritimes', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1147, N'Alsace', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1148, N'Aquitaine', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1149, N'Ardeche', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1150, N'Ardennes', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1151, N'Ariege', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1152, N'Aube', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1153, N'Aude', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1154, N'Auvergne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1155, N'Aveyron', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1156, N'Bas-Rhin', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1157, N'Basse-Normandie', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1158, N'Bouches-du-Rhone', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1159, N'Bourgogne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1160, N'Bretagne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1161, N'Brittany', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1162, N'Burgundy', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1163, N'Calvados', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1164, N'Cantal', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1165, N'Cedex', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1166, N'Centre', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1167, N'Charente', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1168, N'Charente-Maritime', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1169, N'Cher', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1170, N'Correze', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1171, N'Corse-du-Sud', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1172, N'Cote-d''Or', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1173, N'Cotes-d''Armor', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1174, N'Creuse', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1175, N'Crolles', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1176, N'Deux-Sevres', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1177, N'Dordogne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1178, N'Doubs', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1179, N'Drome', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1180, N'Essonne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1181, N'Eure', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1182, N'Eure-et-Loir', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1183, N'Feucherolles', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1184, N'Finistere', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1185, N'Franche-Comte', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1186, N'Gard', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1187, N'Gers', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1188, N'Gironde', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1189, N'Haute-Corse', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1190, N'Haute-Garonne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1191, N'Haute-Loire', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1192, N'Haute-Marne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1193, N'Hautes-Alpes', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1194, N'Haute-Saone', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1195, N'Haute-Savoie', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1196, N'Hautes-Pyrenees', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1197, N'Haute-Vienne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1198, N'Haut-Rhin', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1199, N'Hauts-de-Seine', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1200, N'Herault', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1201, N'Ile-de-France', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1202, N'Ille-et-Vilaine', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1203, N'Indre', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1204, N'Indre-et-Loire', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1205, N'Isere', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1206, N'Jura', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1207, N'Klagenfurt', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1208, N'Landes', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1209, N'Languedoc-Roussillon', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1210, N'Larcay', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1211, N'Le Castellet', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1212, N'Le Creusot', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1213, N'Limousin', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1214, N'Loire', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1215, N'Loire-Atlantique', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1216, N'Loiret', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1217, N'Loir-et-Cher', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1218, N'Lorraine', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1219, N'Lot', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1220, N'Lot-et-Garonne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1221, N'Lower Normandy', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1222, N'Lozere', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1223, N'Maine-et-Loire', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1224, N'Manche', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1225, N'Marne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1226, N'Mayenne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1227, N'Meurthe-et-Moselle', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1228, N'Meuse', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1229, N'Midi-Pyrenees', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1230, N'Morbihan', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1231, N'Moselle', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1232, N'Nievre', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1233, N'Nord', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1234, N'Nord-Pas-de-Calais', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1235, N'Oise', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1236, N'Orne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1237, N'Paris', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1238, N'Pas-de-Calais', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1239, N'Pays de la Loire', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1240, N'Pays-de-la-Loire', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1241, N'Picardy', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1242, N'Puy-de-Dome', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1243, N'Pyrenees-Atlantiques', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1244, N'Pyrenees-Orientales', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1245, N'Quelmes', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1246, N'Rhone', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1247, N'Rhone-Alpes', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1248, N'Saint Ouen', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1249, N'Saint Viatre', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1250, N'Saone-et-Loire', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1251, N'Sarthe', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1252, N'Savoie', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1253, N'Seine-et-Marne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1254, N'Seine-Maritime', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1255, N'Seine-Saint-Denis', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1256, N'Somme', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1257, N'Sophia Antipolis', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1258, N'Souvans', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1259, N'Tarn', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1260, N'Tarn-et-Garonne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1261, N'Territoire de Belfort', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1262, N'Treignac', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1263, N'Upper Normandy', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1264, N'Val-de-Marne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1265, N'Val-d''Oise', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1266, N'Var', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1267, N'Vaucluse', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1268, N'Vellise', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1269, N'Vendee', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1270, N'Vienne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1271, N'Vosges', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1272, N'Yonne', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1273, N'Yvelines', 75)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1274, N'Cayenne', 76)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1275, N'Saint-Laurent-du-Maroni', 76)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1276, N'Iles du Vent', 77)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1277, N'Iles sous le Vent', 77)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1278, N'Marquesas', 77)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1279, N'Tuamotu', 77)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1280, N'Tubuai', 77)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1281, N'Amsterdam', 78)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1282, N'Crozet Islands', 78)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1283, N'Kerguelen', 78)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1284, N'Estuaire', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1285, N'Haut-Ogooue', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1286, N'Moyen-Ogooue', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1287, N'Ngounie', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1288, N'Nyanga', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1289, N'Ogooue-Ivindo', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1290, N'Ogooue-Lolo', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1291, N'Ogooue-Maritime', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1292, N'Woleu-Ntem', 79)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1293, N'Banjul', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1294, N'Basse', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1295, N'Brikama', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1296, N'Janjanbureh', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1297, N'Kanifing', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1298, N'Kerewan', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1299, N'Kuntaur', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1300, N'Mansakonko', 80)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1301, N'Abhasia', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1302, N'Ajaria', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1303, N'Guria', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1304, N'Imereti', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1305, N'Kaheti', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1306, N'Kvemo Kartli', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1307, N'Mcheta-Mtianeti', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1308, N'Racha', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1309, N'Samagrelo-Zemo Svaneti', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1310, N'Samche-Zhavaheti', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1311, N'Shida Kartli', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1312, N'Tbilisi', 81)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1313, N'Auvergne', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1314, N'Baden-Wurttemberg', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1315, N'Bavaria', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1316, N'Bayern', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1317, N'Beilstein Wurtt', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1318, N'Berlin', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1319, N'Brandenburg', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1320, N'Bremen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1321, N'Dreisbach', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1322, N'Freistaat Bayern', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1323, N'Hamburg', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1324, N'Hannover', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1325, N'Heroldstatt', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1326, N'Hessen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1327, N'Kortenberg', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1328, N'Laasdorf', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1329, N'Land Baden-Wurttemberg', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1330, N'Land Bayern', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1331, N'Land Brandenburg', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1332, N'Land Hessen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1333, N'Land Mecklenburg-Vorpommern', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1334, N'Land Nordrhein-Westfalen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1335, N'Land Rheinland-Pfalz', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1336, N'Land Sachsen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1337, N'Land Sachsen-Anhalt', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1338, N'Land Thuringen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1339, N'Lower Saxony', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1340, N'Mecklenburg-Vorpommern', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1341, N'Mulfingen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1342, N'Munich', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1343, N'Neubeuern', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1344, N'Niedersachsen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1345, N'Noord-Holland', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1346, N'Nordrhein-Westfalen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1347, N'North Rhine-Westphalia', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1348, N'Osterode', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1349, N'Rheinland-Pfalz', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1350, N'Rhineland-Palatinate', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1351, N'Saarland', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1352, N'Sachsen', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1353, N'Sachsen-Anhalt', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1354, N'Saxony', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1355, N'Schleswig-Holstein', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1356, N'schlobborn', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1357, N'Thuringia', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1358, N'Webling', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1359, N'Weinstrabe', 82)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1360, N'Ashanti', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1361, N'Brong-Ahafo', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1362, N'Central', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1363, N'Eastern', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1364, N'Greater Accra', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1365, N'Northern', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1366, N'Upper East', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1367, N'Upper West', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1368, N'Volta', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1369, N'Western', 83)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1370, N'Gibraltar', 84)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1371, N'Acharnes', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1372, N'Ahaia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1373, N'Aitolia kai Akarnania', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1374, N'Argolis', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1375, N'Arkadia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1376, N'Arta', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1377, N'Attica', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1378, N'Attiki', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1379, N'Ayion Oros', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1380, N'Crete', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1381, N'Dodekanisos', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1382, N'Drama', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1383, N'Evia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1384, N'Evritania', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1385, N'Evros', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1386, N'Evvoia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1387, N'Florina', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1388, N'Fokis', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1389, N'Fthiotis', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1390, N'Grevena', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1391, N'Halandri', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1392, N'Halkidiki', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1393, N'Hania', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1394, N'Heraklion', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1395, N'Hios', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1396, N'Ilia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1397, N'Imathia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1398, N'Ioannina', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1399, N'Iraklion', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1400, N'Karditsa', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1401, N'Kastoria', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1402, N'Kavala', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1403, N'Kefallinia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1404, N'Kerkira', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1405, N'Kiklades', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1406, N'Kilkis', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1407, N'Korinthia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1408, N'Kozani', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1409, N'Lakonia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1410, N'Larisa', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1411, N'Lasithi', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1412, N'Lesvos', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1413, N'Levkas', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1414, N'Magnisia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1415, N'Messinia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1416, N'Nomos Attikis', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1417, N'Nomos Zakynthou', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1418, N'Pella', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1419, N'Pieria', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1420, N'Piraios', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1421, N'Preveza', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1422, N'Rethimni', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1423, N'Rodopi', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1424, N'Samos', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1425, N'Serrai', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1426, N'Thesprotia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1427, N'Thessaloniki', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1428, N'Trikala', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1429, N'Voiotia', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1430, N'West Greece', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1431, N'Xanthi', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1432, N'Zakinthos', 85)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1433, N'Aasiaat', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1434, N'Ammassalik', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1435, N'Illoqqortoormiut', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1436, N'Ilulissat', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1437, N'Ivittuut', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1438, N'Kangaatsiaq', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1439, N'Maniitsoq', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1440, N'Nanortalik', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1441, N'Narsaq', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1442, N'Nuuk', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1443, N'Paamiut', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1444, N'Qaanaaq', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1445, N'Qaqortoq', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1446, N'Qasigiannguit', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1447, N'Qeqertarsuaq', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1448, N'Sisimiut', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1449, N'Udenfor kommunal inddeling', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1450, N'Upernavik', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1451, N'Uummannaq', 86)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1452, N'Carriacou-Petite Martinique', 87)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1453, N'Saint Andrew', 87)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1454, N'Saint Davids', 87)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1455, N'Saint George''s', 87)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1456, N'Saint John', 87)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1457, N'Saint Mark', 87)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1458, N'Saint Patrick', 87)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1459, N'Basse-Terre', 88)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1460, N'Grande-Terre', 88)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1461, N'Iles des Saintes', 88)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1462, N'La Desirade', 88)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1463, N'Marie-Galante', 88)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1464, N'Saint Barthelemy', 88)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1465, N'Saint Martin', 88)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1466, N'Agana Heights', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1467, N'Agat', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1468, N'Barrigada', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1469, N'Chalan-Pago-Ordot', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1470, N'Dededo', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1471, N'Hagatna', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1472, N'Inarajan', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1473, N'Mangilao', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1474, N'Merizo', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1475, N'Mongmong-Toto-Maite', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1476, N'Santa Rita', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1477, N'Sinajana', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1478, N'Talofofo', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1479, N'Tamuning', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1480, N'Yigo', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1481, N'Yona', 89)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1482, N'Alta Verapaz', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1483, N'Baja Verapaz', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1484, N'Chimaltenango', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1485, N'Chiquimula', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1486, N'El Progreso', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1487, N'Escuintla', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1488, N'Guatemala', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1489, N'Huehuetenango', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1490, N'Izabal', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1491, N'Jalapa', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1492, N'Jutiapa', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1493, N'Peten', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1494, N'Quezaltenango', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1495, N'Quiche', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1496, N'Retalhuleu', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1497, N'Sacatepequez', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1498, N'San Marcos', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1499, N'Santa Rosa', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1500, N'Solola', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1501, N'Suchitepequez', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1502, N'Totonicapan', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1503, N'Zacapa', 90)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1504, N'Alderney', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1505, N'Castel', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1506, N'Forest', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1507, N'Saint Andrew', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1508, N'Saint Martin', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1509, N'Saint Peter Port', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1510, N'Saint Pierre du Bois', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1511, N'Saint Sampson', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1512, N'Saint Saviour', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1513, N'Sark', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1514, N'Torteval', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1515, N'Vale', 91)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1516, N'Beyla', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1517, N'Boffa', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1518, N'Boke', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1519, N'Conakry', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1520, N'Coyah', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1521, N'Dabola', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1522, N'Dalaba', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1523, N'Dinguiraye', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1524, N'Faranah', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1525, N'Forecariah', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1526, N'Fria', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1527, N'Gaoual', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1528, N'Gueckedou', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1529, N'Kankan', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1530, N'Kerouane', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1531, N'Kindia', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1532, N'Kissidougou', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1533, N'Koubia', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1534, N'Koundara', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1535, N'Kouroussa', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1536, N'Labe', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1537, N'Lola', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1538, N'Macenta', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1539, N'Mali', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1540, N'Mamou', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1541, N'Mandiana', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1542, N'Nzerekore', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1543, N'Pita', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1544, N'Siguiri', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1545, N'Telimele', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1546, N'Tougue', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1547, N'Yomou', 92)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1548, N'Bafata', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1549, N'Bissau', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1550, N'Bolama', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1551, N'Cacheu', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1552, N'Gabu', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1553, N'Oio', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1554, N'Quinara', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1555, N'Tombali', 93)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1556, N'Barima-Waini', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1557, N'Cuyuni-Mazaruni', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1558, N'Demerara-Mahaica', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1559, N'East Berbice-Corentyne', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1560, N'Essequibo Islands-West Demerar', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1561, N'Mahaica-Berbice', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1562, N'Pomeroon-Supenaam', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1563, N'Potaro-Siparuni', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1564, N'Upper Demerara-Berbice', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1565, N'Upper Takutu-Upper Essequibo', 94)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1566, N'Artibonite', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1567, N'Centre', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1568, N'Grand''Anse', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1569, N'Nord', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1570, N'Nord-Est', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1571, N'Nord-Ouest', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1572, N'Ouest', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1573, N'Sud', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1574, N'Sud-Est', 95)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1575, N'Heard and McDonald Islands', 96)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1576, N'Atlantida', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1577, N'Choluteca', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1578, N'Colon', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1579, N'Comayagua', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1580, N'Copan', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1581, N'Cortes', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1582, N'Distrito Central', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1583, N'El Paraiso', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1584, N'Francisco Morazan', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1585, N'Gracias a Dios', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1586, N'Intibuca', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1587, N'Islas de la Bahia', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1588, N'La Paz', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1589, N'Lempira', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1590, N'Ocotepeque', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1591, N'Olancho', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1592, N'Santa Barbara', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1593, N'Valle', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1594, N'Yoro', 97)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1595, N'Hong Kong', 98)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1596, N'Bacs-Kiskun', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1597, N'Baranya', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1598, N'Bekes', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1599, N'Borsod-Abauj-Zemplen', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1600, N'Budapest', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1601, N'Csongrad', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1602, N'Fejer', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1603, N'Gyor-Moson-Sopron', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1604, N'Hajdu-Bihar', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1605, N'Heves', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1606, N'Jasz-Nagykun-Szolnok', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1607, N'Komarom-Esztergom', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1608, N'Nograd', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1609, N'Pest', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1610, N'Somogy', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1611, N'Szabolcs-Szatmar-Bereg', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1612, N'Tolna', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1613, N'Vas', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1614, N'Veszprem', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1615, N'Zala', 99)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1616, N'Austurland', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1617, N'Gullbringusysla', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1618, N'Hofu borgarsva i', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1619, N'Nor urland eystra', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1620, N'Nor urland vestra', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1621, N'Su urland', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1622, N'Su urnes', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1623, N'Vestfir ir', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1624, N'Vesturland', 100)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1625, N'Andaman and Nicobar Islands', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1626, N'Andhra Pradesh', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1627, N'Arunachal Pradesh', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1628, N'Assam', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1629, N'Bihar', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1630, N'Chandigarh', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1631, N'Chhattisgarh', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1632, N'Dadra and Nagar Haveli', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1633, N'Daman and Diu', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1634, N'Delhi', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1635, N'Goa', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1636, N'Gujarat', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1637, N'Haryana', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1638, N'Himachal Pradesh', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1639, N'Jammu and Kashmir', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1640, N'Jharkhand', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1641, N'Karnataka', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1642, N'Kenmore', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1643, N'Kerala', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1644, N'Lakshadweep', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1645, N'Madhya Pradesh', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1646, N'Maharashtra', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1647, N'Manipur', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1648, N'Meghalaya', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1649, N'Mizoram', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1650, N'Nagaland', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1651, N'Narora', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1652, N'Natwar', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1653, N'Odisha', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1654, N'Paschim Medinipur', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1655, N'Pondicherry', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1656, N'Punjab', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1657, N'Rajasthan', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1658, N'Sikkim', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1659, N'Tamil Nadu', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1660, N'Telangana', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1661, N'Tripura', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1662, N'Uttar Pradesh', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1663, N'Uttarakhand', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1664, N'Vaishali', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1665, N'West Bengal', 101)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1666, N'Aceh', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1667, N'Bali', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1668, N'Bangka-Belitung', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1669, N'Banten', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1670, N'Bengkulu', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1671, N'Gandaria', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1672, N'Gorontalo', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1673, N'Jakarta', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1674, N'Jambi', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1675, N'Jawa Barat', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1676, N'Jawa Tengah', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1677, N'Jawa Timur', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1678, N'Kalimantan Barat', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1679, N'Kalimantan Selatan', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1680, N'Kalimantan Tengah', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1681, N'Kalimantan Timur', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1682, N'Kendal', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1683, N'Lampung', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1684, N'Maluku', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1685, N'Maluku Utara', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1686, N'Nusa Tenggara Barat', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1687, N'Nusa Tenggara Timur', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1688, N'Papua', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1689, N'Riau', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1690, N'Riau Kepulauan', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1691, N'Solo', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1692, N'Sulawesi Selatan', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1693, N'Sulawesi Tengah', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1694, N'Sulawesi Tenggara', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1695, N'Sulawesi Utara', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1696, N'Sumatera Barat', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1697, N'Sumatera Selatan', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1698, N'Sumatera Utara', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1699, N'Yogyakarta', 102)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1700, N'Ardabil', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1701, N'Azarbayjan-e Bakhtari', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1702, N'Azarbayjan-e Khavari', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1703, N'Bushehr', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1704, N'Chahar Mahal-e Bakhtiari', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1705, N'Esfahan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1706, N'Fars', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1707, N'Gilan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1708, N'Golestan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1709, N'Hamadan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1710, N'Hormozgan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1711, N'Ilam', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1712, N'Kerman', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1713, N'Kermanshah', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1714, N'Khorasan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1715, N'Khuzestan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1716, N'Kohgiluyeh-e Boyerahmad', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1717, N'Kordestan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1718, N'Lorestan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1719, N'Markazi', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1720, N'Mazandaran', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1721, N'Ostan-e Esfahan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1722, N'Qazvin', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1723, N'Qom', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1724, N'Semnan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1725, N'Sistan-e Baluchestan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1726, N'Tehran', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1727, N'Yazd', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1728, N'Zanjan', 103)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1729, N'al-Anbar', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1730, N'al-Basrah', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1731, N'al-Muthanna', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1732, N'al-Qadisiyah', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1733, N'an-Najaf', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1734, N'as-Sulaymaniyah', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1735, N'at-Ta''mim', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1736, N'Babil', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1737, N'Baghdad', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1738, N'Dahuk', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1739, N'Dhi Qar', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1740, N'Diyala', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1741, N'Erbil', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1742, N'Irbil', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1743, N'Karbala', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1744, N'Kurdistan', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1745, N'Maysan', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1746, N'Ninawa', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1747, N'Salah-ad-Din', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1748, N'Wasit', 104)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1749, N'Armagh', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1750, N'Carlow', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1751, N'Cavan', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1752, N'Clare', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1753, N'Cork', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1754, N'Donegal', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1755, N'Dublin', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1756, N'Galway', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1757, N'Kerry', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1758, N'Kildare', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1759, N'Kilkenny', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1760, N'Laois', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1761, N'Leinster', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1762, N'Leitrim', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1763, N'Limerick', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1764, N'Loch Garman', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1765, N'Longford', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1766, N'Louth', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1767, N'Mayo', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1768, N'Meath', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1769, N'Monaghan', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1770, N'Offaly', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1771, N'Roscommon', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1772, N'Sligo', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1773, N'Tipperary North Riding', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1774, N'Tipperary South Riding', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1775, N'Ulster', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1776, N'Waterford', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1777, N'Westmeath', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1778, N'Wexford', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1779, N'Wicklow', 105)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1780, N'Beit Hanania', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1781, N'Ben Gurion Airport', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1782, N'Bethlehem', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1783, N'Caesarea', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1784, N'Centre', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1785, N'Gaza', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1786, N'Hadaron', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1787, N'Haifa District', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1788, N'Hamerkaz', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1789, N'Hazafon', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1790, N'Hebron', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1791, N'Jaffa', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1792, N'Jerusalem', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1793, N'Khefa', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1794, N'Kiryat Yam', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1795, N'Lower Galilee', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1796, N'Qalqilya', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1797, N'Talme Elazar', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1798, N'Tel Aviv', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1799, N'Tsafon', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1800, N'Umm El Fahem', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1801, N'Yerushalayim', 106)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1802, N'Abruzzi', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1803, N'Abruzzo', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1804, N'Agrigento', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1805, N'Alessandria', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1806, N'Ancona', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1807, N'Arezzo', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1808, N'Ascoli Piceno', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1809, N'Asti', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1810, N'Avellino', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1811, N'Bari', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1812, N'Basilicata', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1813, N'Belluno', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1814, N'Benevento', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1815, N'Bergamo', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1816, N'Biella', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1817, N'Bologna', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1818, N'Bolzano', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1819, N'Brescia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1820, N'Brindisi', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1821, N'Calabria', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1822, N'Campania', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1823, N'Cartoceto', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1824, N'Caserta', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1825, N'Catania', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1826, N'Chieti', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1827, N'Como', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1828, N'Cosenza', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1829, N'Cremona', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1830, N'Cuneo', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1831, N'Emilia-Romagna', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1832, N'Ferrara', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1833, N'Firenze', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1834, N'Florence', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1835, N'Forli-Cesena ', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1836, N'Friuli-Venezia Giulia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1837, N'Frosinone', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1838, N'Genoa', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1839, N'Gorizia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1840, N'L''Aquila', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1841, N'Lazio', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1842, N'Lecce', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1843, N'Lecco', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1844, N'Lecco Province', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1845, N'Liguria', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1846, N'Lodi', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1847, N'Lombardia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1848, N'Lombardy', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1849, N'Macerata', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1850, N'Mantova', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1851, N'Marche', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1852, N'Messina', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1853, N'Milan', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1854, N'Modena', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1855, N'Molise', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1856, N'Molteno', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1857, N'Montenegro', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1858, N'Monza and Brianza', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1859, N'Naples', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1860, N'Novara', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1861, N'Padova', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1862, N'Parma', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1863, N'Pavia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1864, N'Perugia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1865, N'Pesaro-Urbino', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1866, N'Piacenza', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1867, N'Piedmont', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1868, N'Piemonte', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1869, N'Pisa', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1870, N'Pordenone', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1871, N'Potenza', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1872, N'Puglia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1873, N'Reggio Emilia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1874, N'Rimini', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1875, N'Roma', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1876, N'Salerno', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1877, N'Sardegna', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1878, N'Sassari', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1879, N'Savona', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1880, N'Sicilia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1881, N'Siena', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1882, N'Sondrio', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1883, N'South Tyrol', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1884, N'Taranto', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1885, N'Teramo', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1886, N'Torino', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1887, N'Toscana', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1888, N'Trapani', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1889, N'Trentino-Alto Adige', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1890, N'Trento', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1891, N'Treviso', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1892, N'Udine', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1893, N'Umbria', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1894, N'Valle d''Aosta', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1895, N'Varese', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1896, N'Veneto', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1897, N'Venezia', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1898, N'Verbano-Cusio-Ossola', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1899, N'Vercelli', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1900, N'Verona', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1901, N'Vicenza', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1902, N'Viterbo', 107)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1903, N'Buxoro Viloyati', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1904, N'Clarendon', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1905, N'Hanover', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1906, N'Kingston', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1907, N'Manchester', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1908, N'Portland', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1909, N'Saint Andrews', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1910, N'Saint Ann', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1911, N'Saint Catherine', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1912, N'Saint Elizabeth', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1913, N'Saint James', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1914, N'Saint Mary', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1915, N'Saint Thomas', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1916, N'Trelawney', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1917, N'Westmoreland', 108)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1918, N'Aichi', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1919, N'Akita', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1920, N'Aomori', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1921, N'Chiba', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1922, N'Ehime', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1923, N'Fukui', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1924, N'Fukuoka', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1925, N'Fukushima', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1926, N'Gifu', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1927, N'Gumma', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1928, N'Hiroshima', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1929, N'Hokkaido', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1930, N'Hyogo', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1931, N'Ibaraki', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1932, N'Ishikawa', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1933, N'Iwate', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1934, N'Kagawa', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1935, N'Kagoshima', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1936, N'Kanagawa', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1937, N'Kanto', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1938, N'Kochi', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1939, N'Kumamoto', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1940, N'Kyoto', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1941, N'Mie', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1942, N'Miyagi', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1943, N'Miyazaki', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1944, N'Nagano', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1945, N'Nagasaki', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1946, N'Nara', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1947, N'Niigata', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1948, N'Oita', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1949, N'Okayama', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1950, N'Okinawa', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1951, N'Osaka', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1952, N'Saga', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1953, N'Saitama', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1954, N'Shiga', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1955, N'Shimane', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1956, N'Shizuoka', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1957, N'Tochigi', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1958, N'Tokushima', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1959, N'Tokyo', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1960, N'Tottori', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1961, N'Toyama', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1962, N'Wakayama', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1963, N'Yamagata', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1964, N'Yamaguchi', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1965, N'Yamanashi', 109)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1966, N'Grouville', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1967, N'Saint Brelade', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1968, N'Saint Clement', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1969, N'Saint Helier', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1970, N'Saint John', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1971, N'Saint Lawrence', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1972, N'Saint Martin', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1973, N'Saint Mary', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1974, N'Saint Peter', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1975, N'Saint Saviour', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1976, N'Trinity', 110)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1977, N'''Ajlun', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1978, N'al-''Aqabah', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1979, N'al-Balqa''', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1980, N'al-Karak', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1981, N'al-Mafraq', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1982, N'Amman', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1983, N'at-Tafilah', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1984, N'az-Zarqa''', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1985, N'Irbid', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1986, N'Jarash', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1987, N'Ma''an', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1988, N'Madaba', 111)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1989, N'Akmecet', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1990, N'Akmola', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1991, N'Aktobe', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1992, N'Almati', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1993, N'Atirau', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1994, N'Batis Kazakstan', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1995, N'Burlinsky Region', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1996, N'Karagandi', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1997, N'Kostanay', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1998, N'Mankistau', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (1999, N'Ontustik Kazakstan', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2000, N'Pavlodar', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2001, N'Sigis Kazakstan', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2002, N'Soltustik Kazakstan', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2003, N'Taraz', 112)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2004, N'Central', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2005, N'Coast', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2006, N'Eastern', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2007, N'Nairobi', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2008, N'North Eastern', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2009, N'Nyanza', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2010, N'Rift Valley', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2011, N'Western', 113)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2012, N'Abaiang', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2013, N'Abemana', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2014, N'Aranuka', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2015, N'Arorae', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2016, N'Banaba', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2017, N'Beru', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2018, N'Butaritari', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2019, N'Kiritimati', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2020, N'Kuria', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2021, N'Maiana', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2022, N'Makin', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2023, N'Marakei', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2024, N'Nikunau', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2025, N'Nonouti', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2026, N'Onotoa', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2027, N'Phoenix Islands', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2028, N'Tabiteuea North', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2029, N'Tabiteuea South', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2030, N'Tabuaeran', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2031, N'Tamana', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2032, N'Tarawa North', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2033, N'Tarawa South', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2034, N'Teraina', 114)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2035, N'Chagangdo', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2036, N'Hamgyeongbukto', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2037, N'Hamgyeongnamdo', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2038, N'Hwanghaebukto', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2039, N'Hwanghaenamdo', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2040, N'Kaeseong', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2041, N'Kangweon', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2042, N'Nampo', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2043, N'Pyeonganbukto', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2044, N'Pyeongannamdo', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2045, N'Pyeongyang', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2046, N'Yanggang', 115)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2047, N'Busan', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2048, N'Cheju', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2049, N'Chollabuk', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2050, N'Chollanam', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2051, N'Chungbuk', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2052, N'Chungcheongbuk', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2053, N'Chungcheongnam', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2054, N'Chungnam', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2055, N'Daegu', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2056, N'Gangwon-do', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2057, N'Goyang-si', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2058, N'gwangyoksi', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2059, N'Gyeonggi-do', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2060, N'Gyeongsang ', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2061, N'Gyeongsangnam-do', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2062, N'Incheon', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2063, N'Jeju-Si', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2064, N'Jeonbuk', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2065, N'Kangweon', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2066, N'Kwangju', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2067, N'Kyeonggi', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2068, N'Kyeongsangbuk', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2069, N'Kyeongsangnam', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2070, N'Kyonggi-do', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2071, N'Kyungbuk-Do', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2072, N'Kyunggi-Do', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2073, N'Kyunggi-do', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2074, N'Pusan', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2075, N'Seoul', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2076, N'Sudogwon', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2077, N'Taegu', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2078, N'Taejeon', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2079, N'Taejon-gwangyoksi', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2080, N'Ulsan', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2081, N'Wonju', 116)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2082, N'Al Asimah', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2083, N'al-Ahmadi', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2084, N'al-Farwaniyah', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2085, N'al-Jahra', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2086, N'al-Kuwayt', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2087, N'Hawalli', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2088, N'Mishref', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2089, N'Qadesiya', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2090, N'Safat', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2091, N'Salmiya', 117)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2092, N'Batken', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2093, N'Bishkek', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2094, N'Chui', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2095, N'Issyk-Kul', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2096, N'Jalal-Abad', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2097, N'Naryn', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2098, N'Osh', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2099, N'Talas', 118)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2100, N'Attopu', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2101, N'Bokeo', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2102, N'Bolikhamsay', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2103, N'Champasak', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2104, N'Houaphanh', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2105, N'Khammouane', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2106, N'Luang Nam Tha', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2107, N'Luang Prabang', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2108, N'Oudomxay', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2109, N'Phongsaly', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2110, N'Saravan', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2111, N'Savannakhet', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2112, N'Sekong', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2113, N'Viangchan Prefecture', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2114, N'Viangchan Province', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2115, N'Xaignabury', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2116, N'Xiang Khuang', 119)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2117, N'Aizkraukles', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2118, N'Aluksnes', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2119, N'Balvu', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2120, N'Bauskas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2121, N'Cesu', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2122, N'Daugavpils', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2123, N'Daugavpils City', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2124, N'Dobeles', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2125, N'Gulbenes', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2126, N'Jekabspils', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2127, N'Jelgava', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2128, N'Jelgavas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2129, N'Jurmala City', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2130, N'Kraslavas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2131, N'Kuldigas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2132, N'Liepaja', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2133, N'Liepajas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2134, N'Limbazhu', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2135, N'Ludzas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2136, N'Madonas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2137, N'Ogres', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2138, N'Preilu', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2139, N'Rezekne', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2140, N'Rezeknes', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2141, N'Riga', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2142, N'Rigas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2143, N'Saldus', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2144, N'Talsu', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2145, N'Tukuma', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2146, N'Valkas', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2147, N'Valmieras', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2148, N'Ventspils', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2149, N'Ventspils City', 120)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2150, N'al-Biqa', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2151, N'al-Janub', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2152, N'an-Nabatiyah', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2153, N'ash-Shamal', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2154, N'Beirut', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2155, N'Jabal Lubnan', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2156, N'Mohafazat Liban-Nord', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2157, N'Mohafazat Mont-Liban', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2158, N'Sidon', 121)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2159, N'Berea', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2160, N'Butha-Buthe', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2161, N'Leribe', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2162, N'Mafeteng', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2163, N'Maseru', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2164, N'Mohale''s Hoek', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2165, N'Mokhotlong', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2166, N'Qacha''s Nek', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2167, N'Quthing', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2168, N'Thaba-Tseka', 122)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2169, N'Bomi', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2170, N'Bong', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2171, N'Grand Bassa', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2172, N'Grand Cape Mount', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2173, N'Grand Gedeh', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2174, N'Loffa', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2175, N'Margibi', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2176, N'Maryland and Grand Kru', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2177, N'Montserrado', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2178, N'Nimba', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2179, N'Rivercess', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2180, N'Sinoe', 123)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2181, N'Ajdabiya', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2182, N'al-''Aziziyah', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2183, N'al-Fatih', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2184, N'al-Jabal al Akhdar', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2185, N'al-Jufrah', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2186, N'al-Khums', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2187, N'al-Kufrah', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2188, N'an-Nuqat al-Khams', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2189, N'ash-Shati''', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2190, N'az-Zawiyah', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2191, N'Banghazi', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2192, N'Darnah', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2193, N'Ghadamis', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2194, N'Gharyan', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2195, N'Misratah', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2196, N'Murzuq', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2197, N'Sabha', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2198, N'Sawfajjin', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2199, N'Surt', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2200, N'Tarabulus', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2201, N'Tarhunah', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2202, N'Tripolitania', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2203, N'Tubruq', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2204, N'Yafran', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2205, N'Zlitan', 124)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2206, N'Balzers', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2207, N'Eschen', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2208, N'Gamprin', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2209, N'Mauren', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2210, N'Planken', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2211, N'Ruggell', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2212, N'Schaan', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2213, N'Schellenberg', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2214, N'Triesen', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2215, N'Triesenberg', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2216, N'Vaduz', 125)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2217, N'Alytaus', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2218, N'Anyksciai', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2219, N'Kauno', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2220, N'Klaipedos', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2221, N'Marijampoles', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2222, N'Panevezhio', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2223, N'Panevezys', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2224, N'Shiauliu', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2225, N'Taurages', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2226, N'Telshiu', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2227, N'Telsiai', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2228, N'Utenos', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2229, N'Vilniaus', 126)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2230, N'Capellen', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2231, N'Clervaux', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2232, N'Diekirch', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2233, N'Echternach', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2234, N'Esch-sur-Alzette', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2235, N'Grevenmacher', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2236, N'Luxembourg', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2237, N'Mersch', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2238, N'Redange', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2239, N'Remich', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2240, N'Vianden', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2241, N'Wiltz', 127)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2242, N'Macau', 128)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2243, N'Berovo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2244, N'Bitola', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2245, N'Brod', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2246, N'Debar', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2247, N'Delchevo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2248, N'Demir Hisar', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2249, N'Gevgelija', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2250, N'Gostivar', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2251, N'Kavadarci', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2252, N'Kichevo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2253, N'Kochani', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2254, N'Kratovo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2255, N'Kriva Palanka', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2256, N'Krushevo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2257, N'Kumanovo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2258, N'Negotino', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2259, N'Ohrid', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2260, N'Prilep', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2261, N'Probishtip', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2262, N'Radovish', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2263, N'Resen', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2264, N'Shtip', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2265, N'Skopje', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2266, N'Struga', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2267, N'Strumica', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2268, N'Sveti Nikole', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2269, N'Tetovo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2270, N'Valandovo', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2271, N'Veles', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2272, N'Vinica', 129)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2273, N'Antananarivo', 130)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2274, N'Antsiranana', 130)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2275, N'Fianarantsoa', 130)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2276, N'Mahajanga', 130)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2277, N'Toamasina', 130)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2278, N'Toliary', 130)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2279, N'Balaka', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2280, N'Blantyre City', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2281, N'Chikwawa', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2282, N'Chiradzulu', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2283, N'Chitipa', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2284, N'Dedza', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2285, N'Dowa', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2286, N'Karonga', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2287, N'Kasungu', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2288, N'Lilongwe City', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2289, N'Machinga', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2290, N'Mangochi', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2291, N'Mchinji', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2292, N'Mulanje', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2293, N'Mwanza', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2294, N'Mzimba', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2295, N'Mzuzu City', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2296, N'Nkhata Bay', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2297, N'Nkhotakota', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2298, N'Nsanje', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2299, N'Ntcheu', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2300, N'Ntchisi', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2301, N'Phalombe', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2302, N'Rumphi', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2303, N'Salima', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2304, N'Thyolo', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2305, N'Zomba Municipality', 131)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2306, N'Johor', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2307, N'Kedah', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2308, N'Kelantan', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2309, N'Kuala Lumpur', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2310, N'Labuan', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2311, N'Melaka', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2312, N'Negeri Johor', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2313, N'Negeri Sembilan', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2314, N'Pahang', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2315, N'Penang', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2316, N'Perak', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2317, N'Perlis', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2318, N'Pulau Pinang', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2319, N'Sabah', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2320, N'Sarawak', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2321, N'Selangor', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2322, N'Sembilan', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2323, N'Terengganu', 132)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2324, N'Alif Alif', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2325, N'Alif Dhaal', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2326, N'Baa', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2327, N'Dhaal', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2328, N'Faaf', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2329, N'Gaaf Alif', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2330, N'Gaaf Dhaal', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2331, N'Ghaviyani', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2332, N'Haa Alif', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2333, N'Haa Dhaal', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2334, N'Kaaf', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2335, N'Laam', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2336, N'Lhaviyani', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2337, N'Male', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2338, N'Miim', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2339, N'Nuun', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2340, N'Raa', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2341, N'Shaviyani', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2342, N'Siin', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2343, N'Thaa', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2344, N'Vaav', 133)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2345, N'Bamako', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2346, N'Gao', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2347, N'Kayes', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2348, N'Kidal', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2349, N'Koulikoro', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2350, N'Mopti', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2351, N'Segou', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2352, N'Sikasso', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2353, N'Tombouctou', 134)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2354, N'Gozo and Comino', 135)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2355, N'Inner Harbour', 135)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2356, N'Northern', 135)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2357, N'Outer Harbour', 135)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2358, N'South Eastern', 135)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2359, N'Valletta', 135)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2360, N'Western', 135)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2361, N'Castletown', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2362, N'Douglas', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2363, N'Laxey', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2364, N'Onchan', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2365, N'Peel', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2366, N'Port Erin', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2367, N'Port Saint Mary', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2368, N'Ramsey', 136)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2369, N'Ailinlaplap', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2370, N'Ailuk', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2371, N'Arno', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2372, N'Aur', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2373, N'Bikini', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2374, N'Ebon', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2375, N'Enewetak', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2376, N'Jabat', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2377, N'Jaluit', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2378, N'Kili', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2379, N'Kwajalein', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2380, N'Lae', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2381, N'Lib', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2382, N'Likiep', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2383, N'Majuro', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2384, N'Maloelap', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2385, N'Mejit', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2386, N'Mili', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2387, N'Namorik', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2388, N'Namu', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2389, N'Rongelap', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2390, N'Ujae', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2391, N'Utrik', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2392, N'Wotho', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2393, N'Wotje', 137)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2394, N'Fort-de-France', 138)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2395, N'La Trinite', 138)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2396, N'Le Marin', 138)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2397, N'Saint-Pierre', 138)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2398, N'Adrar', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2399, N'Assaba', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2400, N'Brakna', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2401, N'Dhakhlat Nawadibu', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2402, N'Hudh-al-Gharbi', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2403, N'Hudh-ash-Sharqi', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2404, N'Inshiri', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2405, N'Nawakshut', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2406, N'Qidimagha', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2407, N'Qurqul', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2408, N'Taqant', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2409, N'Tiris Zammur', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2410, N'Trarza', 139)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2411, N'Black River', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2412, N'Eau Coulee', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2413, N'Flacq', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2414, N'Floreal', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2415, N'Grand Port', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2416, N'Moka', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2417, N'Pamplempousses', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2418, N'Plaines Wilhelm', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2419, N'Port Louis', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2420, N'Riviere du Rempart', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2421, N'Rodrigues', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2422, N'Rose Hill', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2423, N'Savanne', 140)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2424, N'Mayotte', 141)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2425, N'Pamanzi', 141)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2426, N'Aguascalientes', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2427, N'Baja California', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2428, N'Baja California Sur', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2429, N'Campeche', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2430, N'Chiapas', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2431, N'Chihuahua', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2432, N'Coahuila', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2433, N'Colima', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2434, N'Distrito Federal', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2435, N'Durango', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2436, N'Estado de Mexico', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2437, N'Guanajuato', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2438, N'Guerrero', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2439, N'Hidalgo', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2440, N'Jalisco', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2441, N'Mexico', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2442, N'Michoacan', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2443, N'Morelos', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2444, N'Nayarit', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2445, N'Nuevo Leon', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2446, N'Oaxaca', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2447, N'Puebla', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2448, N'Queretaro', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2449, N'Quintana Roo', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2450, N'San Luis Potosi', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2451, N'Sinaloa', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2452, N'Sonora', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2453, N'Tabasco', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2454, N'Tamaulipas', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2455, N'Tlaxcala', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2456, N'Veracruz', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2457, N'Yucatan', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2458, N'Zacatecas', 142)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2459, N'Chuuk', 143)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2460, N'Kusaie', 143)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2461, N'Pohnpei', 143)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2462, N'Yap', 143)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2463, N'Balti', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2464, N'Cahul', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2465, N'Chisinau', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2466, N'Chisinau Oras', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2467, N'Edinet', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2468, N'Gagauzia', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2469, N'Lapusna', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2470, N'Orhei', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2471, N'Soroca', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2472, N'Taraclia', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2473, N'Tighina', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2474, N'Transnistria', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2475, N'Ungheni', 144)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2476, N'Fontvieille', 145)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2477, N'La Condamine', 145)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2478, N'Monaco-Ville', 145)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2479, N'Monte Carlo', 145)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2480, N'Arhangaj', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2481, N'Bajanhongor', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2482, N'Bajan-Olgij', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2483, N'Bulgan', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2484, N'Darhan-Uul', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2485, N'Dornod', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2486, N'Dornogovi', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2487, N'Dundgovi', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2488, N'Govi-Altaj', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2489, N'Govisumber', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2490, N'Hentij', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2491, N'Hovd', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2492, N'Hovsgol', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2493, N'Omnogovi', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2494, N'Orhon', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2495, N'Ovorhangaj', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2496, N'Selenge', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2497, N'Suhbaatar', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2498, N'Tov', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2499, N'Ulaanbaatar', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2500, N'Uvs', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2501, N'Zavhan', 146)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2502, N'Montserrat', 147)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2503, N'Agadir', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2504, N'Casablanca', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2505, N'Chaouia-Ouardigha', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2506, N'Doukkala-Abda', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2507, N'Fes-Boulemane', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2508, N'Gharb-Chrarda-Beni Hssen', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2509, N'Guelmim', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2510, N'Kenitra', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2511, N'Marrakech-Tensift-Al Haouz', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2512, N'Meknes-Tafilalet', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2513, N'Oriental', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2514, N'Oujda', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2515, N'Province de Tanger', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2516, N'Rabat-Sale-Zammour-Zaer', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2517, N'Sala Al Jadida', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2518, N'Settat', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2519, N'Souss Massa-Draa', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2520, N'Tadla-Azilal', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2521, N'Tangier-Tetouan', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2522, N'Taza-Al Hoceima-Taounate', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2523, N'Wilaya de Casablanca', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2524, N'Wilaya de Rabat-Sale', 148)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2525, N'Cabo Delgado', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2526, N'Gaza', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2527, N'Inhambane', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2528, N'Manica', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2529, N'Maputo', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2530, N'Maputo Provincia', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2531, N'Nampula', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2532, N'Niassa', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2533, N'Sofala', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2534, N'Tete', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2535, N'Zambezia', 149)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2536, N'Ayeyarwady', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2537, N'Bago', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2538, N'Chin', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2539, N'Kachin', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2540, N'Kayah', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2541, N'Kayin', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2542, N'Magway', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2543, N'Mandalay', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2544, N'Mon', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2545, N'Nay Pyi Taw', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2546, N'Rakhine', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2547, N'Sagaing', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2548, N'Shan', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2549, N'Tanintharyi', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2550, N'Yangon', 150)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2551, N'Caprivi', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2552, N'Erongo', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2553, N'Hardap', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2554, N'Karas', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2555, N'Kavango', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2556, N'Khomas', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2557, N'Kunene', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2558, N'Ohangwena', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2559, N'Omaheke', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2560, N'Omusati', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2561, N'Oshana', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2562, N'Oshikoto', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2563, N'Otjozondjupa', 151)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2564, N'Yaren', 152)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2565, N'Bagmati', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2566, N'Bheri', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2567, N'Dhawalagiri', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2568, N'Gandaki', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2569, N'Janakpur', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2570, N'Karnali', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2571, N'Koshi', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2572, N'Lumbini', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2573, N'Mahakali', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2574, N'Mechi', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2575, N'Narayani', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2576, N'Rapti', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2577, N'Sagarmatha', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2578, N'Seti', 153)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2579, N'Bonaire', 154)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2580, N'Curacao', 154)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2581, N'Saba', 154)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2582, N'Sint Eustatius', 154)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2583, N'Sint Maarten', 154)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2584, N'Amsterdam', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2585, N'Benelux', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2586, N'Drenthe', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2587, N'Flevoland', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2588, N'Friesland', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2589, N'Gelderland', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2590, N'Groningen', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2591, N'Limburg', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2592, N'Noord-Brabant', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2593, N'Noord-Holland', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2594, N'Overijssel', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2595, N'South Holland', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2596, N'Utrecht', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2597, N'Zeeland', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2598, N'Zuid-Holland', 155)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2599, N'Iles', 156)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2600, N'Nord', 156)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2601, N'Sud', 156)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2602, N'Area Outside Region', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2603, N'Auckland', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2604, N'Bay of Plenty', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2605, N'Canterbury', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2606, N'Christchurch', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2607, N'Gisborne', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2608, N'Hawke''s Bay', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2609, N'Manawatu-Wanganui', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2610, N'Marlborough', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2611, N'Nelson', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2612, N'Northland', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2613, N'Otago', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2614, N'Rodney', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2615, N'Southland', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2616, N'Taranaki', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2617, N'Tasman', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2618, N'Waikato', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2619, N'Wellington', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2620, N'West Coast', 157)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2621, N'Atlantico Norte', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2622, N'Atlantico Sur', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2623, N'Boaco', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2624, N'Carazo', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2625, N'Chinandega', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2626, N'Chontales', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2627, N'Esteli', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2628, N'Granada', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2629, N'Jinotega', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2630, N'Leon', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2631, N'Madriz', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2632, N'Managua', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2633, N'Masaya', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2634, N'Matagalpa', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2635, N'Nueva Segovia', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2636, N'Rio San Juan', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2637, N'Rivas', 158)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2638, N'Agadez', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2639, N'Diffa', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2640, N'Dosso', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2641, N'Maradi', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2642, N'Niamey', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2643, N'Tahoua', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2644, N'Tillabery', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2645, N'Zinder', 159)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2646, N'Abia', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2647, N'Abuja Federal Capital Territor', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2648, N'Adamawa', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2649, N'Akwa Ibom', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2650, N'Anambra', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2651, N'Bauchi', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2652, N'Bayelsa', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2653, N'Benue', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2654, N'Borno', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2655, N'Cross River', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2656, N'Delta', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2657, N'Ebonyi', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2658, N'Edo', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2659, N'Ekiti', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2660, N'Enugu', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2661, N'Gombe', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2662, N'Imo', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2663, N'Jigawa', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2664, N'Kaduna', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2665, N'Kano', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2666, N'Katsina', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2667, N'Kebbi', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2668, N'Kogi', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2669, N'Kwara', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2670, N'Lagos', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2671, N'Nassarawa', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2672, N'Niger', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2673, N'Ogun', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2674, N'Ondo', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2675, N'Osun', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2676, N'Oyo', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2677, N'Plateau', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2678, N'Rivers', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2679, N'Sokoto', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2680, N'Taraba', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2681, N'Yobe', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2682, N'Zamfara', 160)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2683, N'Niue', 161)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2684, N'Norfolk Island', 162)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2685, N'Northern Islands', 163)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2686, N'Rota', 163)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2687, N'Saipan', 163)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2688, N'Tinian', 163)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2689, N'ÃƒÂ˜stfold', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2690, N'Akershus', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2691, N'Aust Agder', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2692, N'Bergen', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2693, N'Buskerud', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2694, N'Finnmark', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2695, N'Hedmark', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2696, N'Hordaland', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2697, N'Moere og Romsdal', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2698, N'Nord Trondelag', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2699, N'Nordland', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2700, N'Oestfold', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2701, N'Oppland', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2702, N'Oslo', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2703, N'Rogaland', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2704, N'Soer Troendelag', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2705, N'Sogn og Fjordane', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2706, N'Stavern', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2707, N'Sykkylven', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2708, N'Telemark', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2709, N'Troms', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2710, N'Vest Agder', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2711, N'Vestfold', 164)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2712, N'ad-Dakhiliyah', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2713, N'adh-Dhahirah', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2714, N'Al Buraimi', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2715, N'al-Batinah', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2716, N'ash-Sharqiyah', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2717, N'Dhufar', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2718, N'Masqat', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2719, N'Musandam', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2720, N'Rusayl', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2721, N'Wadi Kabir', 165)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2722, N'Baluchistan', 166)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2723, N'Federal Capital Area', 166)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2724, N'Federally administered Tribal ', 166)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2725, N'Northern Areas', 166)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2726, N'North-West Frontier', 166)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2727, N'Punjab', 166)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2728, N'Sind', 166)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2729, N'Aimeliik', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2730, N'Airai', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2731, N'Angaur', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2732, N'Hatobohei', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2733, N'Kayangel', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2734, N'Koror', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2735, N'Melekeok', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2736, N'Ngaraard', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2737, N'Ngardmau', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2738, N'Ngaremlengui', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2739, N'Ngatpang', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2740, N'Ngchesar', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2741, N'Ngerchelong', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2742, N'Ngiwal', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2743, N'Peleliu', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2744, N'Sonsorol', 167)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2745, N'al-Khalil', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2746, N'al-Quds', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2747, N'Ariha', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2748, N'Bayt Lahm', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2749, N'Bethlehem', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2750, N'Dayr-al-Balah', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2751, N'Ghazzah', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2752, N'Ghazzah ash-Shamaliyah', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2753, N'Janin', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2754, N'Khan Yunis', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2755, N'Nabulus', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2756, N'Qalqilyah', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2757, N'Rafah', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2758, N'Ram Allah wal-Birah', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2759, N'Salfit', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2760, N'Tubas', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2761, N'Tulkarm', 168)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2762, N'Bocas del Toro', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2763, N'Chiriqui', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2764, N'Cocle', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2765, N'Colon', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2766, N'Darien', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2767, N'Embera', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2768, N'Herrera', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2769, N'Kuna Yala', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2770, N'Los Santos', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2771, N'Ngobe Bugle', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2772, N'Panama', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2773, N'Veraguas', 169)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2774, N'East New Britain', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2775, N'East Sepik', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2776, N'Eastern Highlands', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2777, N'Enga', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2778, N'Fly River', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2779, N'Gulf', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2780, N'Madang', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2781, N'Manus', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2782, N'Milne Bay', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2783, N'Morobe', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2784, N'National Capital District', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2785, N'New Ireland', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2786, N'North Solomons', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2787, N'Oro', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2788, N'Sandaun', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2789, N'Simbu', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2790, N'Southern Highlands', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2791, N'West New Britain', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2792, N'Western Highlands', 170)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2793, N'Alto Paraguay', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2794, N'Alto Parana', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2795, N'Amambay', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2796, N'Asuncion', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2797, N'Boqueron', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2798, N'Caaguazu', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2799, N'Caazapa', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2800, N'Canendiyu', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2801, N'Central', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2802, N'Concepcion', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2803, N'Cordillera', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2804, N'Guaira', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2805, N'Itapua', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2806, N'Misiones', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2807, N'Neembucu', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2808, N'Paraguari', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2809, N'Presidente Hayes', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2810, N'San Pedro', 171)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2811, N'Amazonas', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2812, N'Ancash', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2813, N'Apurimac', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2814, N'Arequipa', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2815, N'Ayacucho', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2816, N'Cajamarca', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2817, N'Cusco', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2818, N'Huancavelica', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2819, N'Huanuco', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2820, N'Ica', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2821, N'Junin', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2822, N'La Libertad', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2823, N'Lambayeque', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2824, N'Lima y Callao', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2825, N'Loreto', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2826, N'Madre de Dios', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2827, N'Moquegua', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2828, N'Pasco', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2829, N'Piura', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2830, N'Puno', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2831, N'San Martin', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2832, N'Tacna', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2833, N'Tumbes', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2834, N'Ucayali', 172)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2835, N'Batangas', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2836, N'Bicol', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2837, N'Bulacan', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2838, N'Cagayan', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2839, N'Caraga', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2840, N'Central Luzon', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2841, N'Central Mindanao', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2842, N'Central Visayas', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2843, N'Cordillera', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2844, N'Davao', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2845, N'Eastern Visayas', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2846, N'Greater Metropolitan Area', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2847, N'Ilocos', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2848, N'Laguna', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2849, N'Luzon', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2850, N'Mactan', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2851, N'Metropolitan Manila Area', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2852, N'Muslim Mindanao', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2853, N'Northern Mindanao', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2854, N'Southern Mindanao', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2855, N'Southern Tagalog', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2856, N'Western Mindanao', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2857, N'Western Visayas', 173)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2858, N'Pitcairn Island', 174)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2859, N'Biale Blota', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2860, N'Dobroszyce', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2861, N'Dolnoslaskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2862, N'Dziekanow Lesny', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2863, N'Hopowo', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2864, N'Kartuzy', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2865, N'Koscian', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2866, N'Krakow', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2867, N'Kujawsko-Pomorskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2868, N'Lodzkie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2869, N'Lubelskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2870, N'Lubuskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2871, N'Malomice', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2872, N'Malopolskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2873, N'Mazowieckie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2874, N'Mirkow', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2875, N'Opolskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2876, N'Ostrowiec', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2877, N'Podkarpackie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2878, N'Podlaskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2879, N'Polska', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2880, N'Pomorskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2881, N'Poznan', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2882, N'Pruszkow', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2883, N'Rymanowska', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2884, N'Rzeszow', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2885, N'Slaskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2886, N'Stare Pole', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2887, N'Swietokrzyskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2888, N'Warminsko-Mazurskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2889, N'Warsaw', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2890, N'Wejherowo', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2891, N'Wielkopolskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2892, N'Wroclaw', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2893, N'Zachodnio-Pomorskie', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2894, N'Zukowo', 175)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2895, N'Abrantes', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2896, N'Acores', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2897, N'Alentejo', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2898, N'Algarve', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2899, N'Braga', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2900, N'Centro', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2901, N'Distrito de Leiria', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2902, N'Distrito de Viana do Castelo', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2903, N'Distrito de Vila Real', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2904, N'Distrito do Porto', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2905, N'Lisboa e Vale do Tejo', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2906, N'Madeira', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2907, N'Norte', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2908, N'Paivas', 176)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2909, N'Arecibo', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2910, N'Bayamon', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2911, N'Carolina', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2912, N'Florida', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2913, N'Guayama', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2914, N'Humacao', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2915, N'Mayaguez-Aguadilla', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2916, N'Ponce', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2917, N'Salinas', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2918, N'San Juan', 177)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2919, N'ad-Dawhah', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2920, N'al-Ghuwayriyah', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2921, N'al-Jumayliyah', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2922, N'al-Khawr', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2923, N'al-Wakrah', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2924, N'ar-Rayyan', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2925, N'ash-Shamal', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2926, N'Doha', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2927, N'Jarian-al-Batnah', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2928, N'Umm Salal', 178)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2929, N'Saint-Benoit', 179)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2930, N'Saint-Denis', 179)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2931, N'Saint-Paul', 179)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2932, N'Saint-Pierre', 179)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2933, N'Alba', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2934, N'Arad', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2935, N'Arges', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2936, N'Bacau', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2937, N'Bihor', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2938, N'Bistrita-Nasaud', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2939, N'Botosani', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2940, N'Braila', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2941, N'Brasov', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2942, N'Bucuresti', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2943, N'Buzau', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2944, N'Calarasi', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2945, N'Caras-Severin', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2946, N'Cluj', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2947, N'Constanta', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2948, N'Covasna', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2949, N'Dambovita', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2950, N'Dolj', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2951, N'Galati', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2952, N'Giurgiu', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2953, N'Gorj', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2954, N'Harghita', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2955, N'Hunedoara', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2956, N'Ialomita', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2957, N'Iasi', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2958, N'Ilfov', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2959, N'Maramures', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2960, N'Mehedinti', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2961, N'Mures', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2962, N'Neamt', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2963, N'Olt', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2964, N'Prahova', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2965, N'Salaj', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2966, N'Satu Mare', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2967, N'Sibiu', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2968, N'Sondelor', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2969, N'Suceava', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2970, N'Teleorman', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2971, N'Timis', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2972, N'Tulcea', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2973, N'Valcea', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2974, N'Vaslui', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2975, N'Vrancea', 180)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2976, N'Adygeja', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2977, N'Aga', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2978, N'Alanija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2979, N'Altaj', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2980, N'Amur', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2981, N'Arhangelsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2982, N'Astrahan', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2983, N'Bashkortostan', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2984, N'Belgorod', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2985, N'Brjansk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2986, N'Burjatija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2987, N'Chechenija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2988, N'Cheljabinsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2989, N'Chita', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2990, N'Chukotka', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2991, N'Chuvashija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2992, N'Dagestan', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2993, N'Evenkija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2994, N'Gorno-Altaj', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2995, N'Habarovsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2996, N'Hakasija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2997, N'Hanty-Mansija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2998, N'Ingusetija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (2999, N'Irkutsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3000, N'Ivanovo', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3001, N'Jamalo-Nenets', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3002, N'Jaroslavl', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3003, N'Jevrej', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3004, N'Kabardino-Balkarija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3005, N'Kaliningrad', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3006, N'Kalmykija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3007, N'Kaluga', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3008, N'Kamchatka', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3009, N'Karachaj-Cherkessija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3010, N'Karelija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3011, N'Kemerovo', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3012, N'Khabarovskiy Kray', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3013, N'Kirov', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3014, N'Komi', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3015, N'Komi-Permjakija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3016, N'Korjakija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3017, N'Kostroma', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3018, N'Krasnodar', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3019, N'Krasnojarsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3020, N'Krasnoyarskiy Kray', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3021, N'Kurgan', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3022, N'Kursk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3023, N'Leningrad', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3024, N'Lipeck', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3025, N'Magadan', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3026, N'Marij El', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3027, N'Mordovija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3028, N'Moscow', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3029, N'Moskovskaja Oblast', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3030, N'Moskovskaya Oblast', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3031, N'Moskva', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3032, N'Murmansk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3033, N'Nenets', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3034, N'Nizhnij Novgorod', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3035, N'Novgorod', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3036, N'Novokusnezk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3037, N'Novosibirsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3038, N'Omsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3039, N'Orenburg', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3040, N'Orjol', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3041, N'Penza', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3042, N'Perm', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3043, N'Primorje', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3044, N'Pskov', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3045, N'Pskovskaya Oblast', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3046, N'Rjazan', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3047, N'Rostov', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3048, N'Saha', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3049, N'Sahalin', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3050, N'Samara', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3051, N'Samarskaya', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3052, N'Sankt-Peterburg', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3053, N'Saratov', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3054, N'Smolensk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3055, N'Stavropol', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3056, N'Sverdlovsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3057, N'Tajmyrija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3058, N'Tambov', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3059, N'Tatarstan', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3060, N'Tjumen', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3061, N'Tomsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3062, N'Tula', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3063, N'Tver', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3064, N'Tyva', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3065, N'Udmurtija', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3066, N'Uljanovsk', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3067, N'Ulyanovskaya Oblast', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3068, N'Ust-Orda', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3069, N'Vladimir', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3070, N'Volgograd', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3071, N'Vologda', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3072, N'Voronezh', 181)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3073, N'Butare', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3074, N'Byumba', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3075, N'Cyangugu', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3076, N'Gikongoro', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3077, N'Gisenyi', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3078, N'Gitarama', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3079, N'Kibungo', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3080, N'Kibuye', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3081, N'Kigali-ngali', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3082, N'Ruhengeri', 182)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3083, N'Ascension', 183)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3084, N'Gough Island', 183)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3085, N'Saint Helena', 183)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3086, N'Tristan da Cunha', 183)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3087, N'Christ Church Nichola Town', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3088, N'Saint Anne Sandy Point', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3089, N'Saint George Basseterre', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3090, N'Saint George Gingerland', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3091, N'Saint James Windward', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3092, N'Saint John Capesterre', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3093, N'Saint John Figtree', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3094, N'Saint Mary Cayon', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3095, N'Saint Paul Capesterre', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3096, N'Saint Paul Charlestown', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3097, N'Saint Peter Basseterre', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3098, N'Saint Thomas Lowland', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3099, N'Saint Thomas Middle Island', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3100, N'Trinity Palmetto Point', 184)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3101, N'Anse-la-Raye', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3102, N'Canaries', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3103, N'Castries', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3104, N'Choiseul', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3105, N'Dennery', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3106, N'Gros Inlet', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3107, N'Laborie', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3108, N'Micoud', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3109, N'Soufriere', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3110, N'Vieux Fort', 185)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3111, N'Miquelon-Langlade', 186)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3112, N'Saint-Pierre', 186)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3113, N'Charlotte', 187)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3114, N'Grenadines', 187)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3115, N'Saint Andrew', 187)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3116, N'Saint David', 187)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3117, N'Saint George', 187)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3118, N'Saint Patrick', 187)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3119, N'A''ana', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3120, N'Aiga-i-le-Tai', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3121, N'Atua', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3122, N'Fa''asaleleaga', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3123, N'Gaga''emauga', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3124, N'Gagaifomauga', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3125, N'Palauli', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3126, N'Satupa''itea', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3127, N'Tuamasaga', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3128, N'Va''a-o-Fonoti', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3129, N'Vaisigano', 188)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3130, N'Acquaviva', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3131, N'Borgo Maggiore', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3132, N'Chiesanuova', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3133, N'Domagnano', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3134, N'Faetano', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3135, N'Fiorentino', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3136, N'Montegiardino', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3137, N'San Marino', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3138, N'Serravalle', 189)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3139, N'Agua Grande', 190)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3140, N'Cantagalo', 190)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3141, N'Lemba', 190)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3142, N'Lobata', 190)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3143, N'Me-Zochi', 190)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3144, N'Pague', 190)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3145, N'Al Khobar', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3146, N'al-Bahah', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3147, N'al-Hudud-ash-Shamaliyah', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3148, N'al-Madinah', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3149, N'ar-Riyad', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3150, N'Aseer', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3151, N'Ash Sharqiyah', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3152, N'Asir', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3153, N'Central Province', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3154, N'Eastern Province', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3155, N'Ha''il', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3156, N'Jawf', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3157, N'Jizan', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3158, N'Makkah', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3159, N'Najran', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3160, N'Qasim', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3161, N'Tabuk', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3162, N'Western Province', 191)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3163, N'Dakar', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3164, N'Diourbel', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3165, N'Fatick', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3166, N'Kaolack', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3167, N'Kolda', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3168, N'Louga', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3169, N'Saint-Louis', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3170, N'Tambacounda', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3171, N'Thies', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3172, N'Ziguinchor', 192)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3173, N'Central Serbia', 193)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3174, N'Kosovo and Metohija', 193)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3175, N'Vojvodina', 193)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3176, N'Anse Boileau', 194)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3177, N'Anse Royale', 194)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3178, N'Cascade', 194)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3179, N'Takamaka', 194)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3180, N'Victoria', 194)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3181, N'Eastern', 195)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3182, N'Northern', 195)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3183, N'Southern', 195)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3184, N'Western', 195)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3185, N'Singapore', 196)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3186, N'Banskobystricky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3187, N'Bratislavsky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3188, N'Kosicky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3189, N'Nitriansky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3190, N'Presovsky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3191, N'Trenciansky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3192, N'Trnavsky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3193, N'Zilinsky', 197)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3194, N'Benedikt', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3195, N'Gorenjska', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3196, N'Gorishka', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3197, N'Jugovzhodna Slovenija', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3198, N'Koroshka', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3199, N'Notranjsko-krashka', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3200, N'Obalno-krashka', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3201, N'Obcina Domzale', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3202, N'Obcina Vitanje', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3203, N'Osrednjeslovenska', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3204, N'Podravska', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3205, N'Pomurska', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3206, N'Savinjska', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3207, N'Slovenian Littoral', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3208, N'Spodnjeposavska', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3209, N'Zasavska', 198)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3210, N'Pitcairn', 199)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3211, N'Central', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3212, N'Choiseul', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3213, N'Guadalcanal', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3214, N'Isabel', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3215, N'Makira and Ulawa', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3216, N'Malaita', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3217, N'Rennell and Bellona', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3218, N'Temotu', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3219, N'Western', 200)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3220, N'Awdal', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3221, N'Bakol', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3222, N'Banadir', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3223, N'Bari', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3224, N'Bay', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3225, N'Galgudug', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3226, N'Gedo', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3227, N'Hiran', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3228, N'Jubbada Hose', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3229, N'Jubbadha Dexe', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3230, N'Mudug', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3231, N'Nugal', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3232, N'Sanag', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3233, N'Shabellaha Dhexe', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3234, N'Shabellaha Hose', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3235, N'Togdher', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3236, N'Woqoyi Galbed', 201)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3237, N'Eastern Cape', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3238, N'Free State', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3239, N'Gauteng', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3240, N'Kempton Park', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3241, N'Kramerville', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3242, N'KwaZulu Natal', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3243, N'Limpopo', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3244, N'Mpumalanga', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3245, N'North West', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3246, N'Northern Cape', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3247, N'Parow', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3248, N'Table View', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3249, N'Umtentweni', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3250, N'Western Cape', 202)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3251, N'South Georgia', 203)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3252, N'Central Equatoria', 204)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3253, N'A Coruna', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3254, N'Alacant', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3255, N'Alava', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3256, N'Albacete', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3257, N'Almeria', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3258, N'Andalucia', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3259, N'Asturias', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3260, N'Avila', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3261, N'Badajoz', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3262, N'Balears', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3263, N'Barcelona', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3264, N'Bertamirans', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3265, N'Biscay', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3266, N'Burgos', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3267, N'Caceres', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3268, N'Cadiz', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3269, N'Cantabria', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3270, N'Castello', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3271, N'Catalunya', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3272, N'Ceuta', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3273, N'Ciudad Real', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3274, N'Comunidad Autonoma de Canarias', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3275, N'Comunidad Autonoma de Cataluna', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3276, N'Comunidad Autonoma de Galicia', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3277, N'Comunidad Autonoma de las Isla', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3278, N'Comunidad Autonoma del Princip', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3279, N'Comunidad Valenciana', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3280, N'Cordoba', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3281, N'Cuenca', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3282, N'Gipuzkoa', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3283, N'Girona', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3284, N'Granada', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3285, N'Guadalajara', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3286, N'Guipuzcoa', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3287, N'Huelva', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3288, N'Huesca', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3289, N'Jaen', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3290, N'La Rioja', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3291, N'Las Palmas', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3292, N'Leon', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3293, N'Lerida', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3294, N'Lleida', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3295, N'Lugo', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3296, N'Madrid', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3297, N'Malaga', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3298, N'Melilla', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3299, N'Murcia', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3300, N'Navarra', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3301, N'Ourense', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3302, N'Pais Vasco', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3303, N'Palencia', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3304, N'Pontevedra', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3305, N'Salamanca', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3306, N'Santa Cruz de Tenerife', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3307, N'Segovia', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3308, N'Sevilla', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3309, N'Soria', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3310, N'Tarragona', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3311, N'Tenerife', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3312, N'Teruel', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3313, N'Toledo', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3314, N'Valencia', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3315, N'Valladolid', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3316, N'Vizcaya', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3317, N'Zamora', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3318, N'Zaragoza', 205)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3319, N'Amparai', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3320, N'Anuradhapuraya', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3321, N'Badulla', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3322, N'Boralesgamuwa', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3323, N'Colombo', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3324, N'Galla', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3325, N'Gampaha', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3326, N'Hambantota', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3327, N'kadawatha', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3328, N'Kalatura', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3329, N'Kegalla', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3330, N'Kilinochchi', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3331, N'Kurunegala', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3332, N'Madakalpuwa', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3333, N'Maha Nuwara', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3334, N'Malwana', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3335, N'Mannarama', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3336, N'Matale', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3337, N'Matara', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3338, N'Monaragala', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3339, N'Mullaitivu', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3340, N'North Eastern Province', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3341, N'North Western Province', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3342, N'Nuwara Eliya', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3343, N'Polonnaruwa', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3344, N'Puttalama', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3345, N'Ratnapuraya', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3346, N'Southern Province', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3347, N'Tirikunamalaya', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3348, N'Tuscany', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3349, N'Vavuniyawa', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3350, N'Western Province', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3351, N'Yapanaya', 206)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3352, N'A''ali-an-Nil', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3353, N'al-Bahr-al-Ahmar', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3354, N'al-Buhayrat', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3355, N'al-Jazirah', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3356, N'al-Khartum', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3357, N'al-Qadarif', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3358, N'al-Wahdah', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3359, N'an-Nil-al-Abyad', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3360, N'an-Nil-al-Azraq', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3361, N'ash-Shamaliyah', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3362, N'Bahr-al-Jabal', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3363, N'Central Equatoria', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3364, N'Gharb Bahr-al-Ghazal', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3365, N'Gharb Darfur', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3366, N'Gharb Kurdufan', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3367, N'Gharb-al-Istiwa''iyah', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3368, N'Janub Darfur', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3369, N'Janub Kurdufan', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3370, N'Junqali', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3371, N'Kassala', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3372, N'Nahr-an-Nil', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3373, N'Shamal Bahr-al-Ghazal', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3374, N'Shamal Darfur', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3375, N'Shamal Kurdufan', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3376, N'Sharq-al-Istiwa''iyah', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3377, N'Sinnar', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3378, N'Warab', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3379, N'Wilayat al Khartum', 207)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3380, N'Brokopondo', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3381, N'Commewijne', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3382, N'Coronie', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3383, N'Marowijne', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3384, N'Nickerie', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3385, N'Para', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3386, N'Paramaribo', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3387, N'Saramacca', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3388, N'Wanica', 208)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3389, N'Svalbard', 209)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3390, N'Hhohho', 210)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3391, N'Lubombo', 210)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3392, N'Manzini', 210)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3393, N'Shiselweni', 210)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3394, N'Alvsborgs Lan', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3395, N'Angermanland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3396, N'Blekinge', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3397, N'Bohuslan', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3398, N'Dalarna', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3399, N'Gavleborg', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3400, N'Gaza', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3401, N'Gotland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3402, N'Halland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3403, N'Jamtland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3404, N'Jonkoping', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3405, N'Kalmar', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3406, N'Kristianstads', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3407, N'Kronoberg', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3408, N'Norrbotten', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3409, N'Orebro', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3410, N'Ostergotland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3411, N'Saltsjo-Boo', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3412, N'Skane', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3413, N'Smaland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3414, N'Sodermanland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3415, N'Stockholm', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3416, N'Uppsala', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3417, N'Varmland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3418, N'Vasterbotten', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3419, N'Vastergotland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3420, N'Vasternorrland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3421, N'Vastmanland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3422, N'Vastra Gotaland', 211)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3423, N'Aargau', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3424, N'Appenzell Inner-Rhoden', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3425, N'Appenzell-Ausser Rhoden', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3426, N'Basel-Landschaft', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3427, N'Basel-Stadt', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3428, N'Bern', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3429, N'Canton Ticino', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3430, N'Fribourg', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3431, N'Geneve', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3432, N'Glarus', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3433, N'Graubunden', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3434, N'Heerbrugg', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3435, N'Jura', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3436, N'Kanton Aargau', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3437, N'Luzern', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3438, N'Morbio Inferiore', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3439, N'Muhen', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3440, N'Neuchatel', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3441, N'Nidwalden', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3442, N'Obwalden', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3443, N'Sankt Gallen', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3444, N'Schaffhausen', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3445, N'Schwyz', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3446, N'Solothurn', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3447, N'Thurgau', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3448, N'Ticino', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3449, N'Uri', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3450, N'Valais', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3451, N'Vaud', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3452, N'Vauffelin', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3453, N'Zug', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3454, N'Zurich', 212)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3455, N'Aleppo', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3456, N'al-Hasakah', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3457, N'al-Ladhiqiyah', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3458, N'al-Qunaytirah', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3459, N'ar-Raqqah', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3460, N'as-Suwayda', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3461, N'Dar''a', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3462, N'Dayr-az-Zawr', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3463, N'Dimashq', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3464, N'Halab', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3465, N'Hamah', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3466, N'Hims', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3467, N'Idlib', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3468, N'Madinat Dimashq', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3469, N'Tartus', 213)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3470, N'Changhwa', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3471, N'Chiayi Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3472, N'Chiayi Shih', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3473, N'Eastern Taipei', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3474, N'Hsinchu Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3475, N'Hsinchu Shih', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3476, N'Hualien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3477, N'Ilan', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3478, N'Kaohsiung Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3479, N'Kaohsiung Shih', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3480, N'Keelung Shih', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3481, N'Kinmen', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3482, N'Miaoli', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3483, N'Nantou', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3484, N'Northern Taiwan', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3485, N'Penghu', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3486, N'Pingtung', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3487, N'Taichung', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3488, N'Taichung Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3489, N'Taichung Shih', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3490, N'Tainan Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3491, N'Tainan Shih', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3492, N'Taipei Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3493, N'Taipei Shih / Taipei Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3494, N'Taitung', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3495, N'Taoyuan', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3496, N'Yilan', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3497, N'Yunlin', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3498, N'Yun-Lin Hsien', 214)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3499, N'Dushanbe', 215)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3500, N'Gorno-Badakhshan', 215)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3501, N'Karotegin', 215)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3502, N'Khatlon', 215)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3503, N'Sughd', 215)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3504, N'Arusha', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3505, N'Dar es Salaam', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3506, N'Dodoma', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3507, N'Iringa', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3508, N'Kagera', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3509, N'Kigoma', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3510, N'Kilimanjaro', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3511, N'Lindi', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3512, N'Mara', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3513, N'Mbeya', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3514, N'Morogoro', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3515, N'Mtwara', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3516, N'Mwanza', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3517, N'Pwani', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3518, N'Rukwa', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3519, N'Ruvuma', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3520, N'Shinyanga', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3521, N'Singida', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3522, N'Tabora', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3523, N'Tanga', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3524, N'Zanzibar and Pemba', 216)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3525, N'Amnat Charoen', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3526, N'Ang Thong', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3527, N'Bangkok', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3528, N'Buri Ram', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3529, N'Chachoengsao', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3530, N'Chai Nat', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3531, N'Chaiyaphum', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3532, N'Changwat Chaiyaphum', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3533, N'Chanthaburi', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3534, N'Chiang Mai', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3535, N'Chiang Rai', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3536, N'Chon Buri', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3537, N'Chumphon', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3538, N'Kalasin', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3539, N'Kamphaeng Phet', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3540, N'Kanchanaburi', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3541, N'Khon Kaen', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3542, N'Krabi', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3543, N'Krung Thep', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3544, N'Lampang', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3545, N'Lamphun', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3546, N'Loei', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3547, N'Lop Buri', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3548, N'Mae Hong Son', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3549, N'Maha Sarakham', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3550, N'Mukdahan', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3551, N'Nakhon Nayok', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3552, N'Nakhon Pathom', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3553, N'Nakhon Phanom', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3554, N'Nakhon Ratchasima', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3555, N'Nakhon Sawan', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3556, N'Nakhon Si Thammarat', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3557, N'Nan', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3558, N'Narathiwat', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3559, N'Nong Bua Lam Phu', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3560, N'Nong Khai', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3561, N'Nonthaburi', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3562, N'Pathum Thani', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3563, N'Pattani', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3564, N'Phangnga', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3565, N'Phatthalung', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3566, N'Phayao', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3567, N'Phetchabun', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3568, N'Phetchaburi', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3569, N'Phichit', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3570, N'Phitsanulok', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3571, N'Phra Nakhon Si Ayutthaya', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3572, N'Phrae', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3573, N'Phuket', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3574, N'Prachin Buri', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3575, N'Prachuap Khiri Khan', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3576, N'Ranong', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3577, N'Ratchaburi', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3578, N'Rayong', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3579, N'Roi Et', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3580, N'Sa Kaeo', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3581, N'Sakon Nakhon', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3582, N'Samut Prakan', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3583, N'Samut Sakhon', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3584, N'Samut Songkhran', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3585, N'Saraburi', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3586, N'Satun', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3587, N'Si Sa Ket', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3588, N'Sing Buri', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3589, N'Songkhla', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3590, N'Sukhothai', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3591, N'Suphan Buri', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3592, N'Surat Thani', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3593, N'Surin', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3594, N'Tak', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3595, N'Trang', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3596, N'Trat', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3597, N'Ubon Ratchathani', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3598, N'Udon Thani', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3599, N'Uthai Thani', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3600, N'Uttaradit', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3601, N'Yala', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3602, N'Yasothon', 217)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3603, N'Centre', 218)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3604, N'Kara', 218)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3605, N'Maritime', 218)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3606, N'Plateaux', 218)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3607, N'Savanes', 218)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3608, N'Atafu', 219)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3609, N'Fakaofo', 219)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3610, N'Nukunonu', 219)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3611, N'Eua', 220)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3612, N'Ha''apai', 220)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3613, N'Niuas', 220)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3614, N'Tongatapu', 220)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3615, N'Vava''u', 220)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3616, N'Arima-Tunapuna-Piarco', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3617, N'Caroni', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3618, N'Chaguanas', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3619, N'Couva-Tabaquite-Talparo', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3620, N'Diego Martin', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3621, N'Glencoe', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3622, N'Penal Debe', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3623, N'Point Fortin', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3624, N'Port of Spain', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3625, N'Princes Town', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3626, N'Saint George', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3627, N'San Fernando', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3628, N'San Juan', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3629, N'Sangre Grande', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3630, N'Siparia', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3631, N'Tobago', 221)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3632, N'al-Kaf', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3633, N'al-Mahdiyah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3634, N'al-Munastir', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3635, N'al-Qasrayn', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3636, N'al-Qayrawan', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3637, N'Aryanah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3638, N'Bajah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3639, N'Bin ''Arus', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3640, N'Binzart', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3641, N'Gouvernorat de Ariana', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3642, N'Gouvernorat de Nabeul', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3643, N'Gouvernorat de Sousse', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3644, N'Hammamet Yasmine', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3645, N'Jundubah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3646, N'Madaniyin', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3647, N'Manubah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3648, N'Monastir', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3649, N'Nabul', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3650, N'Qabis', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3651, N'Qafsah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3652, N'Qibili', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3653, N'Safaqis', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3654, N'Sfax', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3655, N'Sidi Bu Zayd', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3656, N'Silyanah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3657, N'Susah', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3658, N'Tatawin', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3659, N'Tawzar', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3660, N'Tunis', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3661, N'Zaghwan', 222)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3662, N'Adana', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3663, N'Adiyaman', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3664, N'Afyon', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3665, N'Agri', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3666, N'Aksaray', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3667, N'Amasya', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3668, N'Ankara', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3669, N'Antalya', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3670, N'Ardahan', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3671, N'Artvin', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3672, N'Aydin', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3673, N'Balikesir', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3674, N'Bartin', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3675, N'Batman', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3676, N'Bayburt', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3677, N'Bilecik', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3678, N'Bingol', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3679, N'Bitlis', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3680, N'Bolu', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3681, N'Burdur', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3682, N'Bursa', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3683, N'Canakkale', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3684, N'Cankiri', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3685, N'Corum', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3686, N'Denizli', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3687, N'Diyarbakir', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3688, N'Duzce', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3689, N'Edirne', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3690, N'Elazig', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3691, N'Erzincan', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3692, N'Erzurum', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3693, N'Eskisehir', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3694, N'Gaziantep', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3695, N'Giresun', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3696, N'Gumushane', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3697, N'Hakkari', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3698, N'Hatay', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3699, N'Icel', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3700, N'Igdir', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3701, N'Isparta', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3702, N'Istanbul', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3703, N'Izmir', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3704, N'Kahramanmaras', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3705, N'Karabuk', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3706, N'Karaman', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3707, N'Kars', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3708, N'Karsiyaka', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3709, N'Kastamonu', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3710, N'Kayseri', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3711, N'Kilis', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3712, N'Kirikkale', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3713, N'Kirklareli', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3714, N'Kirsehir', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3715, N'Kocaeli', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3716, N'Konya', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3717, N'Kutahya', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3718, N'Lefkosa', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3719, N'Malatya', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3720, N'Manisa', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3721, N'Mardin', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3722, N'Mugla', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3723, N'Mus', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3724, N'Nevsehir', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3725, N'Nigde', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3726, N'Ordu', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3727, N'Osmaniye', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3728, N'Rize', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3729, N'Sakarya', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3730, N'Samsun', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3731, N'Sanliurfa', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3732, N'Siirt', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3733, N'Sinop', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3734, N'Sirnak', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3735, N'Sivas', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3736, N'Tekirdag', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3737, N'Tokat', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3738, N'Trabzon', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3739, N'Tunceli', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3740, N'Usak', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3741, N'Van', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3742, N'Yalova', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3743, N'Yozgat', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3744, N'Zonguldak', 223)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3745, N'Ahal', 224)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3746, N'Asgabat', 224)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3747, N'Balkan', 224)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3748, N'Dasoguz', 224)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3749, N'Lebap', 224)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3750, N'Mari', 224)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3751, N'Grand Turk', 225)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3752, N'South Caicos and East Caicos', 225)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3753, N'Funafuti', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3754, N'Nanumanga', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3755, N'Nanumea', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3756, N'Niutao', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3757, N'Nui', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3758, N'Nukufetau', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3759, N'Nukulaelae', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3760, N'Vaitupu', 226)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3761, N'Central', 227)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3762, N'Eastern', 227)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3763, N'Northern', 227)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3764, N'Western', 227)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3765, N'Cherkas''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3766, N'Chernihivs''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3767, N'Chernivets''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3768, N'Crimea', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3769, N'Dnipropetrovska', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3770, N'Donets''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3771, N'Ivano-Frankivs''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3772, N'Kharkiv', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3773, N'Kharkov', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3774, N'Khersonska', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3775, N'Khmel''nyts''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3776, N'Kirovohrad', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3777, N'Krym', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3778, N'Kyyiv', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3779, N'Kyyivs''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3780, N'Luhans''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3781, N'L''vivs''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3782, N'Mykolayivs''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3783, N'Odes''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3784, N'Odessa', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3785, N'Poltavs''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3786, N'Rivnens''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3787, N'Sevastopol''', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3788, N'Sums''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3789, N'Ternopil''s''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3790, N'Volyns''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3791, N'Vynnyts''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3792, N'Zakarpats''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3793, N'Zaporizhia', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3794, N'Zhytomyrs''ka', 228)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3795, N'Abu Zabi', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3796, N'Ajman', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3797, N'al-Fujayrah', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3798, N'ash-Shariqah', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3799, N'Dubai', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3800, N'Ras al-Khaymah', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3801, N'Sharjah', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3802, N'Sharjha', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3803, N'Umm al Qaywayn', 229)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3804, N'Aberdeen', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3805, N'Aberdeenshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3806, N'Argyll', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3807, N'Armagh', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3808, N'Bedfordshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3809, N'Belfast', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3810, N'Berkshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3811, N'Birmingham', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3812, N'Brechin', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3813, N'Bridgnorth', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3814, N'Bristol', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3815, N'Buckinghamshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3816, N'Cambridge', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3817, N'Cambridgeshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3818, N'Channel Islands', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3819, N'Cheshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3820, N'Cleveland', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3821, N'Co Fermanagh', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3822, N'Conwy', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3823, N'Cornwall', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3824, N'Coventry', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3825, N'Craven Arms', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3826, N'Cumbria', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3827, N'Denbighshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3828, N'Derby', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3829, N'Derbyshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3830, N'Devon', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3831, N'Dial Code Dungannon', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3832, N'Didcot', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3833, N'Dorset', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3834, N'Dunbartonshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3835, N'Durham', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3836, N'East Dunbartonshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3837, N'East Lothian', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3838, N'East Midlands', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3839, N'East Sussex', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3840, N'East Yorkshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3841, N'England', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3842, N'Essex', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3843, N'Fermanagh', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3844, N'Fife', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3845, N'Flintshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3846, N'Fulham', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3847, N'Gainsborough', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3848, N'Glocestershire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3849, N'Gwent', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3850, N'Hampshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3851, N'Hants', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3852, N'Herefordshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3853, N'Hertfordshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3854, N'Ireland', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3855, N'Isle Of Man', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3856, N'Isle of Wight', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3857, N'Kenford', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3858, N'Kent', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3859, N'Kilmarnock', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3860, N'Lanarkshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3861, N'Lancashire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3862, N'Leicestershire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3863, N'Lincolnshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3864, N'Llanymynech', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3865, N'London', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3866, N'Ludlow', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3867, N'Manchester', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3868, N'Mayfair', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3869, N'Merseyside', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3870, N'Mid Glamorgan', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3871, N'Middlesex', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3872, N'Mildenhall', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3873, N'Monmouthshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3874, N'Newton Stewart', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3875, N'Norfolk', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3876, N'North Humberside', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3877, N'North Yorkshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3878, N'Northamptonshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3879, N'Northants', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3880, N'Northern Ireland', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3881, N'Northumberland', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3882, N'Nottinghamshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3883, N'Oxford', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3884, N'Powys', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3885, N'Roos-shire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3886, N'Sark', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3887, N'Scotland', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3888, N'Scottish Borders', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3889, N'Shropshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3890, N'Somerset', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3891, N'South Glamorgan', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3892, N'South Wales', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3893, N'South Yorkshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3894, N'Southwell', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3895, N'Staffordshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3896, N'Strabane', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3897, N'Suffolk', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3898, N'Surrey', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3899, N'Sussex', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3900, N'SUSSEX', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3901, N'Twickenham', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3902, N'Tyne and Wear', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3903, N'Tyrone', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3904, N'Utah', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3905, N'Wales', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3906, N'Warwickshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3907, N'West Lothian', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3908, N'West Midlands', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3909, N'West Sussex', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3910, N'West Yorkshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3911, N'Whissendine', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3912, N'Wiltshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3913, N'Wokingham', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3914, N'Worcestershire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3915, N'Wrexham', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3916, N'Wurttemberg', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3917, N'Yorkshire', 230)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3918, N'Alabama', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3919, N'Alaska', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3920, N'Arizona', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3921, N'Arkansas', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3922, N'Byram', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3923, N'California', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3924, N'Cokato', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3925, N'Colorado', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3926, N'Connecticut', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3927, N'Delaware', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3928, N'District of Columbia', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3929, N'Florida', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3930, N'Georgia', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3931, N'Hawaii', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3932, N'Idaho', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3933, N'Illinois', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3934, N'Indiana', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3935, N'Iowa', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3936, N'Kansas', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3937, N'Kentucky', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3938, N'Louisiana', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3939, N'Lowa', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3940, N'Maine', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3941, N'Maryland', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3942, N'Massachusetts', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3943, N'Medfield', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3944, N'Michigan', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3945, N'Minnesota', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3946, N'Mississippi', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3947, N'Missouri', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3948, N'Montana', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3949, N'Nebraska', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3950, N'Nevada', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3951, N'New Hampshire', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3952, N'New Jersey', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3953, N'New Jersy', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3954, N'New Mexico', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3955, N'New York', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3956, N'North Carolina', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3957, N'North Dakota', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3958, N'Ohio', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3959, N'Oklahoma', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3960, N'Ontario', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3961, N'Oregon', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3962, N'Pennsylvania', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3963, N'Ramey', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3964, N'Rhode Island', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3965, N'South Carolina', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3966, N'South Dakota', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3967, N'Sublimity', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3968, N'Tennessee', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3969, N'Texas', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3970, N'Trimble', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3971, N'Utah', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3972, N'Vermont', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3973, N'Virginia', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3974, N'Washington', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3975, N'West Virginia', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3976, N'Wisconsin', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3977, N'Wyoming', 231)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3978, N'United States Minor Outlying I', 232)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3979, N'Artigas', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3980, N'Canelones', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3981, N'Cerro Largo', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3982, N'Colonia', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3983, N'Durazno', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3984, N'Flores', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3985, N'FLorida', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3986, N'Lavalleja', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3987, N'Maldonado', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3988, N'Montevideo', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3989, N'Paysandu', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3990, N'Rio Negro', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3991, N'Rivera', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3992, N'Rocha', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3993, N'Salto', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3994, N'San Jose', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3995, N'Soriano', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3996, N'Tacuarembo', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3997, N'Treinta y Tres', 233)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3998, N'Andijon', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (3999, N'Buhoro', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4000, N'Buxoro Viloyati', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4001, N'Cizah', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4002, N'Fargona', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4003, N'Horazm', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4004, N'Kaskadar', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4005, N'Korakalpogiston', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4006, N'Namangan', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4007, N'Navoi', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4008, N'Samarkand', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4009, N'Sirdare', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4010, N'Surhondar', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4011, N'Toskent', 234)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4012, N'Malampa', 235)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4013, N'Penama', 235)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4014, N'Sanma', 235)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4015, N'Shefa', 235)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4016, N'Tafea', 235)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4017, N'Torba', 235)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4018, N'Vatican City State (Holy See)', 236)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4019, N'Amazonas', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4020, N'Anzoategui', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4021, N'Apure', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4022, N'Aragua', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4023, N'Barinas', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4024, N'Bolivar', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4025, N'Carabobo', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4026, N'Cojedes', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4027, N'Delta Amacuro', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4028, N'Distrito Federal', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4029, N'Falcon', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4030, N'Guarico', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4031, N'Lara', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4032, N'Merida', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4033, N'Miranda', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4034, N'Monagas', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4035, N'Nueva Esparta', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4036, N'Portuguesa', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4037, N'Sucre', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4038, N'Tachira', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4039, N'Trujillo', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4040, N'Vargas', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4041, N'Yaracuy', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4042, N'Zulia', 237)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4043, N'Bac Giang', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4044, N'Binh Dinh', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4045, N'Binh Duong', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4046, N'Da Nang', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4047, N'Dong Bang Song Cuu Long', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4048, N'Dong Bang Song Hong', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4049, N'Dong Nai', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4050, N'Dong Nam Bo', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4051, N'Duyen Hai Mien Trung', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4052, N'Hanoi', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4053, N'Hung Yen', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4054, N'Khu Bon Cu', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4055, N'Long An', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4056, N'Mien Nui Va Trung Du', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4057, N'Thai Nguyen', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4058, N'Thanh Pho Ho Chi Minh', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4059, N'Thu Do Ha Noi', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4060, N'Tinh Can Tho', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4061, N'Tinh Da Nang', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4062, N'Tinh Gia Lai', 238)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4063, N'Anegada', 239)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4064, N'Jost van Dyke', 239)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4065, N'Tortola', 239)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4066, N'Saint Croix', 240)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4067, N'Saint John', 240)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4068, N'Saint Thomas', 240)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4069, N'Alo', 241)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4070, N'Singave', 241)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4071, N'Wallis', 241)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4072, N'al-''Ayun', 242)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4073, N'as-Samarah', 242)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4074, N'Bu Jaydur', 242)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4075, N'Wad-adh-Dhahab', 242)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4076, N'Abyan', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4077, N'''Adan', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4078, N'al-Bayda', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4079, N'al-Hudaydah', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4080, N'al-Jawf', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4081, N'al-Mahrah', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4082, N'al-Mahwit', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4083, N'Dhamar', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4084, N'Hadramaut', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4085, N'Hajjah', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4086, N'Hudaydah', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4087, N'Ibb', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4088, N'Lahij', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4089, N'Madinat San''a', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4090, N'Ma''rib', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4091, N'Sa''dah', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4092, N'Sana', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4093, N'Shabwah', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4094, N'Ta''izz', 243)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4095, N'Central Serbia', 244)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4096, N'Kosovo and Metohija', 244)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4097, N'Montenegro', 244)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4098, N'Republic of Serbia', 244)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4099, N'Serbia', 244)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4100, N'Vojvodina', 244)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4101, N'Central', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4102, N'Copperbelt', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4103, N'Eastern', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4104, N'Luapala', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4105, N'Lusaka', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4106, N'Northern', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4107, N'North-Western', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4108, N'Southern', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4109, N'Western', 245)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4110, N'Bulawayo', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4111, N'Harare', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4112, N'Manicaland', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4113, N'Mashonaland Central', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4114, N'Mashonaland East', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4115, N'Mashonaland West', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4116, N'Masvingo', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4117, N'Matabeleland North', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4118, N'Matabeleland South', 246)
GO
INSERT [dbo].[LP_STATE_MASTER] ([ID], [Name], [CountryID]) VALUES (4119, N'Midlands', 246)
GO
SET IDENTITY_INSERT [dbo].[LP_STATE_MASTER] OFF
GO
SET IDENTITY_INSERT [dbo].[Organ] ON 
GO
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (1, 1, N'Kidney', NULL)
GO
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (2, 1, N'Heart', NULL)
GO
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (3, 1, N'Eye', NULL)
GO
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (4, 1, N'Kidney', NULL)
GO
INSERT [dbo].[Organ] ([id], [Patientid], [Parts], [BloodGroup]) VALUES (5, 1, N'Eye', N'O-')
GO
SET IDENTITY_INSERT [dbo].[Organ] OFF
GO
SET IDENTITY_INSERT [dbo].[Patmaintains] ON 
GO
INSERT [dbo].[Patmaintains] ([id], [PatientId], [natureofproblem], [bloodtestno], [xrayno], [ctscan], [prescription], [comments], [date], [Type]) VALUES (4, 230, N'Feaver', N'100', N'102', N'201', N'Nil', N'Nil', N'3/28/2019', 2)
GO
SET IDENTITY_INSERT [dbo].[Patmaintains] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([id], [Name], [Description], [Price], [ExpDate]) VALUES (1, N'test1', N'nil', N'100', N'31/12/2019')
GO
INSERT [dbo].[Product] ([id], [Name], [Description], [Price], [ExpDate]) VALUES (2, N'pro1', N'nil', N'100', N'31/12/2019')
GO
INSERT [dbo].[Product] ([id], [Name], [Description], [Price], [ExpDate]) VALUES (3, N'pro2', N'asdasd', N'500', N'20/02/2019')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Purchase] ([Productid], [supId], [Qty], [Price]) VALUES (1, 1, CAST(1000 AS Numeric(9, 0)), CAST(1000 AS Numeric(9, 0)))
GO
INSERT [dbo].[Purchase] ([Productid], [supId], [Qty], [Price]) VALUES (2, 2, CAST(5000 AS Numeric(9, 0)), CAST(5000 AS Numeric(9, 0)))
GO
INSERT [dbo].[Purchase] ([Productid], [supId], [Qty], [Price]) VALUES (3, 3, CAST(200 AS Numeric(9, 0)), CAST(400 AS Numeric(9, 0)))
GO
INSERT [dbo].[Purchase] ([Productid], [supId], [Qty], [Price]) VALUES (1, 3, CAST(150 AS Numeric(9, 0)), CAST(400 AS Numeric(9, 0)))
GO
INSERT [dbo].[Purchase] ([Productid], [supId], [Qty], [Price]) VALUES (2, 3, CAST(59 AS Numeric(9, 0)), CAST(3456 AS Numeric(9, 0)))
GO
INSERT [dbo].[Purchase] ([Productid], [supId], [Qty], [Price]) VALUES (3, 3, CAST(40 AS Numeric(9, 0)), CAST(345 AS Numeric(9, 0)))
GO
INSERT [dbo].[Purchase] ([Productid], [supId], [Qty], [Price]) VALUES (1, 1, CAST(10 AS Numeric(9, 0)), CAST(100 AS Numeric(9, 0)))
GO
SET IDENTITY_INSERT [dbo].[RoomDetails] ON 
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (1, 1, N'A', 1, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (2, 2, N'A', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (3, 3, N'A', 1, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (4, 4, N'A', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (5, 5, N'A', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (6, 6, N'A', 1, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (7, 7, N'A', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (8, 8, N'A', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (9, 9, N'A', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (10, 1, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (11, 2, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (12, 3, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (13, 4, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (14, 5, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (15, 6, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (16, 7, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (17, 8, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (18, 9, N'B', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (19, 1, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (20, 2, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (21, 3, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (22, 4, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (23, 5, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (24, 6, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (25, 7, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (26, 8, N'C', 0, NULL)
GO
INSERT [dbo].[RoomDetails] ([Id], [RoomNo], [RoomType], [Status], [RentAt]) VALUES (27, 9, N'C', 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[RoomDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 
GO
INSERT [dbo].[Supplier] ([id], [Name], [DOB], [Gender], [Email], [MobileNo], [Address], [State], [City]) VALUES (1, N'keerthi', N'20/02/2019', N'Male', N'nxtlogic@gmail.com', N'9894694339', N'Gandhipuram', N'Tamil Nadu', N'Coimbatore')
GO
INSERT [dbo].[Supplier] ([id], [Name], [DOB], [Gender], [Email], [MobileNo], [Address], [State], [City]) VALUES (2, N'mani', N'20/02/2019', N'Male', N'nxtlogic@gmail.com', N'9894694339', N'Gandhipuram', N'Tamil Nadu', N'Coimbatore')
GO
INSERT [dbo].[Supplier] ([id], [Name], [DOB], [Gender], [Email], [MobileNo], [Address], [State], [City]) VALUES (3, N'ravi', N'20/02/2019', N'Male', N'mail2me.keerthivasan@gmail.com', N'9894694339', N'Gandhipuram', N'TAMIL NADU', N'SALEM')
GO
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Treatment] ON 
GO
INSERT [dbo].[Treatment] ([Id], [PatientId], [Disease], [Treatement], [DoctorNote], [DateOfVisit]) VALUES (1, 1, N'Test', N'Testgy', N'Tesgt', N'3/13/2018')
GO
INSERT [dbo].[Treatment] ([Id], [PatientId], [Disease], [Treatement], [DoctorNote], [DateOfVisit]) VALUES (2, 2, N'dsgdsg', N'dsgdsg', N'sdgsdgsd', N'3/7/2018')
GO
INSERT [dbo].[Treatment] ([Id], [PatientId], [Disease], [Treatement], [DoctorNote], [DateOfVisit]) VALUES (3, 3, N'adsfasdg', N'asdgasg', N'asgas', N'3/13/2018')
GO
SET IDENTITY_INSERT [dbo].[Treatment] OFF
GO
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (1, N'Keerthi', N'123', N'Feaver', N'2/17/2018', N'keerthi@gmail.com', N'9988774455', N'20')
GO
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (2, N'abi', N'96071', N'Fever', N'2/9/2010', N'abinayasahayam97@gmail.com', N'995522525632', N'22')
GO
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (230, N'Vino', N'12345678', N'Feaver', N'7/14/2010', N'nxtlogic@gmail.com', N'9894694339', N'8')
GO
INSERT [dbo].[UserReg] ([id], [name], [password], [natproblem], [dob], [mailid], [mobileno], [age]) VALUES (1001, N'sdf', N'asd', N'asd', N'4/19/1990', N'nxtlogic@gmail.com', N'9894694339', N'28')
GO
ALTER TABLE [dbo].[Addadmin] ADD  CONSTRAINT [df_Addadmin_DATE]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[LP_CITY_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_CityMaster_StateMaster] FOREIGN KEY([StateID])
REFERENCES [dbo].[LP_STATE_MASTER] ([ID])
GO
ALTER TABLE [dbo].[LP_CITY_MASTER] CHECK CONSTRAINT [FK_CityMaster_StateMaster]
GO
ALTER TABLE [dbo].[LP_STATE_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_StateMaster_CountryMaster] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LP_COUNTRY_MASTER] ([ID])
GO
ALTER TABLE [dbo].[LP_STATE_MASTER] CHECK CONSTRAINT [FK_StateMaster_CountryMaster]
GO
/****** Object:  StoredProcedure [dbo].[ddl_Search_Branch]    Script Date: 2/23/2023 11:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ddl_Search_Branch] 
				   
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
					id
					,Name
			
	from dbo.Branch 
	order by name
END





GO
/****** Object:  StoredProcedure [dbo].[Select_City_Master]    Script Date: 2/23/2023 11:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Select_City_Master] 
				 @Id int
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
				id,
				Name
	from dbo.LP_CITY_MASTER  (nolock)
	where StateID = @Id
END




GO
/****** Object:  StoredProcedure [dbo].[Select_State_Master]    Script Date: 2/23/2023 11:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Select_State_Master] 
				 @Id int
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
				id,
				Name
	from dbo.LP_STATE_MASTER  (nolock)
	where CountryID = @Id
	order by name
END


GO
USE [master]
GO
ALTER DATABASE [Advanced_Hospital] SET  READ_WRITE 
GO
