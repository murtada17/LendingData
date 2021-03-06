USE [master]
GO
/****** Object:  Database [HR]    Script Date: 19/11/2013 09:07:55 AM ******/
CREATE DATABASE [HR] ON  PRIMARY 
( NAME = N'HR_Salaries', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HR_Salaries.mdf' , SIZE = 9408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HR_Salaries_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HR_Salaries_log.LDF' , SIZE = 6400KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'HR', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HR] SET ARITHABORT OFF 
GO
ALTER DATABASE [HR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HR] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HR] SET RECOVERY FULL 
GO
ALTER DATABASE [HR] SET  MULTI_USER 
GO
ALTER DATABASE [HR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HR] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HR', N'ON'
GO
USE [HR]
GO
/****** Object:  Table [dbo].[ApplicationsTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationsTBL](
	[ApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationDescEN] [nvarchar](50) NOT NULL,
	[ApplicationDescAR] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationsTBL] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BloodTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BloodTBL](
	[BloodID] [tinyint] NOT NULL,
	[BloodType] [varchar](5) NULL,
 CONSTRAINT [PK_BloodTBL] PRIMARY KEY CLUSTERED 
(
	[BloodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchsTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchsTBL](
	[BranchID] [int] NOT NULL,
	[BranchDescEN] [nvarchar](50) NOT NULL,
	[BranchDescAR] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NULL,
	[BranchNo] [char](4) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BranchsTBL] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_ATBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_ATBL](
	[D_AID] [int] IDENTITY(1,1) NOT NULL,
	[TitleEN] [nvarchar](25) NOT NULL,
	[TitleAR] [nvarchar](25) NOT NULL,
	[GLCode] [int] NOT NULL,
	[IsAllowance] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AdditionsTBL] PRIMARY KEY CLUSTERED 
(
	[D_AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentTBL](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[DepartmentDescAR] [nvarchar](50) NULL,
	[DepartmentDescEN] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Address] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DepartmentTBL] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpD_ATBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpD_ATBL](
	[EmpD_AID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NOT NULL,
	[PercantageID] [int] NOT NULL,
	[Date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_EmpAdditionTBL] PRIMARY KEY CLUSTERED 
(
	[EmpD_AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employe]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employe](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_No] [int] NULL,
	[BranchID] [smallint] NOT NULL,
	[DepartmentID] [smallint] NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[MiddleName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NULL,
	[FirstName1] [nvarchar](20) NOT NULL,
	[MiddleName1] [nvarchar](20) NOT NULL,
	[LastName1] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[EmployeRank] [int] NOT NULL,
	[ContactPhone] [varchar](15) NULL,
	[Image] [image] NULL,
	[SexIsMale] [int] NOT NULL,
	[VisaCardNo] [char](16) NULL,
	[BirthDate] [smalldatetime] NOT NULL,
	[JoinDate] [smalldatetime] NOT NULL,
	[DetachDate] [smalldatetime] NULL,
	[LandLine] [char](10) NULL,
	[ChildrenCount] [int] NULL,
	[MirtualState] [smallint] NULL,
	[DetachmentReason] [int] NULL,
	[EmployeGroup] [bigint] NULL,
	[GraduationRank] [nchar](10) NULL,
	[InternalEmail] [varchar](70) NULL,
	[PersonalEmail] [varchar](150) NULL,
	[notice] [ntext] NULL,
 CONSTRAINT [PK_Employe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeesTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeesTBL](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[ID_No] [int] NULL,
	[BranchID] [int] NOT NULL,
	[DepartmentID] [smallint] NULL,
	[FirstNameEN] [nvarchar](20) NOT NULL,
	[MidNameEN] [nvarchar](20) NOT NULL,
	[LastNameEN] [nvarchar](50) NULL,
	[FirstNameAR] [nvarchar](20) NOT NULL,
	[MidNameAR] [nvarchar](20) NOT NULL,
	[LastNameAR] [nvarchar](50) NULL,
	[Address] [nvarchar](255) NULL,
	[EmployeRank] [int] NULL,
	[PhoneNo] [varchar](15) NULL,
	[Image] [nvarchar](max) NULL,
	[LicenseDigreeID] [int] NULL,
	[LicenseNameID] [nchar](10) NULL,
	[GenderID] [tinyint] NOT NULL,
	[BasicSalary] [money] NULL,
	[VisaCardNo] [char](16) NULL,
	[BirthDate] [smalldatetime] NULL,
	[JoinDate] [smalldatetime] NULL,
	[LeaveDate] [smalldatetime] NULL,
	[ReJoinDate] [smalldatetime] NULL,
	[LastModification] [smalldatetime] NULL,
	[IsActive] [bit] NULL,
	[IsBlocked] [bit] NULL,
	[EmergencyComtactName] [nvarchar](50) NULL,
	[EmergencyPhoneNo] [varchar](15) NULL,
	[LandLine] [char](10) NULL,
	[MaritalStatusID] [int] NULL,
	[ChildrenCount] [int] NULL,
	[ResignReasonID] [int] NULL,
	[EmployeGroup] [int] NULL,
	[BloodID] [tinyint] NULL,
	[InternalEmail] [varchar](255) NULL,
	[PersonalEmail] [varchar](255) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_EmployeesTBL] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GendersTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GendersTBL](
	[GenderID] [tinyint] NOT NULL,
	[GenderDescEN] [nvarchar](10) NULL,
	[GenderDescAR] [nvarchar](10) NULL,
 CONSTRAINT [PK_GendersTBL] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LicenseDegTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseDegTBL](
	[LicenseDegID] [smallint] NOT NULL,
	[LicenseDegDescAR] [nvarchar](50) NULL,
	[LicenseDegDescEN] [nvarchar](50) NULL,
 CONSTRAINT [PK_GradDegTBL] PRIMARY KEY CLUSTERED 
(
	[LicenseDegID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LicenseNameTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseNameTBL](
	[LicenseNameID] [int] IDENTITY(1,1) NOT NULL,
	[LicenseNameEN] [varchar](100) NULL,
	[LicenseNameAR] [nvarchar](100) NULL,
 CONSTRAINT [PK_LicenseNameTBL] PRIMARY KEY CLUSTERED 
(
	[LicenseNameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoansTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoansTBL](
	[LoanID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NOT NULL,
	[TypeID] [tinyint] NULL,
	[Amount] [bigint] NOT NULL,
	[Duration] [int] NOT NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[CloseDate] [smalldatetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LoansTBL] PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoanTypeTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanTypeTBL](
	[TypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TypeDescAR] [nvarchar](50) NULL,
	[TypeDescEN] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_LoanTypeTBL] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaritalStatusTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaritalStatusTBL](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusDescFAR] [nvarchar](50) NULL,
	[StatusDescMAR] [nvarchar](50) NULL,
	[StatusDescEN] [nvarchar](50) NULL,
 CONSTRAINT [PK_MirtualStateTBL] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentDetailsTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetailsTBL](
	[DetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[PaymentID] [bigint] NULL,
	[EmpID] [int] NULL,
	[BasicSalary] [money] NULL,
	[TotalAdded] [money] NULL,
	[TotalDeduction] [money] NULL,
 CONSTRAINT [PK_PaymentDetailsTBL] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTBL](
	[PaymentID] [bigint] IDENTITY(1,1) NOT NULL,
	[PaymentDate] [smalldatetime] NOT NULL,
	[EmployeesSum] [int] NOT NULL,
	[TotalBasicSalaries] [money] NULL,
	[TotalAllowances] [money] NULL,
	[TotalDeductions] [money] NULL,
 CONSTRAINT [PK_PaymentTBL] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PercantageTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PercantageTBL](
	[PercantageID] [int] IDENTITY(1,1) NOT NULL,
	[D_AID] [int] NOT NULL,
	[TitleEN] [nvarchar](255) NOT NULL,
	[TitleAR] [nvarchar](255) NOT NULL,
	[Value] [tinyint] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_PercantageTBL] PRIMARY KEY CLUSTERED 
(
	[PercantageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrivilegesTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrivilegesTBL](
	[PrivilegeID] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeDescAR] [nvarchar](50) NOT NULL,
	[PrivilegeDescEN] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PrivilegesTBL] PRIMARY KEY CLUSTERED 
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResignResonsTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResignResonsTBL](
	[ResonID] [int] NOT NULL,
	[ResonDescAR] [nvarchar](50) NULL,
	[ResonDescEN] [nvarchar](50) NULL,
 CONSTRAINT [PK_LeaveResonsTBL] PRIMARY KEY CLUSTERED 
(
	[ResonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPrivilegesTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPrivilegesTBL](
	[UPID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[PrivilegeID] [int] NOT NULL,
 CONSTRAINT [PK_UserPrivilegesTBL] PRIMARY KEY CLUSTERED 
(
	[UPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersTBL](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [smalldatetime] NULL,
	[LastUpdate] [smalldatetime] NULL,
 CONSTRAINT [PK_UsersTBL] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VicationsTBL]    Script Date: 19/11/2013 09:07:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VicationsTBL](
	[VicationID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NOT NULL,
	[WithBalance] [bit] NOT NULL,
	[DaysOfVication] [int] NOT NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
	[SubmitDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_VicationsTBL] PRIMARY KEY CLUSTERED 
(
	[VicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[EmpD_ATBL]  WITH CHECK ADD  CONSTRAINT [FK_EmpAdditionTBL_PercantageTBL] FOREIGN KEY([PercantageID])
REFERENCES [dbo].[PercantageTBL] ([PercantageID])
GO
ALTER TABLE [dbo].[EmpD_ATBL] CHECK CONSTRAINT [FK_EmpAdditionTBL_PercantageTBL]
GO
ALTER TABLE [dbo].[EmpD_ATBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesTBL_EmpAdditionTBL] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EmployeesTBL] ([EmpID])
GO
ALTER TABLE [dbo].[EmpD_ATBL] CHECK CONSTRAINT [FK_EmployeesTBL_EmpAdditionTBL]
GO
ALTER TABLE [dbo].[EmployeesTBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesTBL_BloodTBL] FOREIGN KEY([BloodID])
REFERENCES [dbo].[BloodTBL] ([BloodID])
GO
ALTER TABLE [dbo].[EmployeesTBL] CHECK CONSTRAINT [FK_EmployeesTBL_BloodTBL]
GO
ALTER TABLE [dbo].[EmployeesTBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesTBL_BranchsTBL] FOREIGN KEY([BranchID])
REFERENCES [dbo].[BranchsTBL] ([BranchID])
GO
ALTER TABLE [dbo].[EmployeesTBL] CHECK CONSTRAINT [FK_EmployeesTBL_BranchsTBL]
GO
ALTER TABLE [dbo].[EmployeesTBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesTBL_DepartmentTBL] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[DepartmentTBL] ([DepartmentID])
GO
ALTER TABLE [dbo].[EmployeesTBL] CHECK CONSTRAINT [FK_EmployeesTBL_DepartmentTBL]
GO
ALTER TABLE [dbo].[EmployeesTBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesTBL_GendersTBL] FOREIGN KEY([GenderID])
REFERENCES [dbo].[GendersTBL] ([GenderID])
GO
ALTER TABLE [dbo].[EmployeesTBL] CHECK CONSTRAINT [FK_EmployeesTBL_GendersTBL]
GO
ALTER TABLE [dbo].[EmployeesTBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesTBL_LeaveResonsTBL] FOREIGN KEY([ResignReasonID])
REFERENCES [dbo].[ResignResonsTBL] ([ResonID])
GO
ALTER TABLE [dbo].[EmployeesTBL] CHECK CONSTRAINT [FK_EmployeesTBL_LeaveResonsTBL]
GO
ALTER TABLE [dbo].[EmployeesTBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesTBL_MirtualStateTBL] FOREIGN KEY([MaritalStatusID])
REFERENCES [dbo].[MaritalStatusTBL] ([StatusID])
GO
ALTER TABLE [dbo].[EmployeesTBL] CHECK CONSTRAINT [FK_EmployeesTBL_MirtualStateTBL]
GO
ALTER TABLE [dbo].[LoansTBL]  WITH CHECK ADD  CONSTRAINT [FK_LoansTBL_EmployeesTBL] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EmployeesTBL] ([EmpID])
GO
ALTER TABLE [dbo].[LoansTBL] CHECK CONSTRAINT [FK_LoansTBL_EmployeesTBL]
GO
ALTER TABLE [dbo].[LoansTBL]  WITH CHECK ADD  CONSTRAINT [FK_LoansTBL_LoanTypeTBL] FOREIGN KEY([TypeID])
REFERENCES [dbo].[LoanTypeTBL] ([TypeID])
GO
ALTER TABLE [dbo].[LoansTBL] CHECK CONSTRAINT [FK_LoansTBL_LoanTypeTBL]
GO
ALTER TABLE [dbo].[PaymentDetailsTBL]  WITH CHECK ADD  CONSTRAINT [FK_PaymentDetailsTBL_EmployeesTBL] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EmployeesTBL] ([EmpID])
GO
ALTER TABLE [dbo].[PaymentDetailsTBL] CHECK CONSTRAINT [FK_PaymentDetailsTBL_EmployeesTBL]
GO
ALTER TABLE [dbo].[PaymentDetailsTBL]  WITH CHECK ADD  CONSTRAINT [FK_PaymentDetailsTBL_PaymentTBL] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[PaymentTBL] ([PaymentID])
GO
ALTER TABLE [dbo].[PaymentDetailsTBL] CHECK CONSTRAINT [FK_PaymentDetailsTBL_PaymentTBL]
GO
ALTER TABLE [dbo].[PercantageTBL]  WITH CHECK ADD  CONSTRAINT [FK_PercantageTBL_PercantageTBL] FOREIGN KEY([D_AID])
REFERENCES [dbo].[D_ATBL] ([D_AID])
GO
ALTER TABLE [dbo].[PercantageTBL] CHECK CONSTRAINT [FK_PercantageTBL_PercantageTBL]
GO
ALTER TABLE [dbo].[UserPrivilegesTBL]  WITH CHECK ADD  CONSTRAINT [FK_UserPrivilegesTBL_ApplicationsTBL] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[ApplicationsTBL] ([ApplicationID])
GO
ALTER TABLE [dbo].[UserPrivilegesTBL] CHECK CONSTRAINT [FK_UserPrivilegesTBL_ApplicationsTBL]
GO
ALTER TABLE [dbo].[UserPrivilegesTBL]  WITH CHECK ADD  CONSTRAINT [FK_UserPrivilegesTBL_PrivilegesTBL] FOREIGN KEY([PrivilegeID])
REFERENCES [dbo].[PrivilegesTBL] ([PrivilegeID])
GO
ALTER TABLE [dbo].[UserPrivilegesTBL] CHECK CONSTRAINT [FK_UserPrivilegesTBL_PrivilegesTBL]
GO
ALTER TABLE [dbo].[UserPrivilegesTBL]  WITH CHECK ADD  CONSTRAINT [FK_UserPrivilegesTBL_UsersTBL] FOREIGN KEY([UserID])
REFERENCES [dbo].[UsersTBL] ([UserID])
GO
ALTER TABLE [dbo].[UserPrivilegesTBL] CHECK CONSTRAINT [FK_UserPrivilegesTBL_UsersTBL]
GO
ALTER TABLE [dbo].[UsersTBL]  WITH CHECK ADD  CONSTRAINT [FK_UsersTBL_EmployeesTBL] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EmployeesTBL] ([EmpID])
GO
ALTER TABLE [dbo].[UsersTBL] CHECK CONSTRAINT [FK_UsersTBL_EmployeesTBL]
GO
ALTER TABLE [dbo].[VicationsTBL]  WITH CHECK ADD  CONSTRAINT [FK_VicationsTBL_EmployeesTBL] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EmployeesTBL] ([EmpID])
GO
ALTER TABLE [dbo].[VicationsTBL] CHECK CONSTRAINT [FK_VicationsTBL_EmployeesTBL]
GO
USE [master]
GO
ALTER DATABASE [HR] SET  READ_WRITE 
GO
