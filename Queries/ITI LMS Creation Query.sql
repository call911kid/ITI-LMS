USE [master]
GO
/****** Object:  Database [ITI_LMS]    Script Date: 05-Mar-26 1:05:59 PM ******/
CREATE DATABASE [ITI_LMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ITI_LMS_Primary', FILENAME = N'/var/opt/mssql/data/ITI_LMS_Primary.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [ExamData] 
( NAME = N'ITI_LMS_ExamData', FILENAME = N'/var/opt/mssql/data/ITI_LMS_ExamData.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ITI_LMS_log', FILENAME = N'/var/opt/mssql/data/ITI_LMS_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ITI_LMS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITI_LMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITI_LMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITI_LMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITI_LMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITI_LMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITI_LMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITI_LMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ITI_LMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITI_LMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITI_LMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITI_LMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITI_LMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITI_LMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITI_LMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITI_LMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITI_LMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ITI_LMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITI_LMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITI_LMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITI_LMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITI_LMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITI_LMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ITI_LMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITI_LMS] SET RECOVERY FULL 
GO
ALTER DATABASE [ITI_LMS] SET  MULTI_USER 
GO
ALTER DATABASE [ITI_LMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITI_LMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ITI_LMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ITI_LMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ITI_LMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ITI_LMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ITI_LMS', N'ON'
GO
ALTER DATABASE [ITI_LMS] SET QUERY_STORE = ON
GO
ALTER DATABASE [ITI_LMS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ITI_LMS]
GO
/****** Object:  User [youssefahmed-336]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [youssefahmed-336] FOR LOGIN [youssefahmed-336] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Shahd-Mohy]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Shahd-Mohy] FOR LOGIN [Shahd-Mohy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sarah-nadi]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [sarah-nadi] FOR LOGIN [sarah-nadi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Sara_Studenttt]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Sara_Studenttt] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Sara_Studentt]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Sara_Studentt] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [salmamomen128-eng]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [salmamomen128-eng] FOR LOGIN [salmamomen128-eng] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RomanyMalak]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [RomanyMalak] FOR LOGIN [RomanyMalak] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [remonda7]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [remonda7] FOR LOGIN [remonda7] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ReemAbdelkader]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [ReemAbdelkader] FOR LOGIN [ReemAbdelkader] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rawan-rabi3]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [rawan-rabi3] FOR LOGIN [rawan-rabi3] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [raniaraaef]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [raniaraaef] FOR LOGIN [raniaraaef] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OmarKotb137]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [OmarKotb137] FOR LOGIN [OmarKotb137] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Omar_Admin]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Omar_Admin] FOR LOGIN [Omar_Admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nourehanhanea-collab]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [nourehanhanea-collab] FOR LOGIN [nourehanhanea-collab] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mostafamohamed-code]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [mostafamohamed-code] FOR LOGIN [mostafamohamed-code] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [moohamedam]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [moohamedam] FOR LOGIN [moohamedam] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MohamedOmar_Student]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [MohamedOmar_Student] FOR LOGIN [MohamedOmar_Student] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Mohamed-Mayez]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Mohamed-Mayez] FOR LOGIN [Mohamed-Mayez] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MohamedAhmed_Instructor]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [MohamedAhmed_Instructor] FOR LOGIN [MohamedAhmed_Instructor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mohamedabdeldayem7]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [mohamedabdeldayem7] FOR LOGIN [mohamedabdeldayem7] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MernaSobhi]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [MernaSobhi] FOR LOGIN [MernaSobhi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MenaMagdyEbied]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [MenaMagdyEbied] FOR LOGIN [MenaMagdyEbied] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Mahmoud-Saber12]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Mahmoud-Saber12] FOR LOGIN [Mahmoud-Saber12] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HossSalama]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [HossSalama] FOR LOGIN [HossSalama] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [hassanah391]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [hassanah391] FOR LOGIN [hassanah391] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HagerGamal83]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [HagerGamal83] FOR LOGIN [HagerGamal83] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [FatmaAli111]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [FatmaAli111] FOR LOGIN [FatmaAli111] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [fadysameh2]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [fadysameh2] FOR LOGIN [fadysameh2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DoaaAshraf210]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [DoaaAshraf210] FOR LOGIN [DoaaAshraf210] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [call911kid]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [call911kid] FOR LOGIN [call911kid] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [aymansoltan]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [aymansoltan] FOR LOGIN [aymansoltan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AsmaaIbrahim-lab]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [AsmaaIbrahim-lab] FOR LOGIN [AsmaaIbrahim-lab] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Androibrahim]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Androibrahim] FOR LOGIN [Androibrahim] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [amral6ss]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [amral6ss] FOR LOGIN [amral6ss] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [amiraYeh]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [amiraYeh] FOR LOGIN [amiraYeh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Ali_Manager]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Ali_Manager] FOR LOGIN [Ali_Manager] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AhmedHosni19]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [AhmedHosni19] FOR LOGIN [AhmedHosni19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Ahmed-AshrafBakr]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [Ahmed-AshrafBakr] FOR LOGIN [Ahmed-AshrafBakr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [abdoAi1900]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [abdoAi1900] FOR LOGIN [abdoAi1900] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [abdalhadydev]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [abdalhadydev] FOR LOGIN [abdalhadydev] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [77amdysoliman]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [77amdysoliman] FOR LOGIN [77amdysoliman] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [3raBy]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [3raBy] FOR LOGIN [3raBy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [3bdomo]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [3bdomo] FOR LOGIN [3bdomo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [0000_Omar_Student]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE USER [0000_Omar_Student] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [TrainingManagerRole]    Script Date: 05-Mar-26 1:06:00 PM ******/
CREATE ROLE [TrainingManagerRole]
GO
/****** Object:  DatabaseRole [StudentRole]    Script Date: 05-Mar-26 1:06:01 PM ******/
CREATE ROLE [StudentRole]
GO
/****** Object:  DatabaseRole [InstructorRole]    Script Date: 05-Mar-26 1:06:01 PM ******/
CREATE ROLE [InstructorRole]
GO
/****** Object:  DatabaseRole [AdminRole]    Script Date: 05-Mar-26 1:06:01 PM ******/
CREATE ROLE [AdminRole]
GO
ALTER ROLE [StudentRole] ADD MEMBER [youssefahmed-336]
GO
ALTER ROLE [StudentRole] ADD MEMBER [Shahd-Mohy]
GO
ALTER ROLE [StudentRole] ADD MEMBER [sarah-nadi]
GO
ALTER ROLE [StudentRole] ADD MEMBER [Sara_Studenttt]
GO
ALTER ROLE [StudentRole] ADD MEMBER [Sara_Studentt]
GO
ALTER ROLE [StudentRole] ADD MEMBER [salmamomen128-eng]
GO
ALTER ROLE [StudentRole] ADD MEMBER [RomanyMalak]
GO
ALTER ROLE [StudentRole] ADD MEMBER [remonda7]
GO
ALTER ROLE [StudentRole] ADD MEMBER [ReemAbdelkader]
GO
ALTER ROLE [StudentRole] ADD MEMBER [rawan-rabi3]
GO
ALTER ROLE [StudentRole] ADD MEMBER [raniaraaef]
GO
ALTER ROLE [StudentRole] ADD MEMBER [OmarKotb137]
GO
ALTER ROLE [StudentRole] ADD MEMBER [nourehanhanea-collab]
GO
ALTER ROLE [StudentRole] ADD MEMBER [mostafamohamed-code]
GO
ALTER ROLE [StudentRole] ADD MEMBER [moohamedam]
GO
ALTER ROLE [StudentRole] ADD MEMBER [MohamedOmar_Student]
GO
ALTER ROLE [StudentRole] ADD MEMBER [Mohamed-Mayez]
GO
ALTER ROLE [InstructorRole] ADD MEMBER [MohamedAhmed_Instructor]
GO
ALTER ROLE [StudentRole] ADD MEMBER [mohamedabdeldayem7]
GO
ALTER ROLE [StudentRole] ADD MEMBER [MernaSobhi]
GO
ALTER ROLE [StudentRole] ADD MEMBER [MenaMagdyEbied]
GO
ALTER ROLE [StudentRole] ADD MEMBER [Mahmoud-Saber12]
GO
ALTER ROLE [StudentRole] ADD MEMBER [HossSalama]
GO
ALTER ROLE [StudentRole] ADD MEMBER [hassanah391]
GO
ALTER ROLE [StudentRole] ADD MEMBER [HagerGamal83]
GO
ALTER ROLE [StudentRole] ADD MEMBER [FatmaAli111]
GO
ALTER ROLE [StudentRole] ADD MEMBER [fadysameh2]
GO
ALTER ROLE [StudentRole] ADD MEMBER [DoaaAshraf210]
GO
ALTER ROLE [StudentRole] ADD MEMBER [call911kid]
GO
ALTER ROLE [StudentRole] ADD MEMBER [aymansoltan]
GO
ALTER ROLE [StudentRole] ADD MEMBER [AsmaaIbrahim-lab]
GO
ALTER ROLE [StudentRole] ADD MEMBER [Androibrahim]
GO
ALTER ROLE [StudentRole] ADD MEMBER [amral6ss]
GO
ALTER ROLE [StudentRole] ADD MEMBER [amiraYeh]
GO
ALTER ROLE [TrainingManagerRole] ADD MEMBER [Ali_Manager]
GO
ALTER ROLE [StudentRole] ADD MEMBER [AhmedHosni19]
GO
ALTER ROLE [StudentRole] ADD MEMBER [Ahmed-AshrafBakr]
GO
ALTER ROLE [StudentRole] ADD MEMBER [abdoAi1900]
GO
ALTER ROLE [StudentRole] ADD MEMBER [abdalhadydev]
GO
ALTER ROLE [StudentRole] ADD MEMBER [77amdysoliman]
GO
ALTER ROLE [StudentRole] ADD MEMBER [3raBy]
GO
ALTER ROLE [StudentRole] ADD MEMBER [3bdomo]
GO
ALTER ROLE [StudentRole] ADD MEMBER [0000_Omar_Student]
GO
ALTER ROLE [db_owner] ADD MEMBER [AdminRole]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AdminRole]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AdminRole]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckClassExists]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create Function That Check If Class Is Exists Or Not

CREATE FUNCTION [dbo].[FN_CheckClassExists] 
(
	 @InstructorId INT,
	 @CourseId INT,
	 @IntakeTrackId INT
)
RETURNS BIT AS
BEGIN
	DECLARE @Exists BIT = 0
	IF EXISTS (
		SELECT 1 FROM [dbo].[Class]
		WHERE InstructorId = @InstructorId 
		AND CourseId = @CourseId
		AND IntakeTrackId = @IntakeTrackId
		)
	SET @Exists = 1

	RETURN @Exists
END





GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckQuestionExists]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_CheckQuestionExists](@QuestionText NVARCHAR(300)) 
RETURNS BIT
AS
BEGIN
	DECLARE @Result BIT = 0
	IF EXISTS (SELECT 1 FROM [dbo].[Question] WHERE [QuestionBody] = @QuestionText)
	SET @Result = 1

	RETURN @Result
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetChoiceCount]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_GetChoiceCount](@QuestionId INT)
RETURNS INT
AS
BEGIN
	DECLARE @Count INT
	SELECT @Count = COUNT(*) FROM [dbo].[Choice] WHERE [QuestionId] = @QuestionId

	RETURN @Count
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetClassCountByTrack]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create Function That Returns The Number Of Classes Of An Track

CREATE FUNCTION [dbo].[FN_GetClassCountByTrack](@TrackId INT) 
RETURNS INT
AS
BEGIN
	DECLARE @ClassCount INT
	SELECT @ClassCount = COUNT(*)
	FROM [dbo].[Class] C
	JOIN [dbo].[IntakeTrack] IT ON C.IntakeTrackId = IT.IntakeTrackId
	WHERE IT.TrackId = @TrackId;

	RETURN @ClassCount;
END;


GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetCurrentInstructorId]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- returns the actual instructorId for the logged-in user

CREATE FUNCTION [dbo].[FN_GetCurrentInstructorId]()
RETURNS INT
AS
BEGIN
	DECLARE @instructorId INT;

	SELECT @instructorId = [InstructorId]
	FROM [dbo].[User] JOIN [dbo].[Instructor] ON [User].[UserId] = [Instructor].[UserId]
	WHERE [User].[Username] = SUSER_SNAME();

	RETURN @instructorId;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetCurrentStudentId]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- returns the actual studentId for the logged-in user

CREATE FUNCTION [dbo].[FN_GetCurrentStudentId]()
RETURNS INT
AS
BEGIN
	DECLARE @studentId INT;

	SELECT @studentId = [StudentId]
	FROM [dbo].[User] JOIN [dbo].[Student] ON [User].[UserId] = [Student].[UserId]
	WHERE [User].[Username] = SUSER_SNAME();

	RETURN @studentId;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetInstructorClassCount]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create Function That Returns The Number Of Classes Of An Instructor

CREATE FUNCTION [dbo].[FN_GetInstructorClassCount](@InstructorId INT) 
RETURNS INT 
AS
BEGIN
	DECLARE @ClassCount INT
	SELECT @ClassCount = COUNT(*)
	FROM [dbo].[Class]
	WHERE InstructorId = @InstructorId;

	RETURN @ClassCount;
END;

GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetStudentsCountByIntakeTrack]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- gets the total number of students enrolled in a specific track and intake

CREATE FUNCTION [dbo].[FN_GetStudentsCountByIntakeTrack]
(
	@IntakeTrackId INT
)
RETURNS INT
AS
BEGIN
	DECLARE @StudentsCount INT;

	SELECT @StudentsCount = COUNT([StudentId])
	FROM [dbo].[Student]
	WHERE [IntakeTrackId] = @IntakeTrackId;

	RETURN @StudentsCount;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetTrackCountPerDepartment]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_GetTrackCountPerDepartment] (@departmentId INT)
RETURNS INT
AS
BEGIN
    DECLARE @trackCount INT;

    SELECT 
        @trackCount = COUNT([TrackId])
    FROM [dbo].[Track]
    WHERE [DepartmentId] = @departmentId

    RETURN @trackCount
END
GO
/****** Object:  UserDefinedFunction [dbo].[UFN_ContainsAllKeywords]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   FUNCTION [dbo].[UFN_ContainsAllKeywords]
(
    @StudentAnswer  NVARCHAR(MAX),
    @CorrectAnswer  NVARCHAR(MAX)
)
RETURNS BIT
AS
BEGIN
    IF @StudentAnswer IS NULL OR @CorrectAnswer IS NULL
        RETURN 0;

    DECLARE @Answer  NVARCHAR(MAX) = LOWER(LTRIM(RTRIM(@StudentAnswer)));
    DECLARE @Keys    NVARCHAR(MAX) = LOWER(LTRIM(RTRIM(@CorrectAnswer))) + ' ';
    DECLARE @Word    NVARCHAR(500);
    DECLARE @Pos     INT;

    WHILE LEN(@Keys) > 0
    BEGIN
        SET @Pos  = CHARINDEX(' ', @Keys);
        SET @Word = LTRIM(RTRIM(SUBSTRING(@Keys, 1, @Pos - 1)));
        SET @Keys = SUBSTRING(@Keys, @Pos + 1, LEN(@Keys));

        IF LEN(@Word) > 0
           AND @Answer NOT LIKE '%' + @Word + '%'
            RETURN 0;
    END

    RETURN 1;
END;

GO
/****** Object:  Table [dbo].[Intake]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intake](
	[IntakeId] [int] IDENTITY(1,1) NOT NULL,
	[IntakeName] [nvarchar](50) NOT NULL,
	[IntakeYear] [int] NOT NULL,
 CONSTRAINT [PK_Intake] PRIMARY KEY CLUSTERED 
(
	[IntakeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_IntakeFullInfo]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creating View All Intake

CREATE VIEW [dbo].[VW_IntakeFullInfo] AS
SELECT
[IntakeId],
[IntakeName],
[IntakeYear]
FROM [dbo].[Intake]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorId] [int] IDENTITY(1,1) NOT NULL,
	[InstructorName] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntakeTrack]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntakeTrack](
	[IntakeTrackId] [int] IDENTITY(1,1) NOT NULL,
	[IntakeId] [int] NOT NULL,
	[TrackId] [int] NOT NULL,
	[BranchId] [int] NOT NULL,
 CONSTRAINT [PK_IntakeTrack] PRIMARY KEY CLUSTERED 
(
	[IntakeTrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[IntakeTrackId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NOT NULL,
	[BranchAddress] [nvarchar](255) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](100) NOT NULL,
	[CourseDescription] [nvarchar](max) NULL,
	[MaxDegree] [int] NOT NULL,
	[MinDegree] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_InstructorCourses]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_InstructorCourses] AS
SELECT 
    i.InstructorId,
    i.InstructorName,
    c.ClassId,
    co.CourseId,
    co.CourseName,
    it.IntakeTrackId,
    it.IntakeId,
    it.TrackId,
    b.BranchName
FROM Instructor i
JOIN Class c ON i.InstructorId = c.InstructorId
JOIN Course co ON c.CourseId = co.CourseId
JOIN IntakeTrack it ON c.IntakeTrackId = it.IntakeTrackId
JOIN Branch b ON it.BranchId = b.BranchId;
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[IntakeTrackId] [int] NOT NULL,
	[ExamType] [nvarchar](25) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
) ON [ExamData]
GO
/****** Object:  View [dbo].[VW_ExamDetails]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ExamDetails] AS
SELECT
    e.ExamId,
    e.ExamType,
    e.StartTime,
    e.EndTime,
    co.CourseName,
    i.InstructorName,
    it.IntakeTrackId,
    it.IntakeId,
    it.TrackId,
    b.BranchName
FROM Exam e
JOIN Course co ON e.CourseId = co.CourseId
JOIN IntakeTrack it ON e.IntakeTrackId = it.IntakeTrackId
JOIN Class cl ON cl.CourseId = co.CourseId AND cl.IntakeTrackId = it.IntakeTrackId
JOIN Instructor i ON cl.InstructorId = i.InstructorId
JOIN Branch b ON it.BranchId = b.BranchId;
GO
/****** Object:  Table [dbo].[Department]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_AllDepartments]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_AllDepartments]
AS
SELECT 
    [DepartmentId],
    [DepartmentName]
FROM [dbo].[Department]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[ChoiceId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[ChoiceText] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Choice] PRIMARY KEY CLUSTERED 
(
	[ChoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
) ON [ExamData] TEXTIMAGE_ON [ExamData]
GO
/****** Object:  View [dbo].[VW_Choices]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- create view that display the data of Choice Table

CREATE VIEW [dbo].[VW_Choices] AS
SELECT [ChoiceId] , [ChoiceText] FROM [dbo].[Choice]
GO
/****** Object:  View [dbo].[VW_BranchFullInfo]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creating View All Branch


CREATE VIEW [dbo].[VW_BranchFullInfo] AS
SELECT
[BranchId],
[BranchName],
[BranchAddress]
FROM [dbo].[Branch]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
	[IntakeTrackId] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_InstructorStudents]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----The role of the manger... presenting all students with the instructor they are teaching. .....need to check the column names. and JOIN  path
CREATE VIEW [dbo].[VW_InstructorStudents]
AS
SELECT
    i.InstructorId,
    i.InstructorName,
    c.ClassId,
    co.CourseId,
    co.CourseName,
    s.StudentId,
    s.StudentName,
    s.IntakeTrackId,
    it.IntakeId,
    it.TrackId,
    b.BranchId,
    b.BranchName
FROM Instructor i
INNER JOIN Class c ON c.InstructorId = i.InstructorId
INNER JOIN Course co ON co.CourseId = c.CourseId
INNER JOIN Student s ON s.IntakeTrackId = c.IntakeTrackId
INNER JOIN IntakeTrack it ON it.IntakeTrackId = s.IntakeTrackId
INNER JOIN Branch b ON b.BranchId = it.BranchId;
GO
/****** Object:  Table [dbo].[Question]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[QuestionType] [nvarchar](20) NOT NULL,
	[QuestionBody] [nvarchar](max) NOT NULL,
	[CorrectAnswer] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
) ON [ExamData] TEXTIMAGE_ON [ExamData]
GO
/****** Object:  View [dbo].[VW_Questions]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- create view that display the data of Question Table

CREATE VIEW [dbo].[VW_Questions] AS
SELECT 
	Q.[QuestionId] , 
	Q.[QuestionType] , 
	Q.[QuestionBody] , 
	Q.[CorrectAnswer],
	C.CourseId
	FROM [dbo].[Question] Q
	JOIN [dbo].[Course] C ON Q.CourseId = C.CourseId
GO
/****** Object:  Table [dbo].[Track]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[TrackId] [int] IDENTITY(1,1) NOT NULL,
	[TrackName] [nvarchar](50) NOT NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_Track] PRIMARY KEY CLUSTERED 
(
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_IntakeTrack]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creating Veiw IntakeTrake

CREATE VIEW [dbo].[VW_IntakeTrack] AS
SELECT
I.[IntakeName],
I.[IntakeYear],
T.[TrackName],
D.[DepartmentName],
B.[BranchName]
FROM [dbo].[Intake] I
LEFT JOIN [dbo].[IntakeTrack] IT ON IT.IntakeId = I.IntakeId
LEFT JOIN [dbo].[Track] T ON T.TrackId = IT.TrackId
LEFT JOIN [dbo].[Department] D ON D.DepartmentId = T.DepartmentId
LEFT JOIN [dbo].[Branch] B ON B.BranchId = IT.BranchId

--INSERT INTO IntakeTrack (IntakeId, TrackId, BranchId)
--VALUES (1, 1, 1) ,(2, 2, 2) ,(3, 3, 3) , (4, 4, 4) ,(5, 5, 5) , (6, 6, 6) , (7, 7, 7) , (8, 8, 8);


 


GO
/****** Object:  View [dbo].[VW_DepartmentTracksDetails]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_DepartmentTracksDetails]
AS
SELECT 
    [Track].[TrackId],
    [Track].[TrackName],
    [Department].[DepartmentId],
    [Department].[DepartmentName]
FROM [dbo].[Track]
INNER JOIN [dbo].[Department] ON [Track].[DepartmentId] = [Department].[DepartmentId]
GO
/****** Object:  View [dbo].[VW_ClassesPerTrack]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ClassesPerTrack] AS
SELECT
C.[ClassId],
IT.[IntakeTrackId],
T.[TrackId],
T.[TrackName]
FROM [dbo].[Class] C
JOIN [dbo].[IntakeTrack] IT ON IT.IntakeTrackId = C.[IntakeTrackId]
JOIN [dbo].[Track] T ON T.TrackId = IT.TrackId
GO
/****** Object:  View [dbo].[VW_ClassesPerInstructor]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ClassesPerInstructor] AS
SELECT 
C.[ClassId],
I.[InstructorId],
I.[InstructorName]
FROM [dbo].[Class] C
JOIN [dbo].[Instructor] I ON I.InstructorId = C.InstructorId
GO
/****** Object:  View [dbo].[VW_ClassDetails]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ClassDetails] AS
SELECT
C.[ClassId],
IT.[IntakeTrackId],
I.[InstructorId],
I.InstructorName,
CO.[CourseId],
CO.CourseName,
CO.CourseDescription,
CO.MaxDegree,
CO.MinDegree,
T.TrackName
FROM [dbo].[Class] C
JOIN  [dbo].[IntakeTrack] IT ON IT.IntakeTrackId = C.[IntakeTrackId]
JOIN [dbo].[Instructor] I ON I.[InstructorId] = C.[InstructorId]
JOIN [dbo].[Course] CO ON CO.CourseId = C.CourseId
JOIN [dbo].[Track] T ON T.TrackId = IT.TrackId

GO
/****** Object:  View [dbo].[VW_AllTracks]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_AllTracks]
AS
SELECT 
    [TrackId],
    [TrackName],
    [DepartmentId]
FROM [dbo].[Track]
GO
/****** Object:  UserDefinedFunction [dbo].[TVF_GetStudentsByIntakeTrack]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- gets all students enrolled in a specific track and intake

CREATE FUNCTION [dbo].[TVF_GetStudentsByIntakeTrack]
(
	@intakeTrackId INT
)
RETURNS TABLE
AS
RETURN
(
	SELECT 
		[Student].[StudentId],
		[Student].[StudentName],
		[Student].[UserId],
		[Student].[IntakeTrackId],
		[Track].[TrackName],
		[Intake].[IntakeName]
	FROM [dbo].[Student]
		JOIN [dbo].[IntakeTrack] ON [Student].[IntakeTrackId] = [IntakeTrack].[IntakeTrackId]
		JOIN [dbo].[Track] ON [IntakeTrack].[TrackId] = [Track].[TrackId]
		JOIN [dbo].[Intake] ON [IntakeTrack].[IntakeId] = [Intake].[IntakeId]
	WHERE [Student].[IntakeTrackId] = @intakeTrackId
)

GO
/****** Object:  Table [dbo].[BackupLog]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackupLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[BackupType] [nvarchar](10) NULL,
	[FileName] [nvarchar](255) NULL,
	[BackupDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_BackupLog]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_BackupLog] AS
SELECT *
FROM [ITI_LMS].[dbo].[BackupLog];
GO
/****** Object:  Table [dbo].[ExamQuestion]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamQuestion](
	[ExamQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[ExamId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Marks] [int] NOT NULL,
 CONSTRAINT [PK_ExamQuestion] PRIMARY KEY CLUSTERED 
(
	[ExamQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
) ON [ExamData]
GO
/****** Object:  UserDefinedFunction [dbo].[TVF_GetExamPaperForStudent]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- returns the exam paper for a student, formatting MCQ choices with their ChoiceIds on new lines

CREATE FUNCTION [dbo].[TVF_GetExamPaperForStudent]
(
	@classId INT,
	@examType NVARCHAR(25)
)
RETURNS TABLE
AS
RETURN
(
	SELECT 
		[ExamQuestion].[ExamQuestionId],
		[Question].[QuestionBody],
		[Question].[QuestionType],
		[ExamQuestion].[Marks],
		ISNULL(STRING_AGG(CAST([Choice].[ChoiceId] AS VARCHAR(10)) + ') ' + [Choice].[ChoiceText], CHAR(13) + CHAR(10)), 'No choices (Text/TF)') AS [AvailableChoices]
	FROM [dbo].[Exam] 
	JOIN [dbo].[Class] ON [Exam].[CourseId] = [Class].[CourseId] AND [Exam].[IntakeTrackId] = [Class].[IntakeTrackId]
	JOIN [dbo].[ExamQuestion] ON [Exam].[ExamId] = [ExamQuestion].[ExamId]
	JOIN [dbo].[Question] ON [ExamQuestion].[QuestionId] = [Question].[QuestionId]
	JOIN [dbo].[Student] ON [Exam].[IntakeTrackId] = [Student].[IntakeTrackId]
	LEFT JOIN [dbo].[Choice] ON [Question].[QuestionId] = [Choice].[QuestionId]
	WHERE [Class].[ClassId] = @classId 
		AND [Exam].[ExamType] = @examType 
		AND [Student].[StudentId] = [dbo].[FN_GetCurrentStudentId]() 
	GROUP BY 
		[ExamQuestion].[ExamQuestionId],
		[Question].[QuestionBody],
		[Question].[QuestionType],
		[ExamQuestion].[Marks]
)
GO
/****** Object:  UserDefinedFunction [dbo].[TVF_GetExamPaperForInstructor]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- returns the exam paper and answer key for an instructor, formatting MCQ choices with their ChoiceIds on new lines

CREATE FUNCTION [dbo].[TVF_GetExamPaperForInstructor]
(
	@classId INT,
	@examType NVARCHAR(25)
)
RETURNS TABLE
AS
RETURN
(
	SELECT 
		[ExamQuestion].[ExamQuestionId],
		[Question].[QuestionBody],
		[Question].[QuestionType],
		[ExamQuestion].[Marks],
		[Question].[CorrectAnswer],
		ISNULL(STRING_AGG(CAST([Choice].[ChoiceId] AS VARCHAR(10)) + ') ' + [Choice].[ChoiceText], CHAR(13) + CHAR(10)), 'No choices') AS [AvailableChoices]
	FROM [dbo].[Exam] 
	JOIN [dbo].[Class] ON [Exam].[CourseId] = [Class].[CourseId] AND [Exam].[IntakeTrackId] = [Class].[IntakeTrackId]
	JOIN [dbo].[ExamQuestion] ON [Exam].[ExamId] = [ExamQuestion].[ExamId]
	JOIN [dbo].[Question] ON [ExamQuestion].[QuestionId] = [Question].[QuestionId]
	LEFT JOIN [dbo].[Choice] ON [Question].[QuestionId] = [Choice].[QuestionId]
	WHERE [Class].[ClassId] = @classId 
		AND [Exam].[ExamType] = @examType 
		AND [Class].[InstructorId] = [dbo].[FN_GetCurrentInstructorId]() 
	GROUP BY 
		[ExamQuestion].[ExamQuestionId],
		[Question].[QuestionBody],
		[Question].[QuestionType],
		[ExamQuestion].[Marks],
		[Question].[CorrectAnswer]
)
GO
/****** Object:  View [dbo].[VW_QuestionWithChoices]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_QuestionWithChoices]
AS
SELECT 
    Q.QuestionId,
    Q.QuestionBody,
    Q.QuestionType,
    Q.CorrectAnswer,
    C.ChoiceId,
    C.ChoiceText
FROM Question Q
LEFT JOIN Choice C ON Q.QuestionId = C.QuestionId;
GO
/****** Object:  UserDefinedFunction [dbo].[TVF_GetTracksByDepartmentId]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TVF_GetTracksByDepartmentId] (@departmentId INT)
RETURNS TABLE
AS
RETURN (
    SELECT 
        [TrackId],
        [TrackName],
        [DepartmentId]
    FROM [dbo].[Track]
    WHERE [DepartmentId] = @departmentId
)
GO
/****** Object:  Table [dbo].[Audit]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[Severity] [int] NULL,
	[State] [int] NULL,
	[Procedure] [nvarchar](128) NULL,
	[Line] [int] NULL,
	[Message] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Audit] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAnswer]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnswer](
	[StudentAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[StudentExamId] [int] NOT NULL,
	[AnswerText] [nvarchar](max) NULL,
	[MarksObtained] [int] NULL,
	[ExamQuestionId] [int] NOT NULL,
 CONSTRAINT [PK_StudentAnswer] PRIMARY KEY CLUSTERED 
(
	[StudentAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
) ON [ExamData] TEXTIMAGE_ON [ExamData]
GO
/****** Object:  Table [dbo].[StudentExam]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentExam](
	[StudentExamId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ExamId] [int] NOT NULL,
	[TotalMarks] [int] NULL,
	[ExamStatus] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_StudentExam] PRIMARY KEY CLUSTERED 
(
	[StudentExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
) ON [ExamData]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05-Mar-26 1:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Audit] ON 
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (1, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-03T22:11:48.120' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (2, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-03T22:13:45.487' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (3, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-03T22:14:19.210' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (4, 50000, 16, 1, N'dbo.USP_SubmitAnswer', 22, N'No exam found for the given class and exam type.', CAST(N'2026-03-03T22:23:57.397' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (5, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T21:31:56.757' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (6, 15023, 16, 6, NULL, 1, N'User, group, or role ''Ahmed_Student'' already exists in the current database.', CAST(N'2026-03-04T21:37:44.403' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (7, 15023, 16, 6, NULL, 1, N'User, group, or role ''Sara_Student'' already exists in the current database.', CAST(N'2026-03-04T21:39:12.590' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (8, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T21:39:23.747' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (9, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T21:39:38.160' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (10, 15023, 16, 6, NULL, 1, N'User, group, or role ''Ahmed_Student'' already exists in the current database.', CAST(N'2026-03-04T21:40:04.503' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (11, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T21:43:40.977' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (12, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T21:44:15.053' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (13, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T21:44:51.760' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (14, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T21:45:33.773' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (15, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T21:46:22.820' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (16, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T21:47:50.470' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (17, 15023, 16, 6, NULL, 1, N'User, group, or role ''Mohamed_Instructor'' already exists in the current database.', CAST(N'2026-03-04T21:48:07.850' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (18, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T21:49:21.783' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (19, 15023, 16, 6, NULL, 1, N'User, group, or role ''Mohamed_Instructor'' already exists in the current database.', CAST(N'2026-03-04T21:49:35.160' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (20, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T21:56:09.417' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (21, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T21:57:42.223' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (22, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T21:59:07.913' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (23, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T22:00:41.357' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (24, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T22:01:03.760' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (25, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T22:01:14.000' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (26, 50000, 16, 1, N'dbo.USP_AddStudent', 15, N'IntakeTrackId does not exist.', CAST(N'2026-03-04T22:01:23.890' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (27, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T22:04:12.983' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (28, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T22:05:51.943' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (29, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T22:06:29.070' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (30, 50000, 16, 1, N'dbo.USP_AddUserAccount', 27, N'A SQL Server Login with this name already exists.', CAST(N'2026-03-04T22:08:37.423' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (31, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T22:08:51.390' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (32, 2627, 14, 1, N'dbo.USP_AddIntakeTrack', 11, N'Violation of UNIQUE KEY constraint ''Unique_Intake_Track_Branch''. Cannot insert duplicate key in object ''dbo.IntakeTrack''. The duplicate key value is (8, 1, 9).', CAST(N'2026-03-04T22:20:58.377' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (33, 33064, 16, 2, NULL, 1, N'Password validation failed. The password does not meet SQL Server password policy requirements because it is not complex enough. The password must be at least 8 characters long and contain characters from three of the following four sets: Uppercase letters, Lowercase letters, Base 10 digits, and Symbols.', CAST(N'2026-03-04T22:34:34.547' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (34, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T22:36:48.640' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (35, 33064, 16, 2, NULL, 1, N'Password validation failed. The password does not meet SQL Server password policy requirements because it is not complex enough. The password must be at least 8 characters long and contain characters from three of the following four sets: Uppercase letters, Lowercase letters, Base 10 digits, and Symbols.', CAST(N'2026-03-04T22:37:08.410' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (36, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T22:42:28.870' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (37, 33064, 16, 2, NULL, 1, N'Password validation failed. The password does not meet SQL Server password policy requirements because it is not complex enough. The password must be at least 8 characters long and contain characters from three of the following four sets: Uppercase letters, Lowercase letters, Base 10 digits, and Symbols.', CAST(N'2026-03-04T22:43:49.337' AS DateTime))
GO
INSERT [dbo].[Audit] ([LogId], [Number], [Severity], [State], [Procedure], [Line], [Message], [Date]) VALUES (38, 50000, 16, 1, N'dbo.USP_AddUserAccount', 21, N'Username already exists in the User table.', CAST(N'2026-03-04T22:46:48.047' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Audit] OFF
GO
SET IDENTITY_INSERT [dbo].[BackupLog] ON 
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (1, N'DIFF', N'/var/opt/mssql/backups/ITI_LMS_DIFF_20260304_193045.bak', CAST(N'2026-03-04T19:30:45.247' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (2, N'FULL', N'C:\Backups\ITI_LMS_FULL_20260304_193114.bak', CAST(N'2026-03-04T19:31:14.330' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (3, N'FULL', N'/var/opt/mssql/backupsITI_LMS_FULL_20260304_193155.bak', CAST(N'2026-03-04T19:31:55.730' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (4, N'DIFF', N'/var/opt/mssql/backups/ITI_LMS_DIFF_20260304_194234.bak', CAST(N'2026-03-04T19:42:34.783' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (5, N'FULL', N'/var/opt/mssql/backupsITI_LMS_FULL_20260304_194316.bak', CAST(N'2026-03-04T19:43:17.027' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (6, N'FULL', N'/var/opt/mssql/backupsITI_LMS_FULL_20260304_194512.bak', CAST(N'2026-03-04T19:45:12.313' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (7, N'FULL', N'/var/opt/mssql/backupsITI_LMS_FULL_20260304_194544.bak', CAST(N'2026-03-04T19:45:44.580' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (8, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260304_194824.bak', CAST(N'2026-03-04T19:48:25.090' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (9, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260304_194855.bak', CAST(N'2026-03-04T19:48:55.520' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (10, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260304_200000.bak', CAST(N'2026-03-04T20:00:00.767' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (11, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260304_210001.bak', CAST(N'2026-03-04T21:00:01.237' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (12, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260304_220000.bak', CAST(N'2026-03-04T22:00:00.763' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (13, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260304_230000.bak', CAST(N'2026-03-04T23:00:00.320' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (14, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_000000.bak', CAST(N'2026-03-05T00:00:00.850' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (15, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_010000.bak', CAST(N'2026-03-05T01:00:00.393' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (16, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_020000.bak', CAST(N'2026-03-05T02:00:00.907' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (17, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_020001.bak', CAST(N'2026-03-05T02:00:01.657' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (18, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_030001.bak', CAST(N'2026-03-05T03:00:01.213' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (19, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_040000.bak', CAST(N'2026-03-05T04:00:00.793' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (20, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_050000.bak', CAST(N'2026-03-05T05:00:00.263' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (21, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_060000.bak', CAST(N'2026-03-05T06:00:00.803' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (22, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_070000.bak', CAST(N'2026-03-05T07:00:00.580' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (23, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_080000.bak', CAST(N'2026-03-05T08:00:01.040' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (24, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_090000.bak', CAST(N'2026-03-05T09:00:00.573' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (25, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_100000.bak', CAST(N'2026-03-05T10:00:01.100' AS DateTime))
GO
INSERT [dbo].[BackupLog] ([LogId], [BackupType], [FileName], [BackupDate]) VALUES (26, N'FULL', N'/var/opt/mssql/backups/ITI_LMS_FULL_20260305_110000.bak', CAST(N'2026-03-05T11:00:00.610' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BackupLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Branch] ON 
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (1, N'Smart Village', N'Building B148, KM 28 Cairo-Alexandria Desert Road, 6th of October, Giza')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (2, N'New Capital', N'Building 4, Knowledge City, New Administrative Capital, Cairo')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (3, N'Alexandria', N'1 Mahmoud Salama St, El Shohadaa Sq, inside Post Office Building, Misr Station, Alexandria')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (4, N'Cairo University', N'Creativa Innovation Hub, Inside Cairo University Campus, Giza')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (5, N'Mansoura', N'Floor 4, Faculty Of Computers & Information, Mansoura University, 60 El Gomhoureya St, El Dakahlia')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (6, N'Assiut', N'Floor 4, Information Network Building, Nayla Khatoun, Assiut University, Assiut')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (7, N'Ismailia', N'KM 4.5 Ring Road, Inside Suez Canal University, Ismailia')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (8, N'Menoufia', N'Creativa Innovation Hub, Inside Menoufia University, Shebin El Kom')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (9, N'Minya', N'Creativa Innovation Hub, Inside Minya University, Minya')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (10, N'Sohag', N'Creativa Innovation Hub, Inside Sohag University, Sohag')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (11, N'Qena', N'Creativa Innovation Hub, Inside South Valley University, Qena')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (12, N'Aswan', N'Creativa Innovation Hub, Inside Aswan University, Sahari City, Aswan')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (13, N'Benha', N'Creativa Innovation Hub, Inside Benha University, Al Qalyubia')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (14, N'Fayoum', N'Creativa Innovation Hub, Inside Fayoum University, Fayoum')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (15, N'Zagazig', N'Creativa Innovation Hub, Inside Zagazig University, Al Sharqia')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (16, N'Damanhour', N'Creativa Innovation Hub, Inside Damanhour University, El Beheira')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (17, N'Tanta', N'Creativa Innovation Hub, Inside Tanta University, El Gharbia')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (18, N'Port Said', N'Creativa Innovation Hub, Inside Port Said University, Port Said')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (19, N'Damietta', N'Creativa Innovation Hub, Inside Damietta University, New Damietta')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (20, N'Al Arish', N'North Sinai Governorate, Al Arish City')
GO
INSERT [dbo].[Branch] ([BranchId], [BranchName], [BranchAddress]) VALUES (21, N'New Valley', N'Creativa Innovation Hub, New Valley Governorate')
GO
SET IDENTITY_INSERT [dbo].[Branch] OFF
GO
SET IDENTITY_INSERT [dbo].[Choice] ON 
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (1, 4, N':')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (2, 4, N'extends')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (3, 4, N'implements')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (4, 4, N'inherits')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (5, 5, N'internal')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (6, 5, N'public')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (7, 5, N'private')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (8, 5, N'protected')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (9, 6, N'Main')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (10, 6, N'Start')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (11, 6, N'Init')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (12, 6, N'Execute')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (13, 10, N'Abstraction')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (14, 10, N'Encapsulation')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (15, 10, N'Inheritance')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (16, 10, N'Polymorphism')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (17, 11, N'Same method name, different parameters')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (18, 11, N'Same method name, same parameters')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (19, 11, N'Different method name, same parameters')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (20, 11, N'Inheriting a method from a parent')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (21, 12, N'sealed')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (22, 12, N'static')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (23, 12, N'final')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (24, 12, N'const')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (25, 16, N'<a>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (26, 16, N'<link>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (27, 16, N'<href>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (28, 16, N'<url>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (29, 17, N'<h1>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (30, 17, N'<heading>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (31, 17, N'<h6>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (32, 17, N'<head>')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (33, 18, N'Hyper Text Markup Language')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (34, 18, N'Hyperlinks and Text Markup Language')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (35, 18, N'Home Tool Markup Language')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (36, 18, N'Hyper Tool Markup Language')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (37, 22, N'date')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (38, 22, N'datetime')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (39, 22, N'calendar')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (40, 22, N'time')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (41, 23, N'Stores data with no expiration date')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (42, 23, N'Stores data for one session only')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (43, 23, N'Stores data securely on the database server')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (44, 23, N'Stores temporary variables for functions')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (45, 24, N'required')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (46, 24, N'mandatory')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (47, 24, N'validate')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (48, 24, N'important')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (49, 28, N'font-size')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (50, 28, N'text-style')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (51, 28, N'text-size')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (52, 28, N'font-weight')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (53, 29, N'#demo')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (54, 29, N'.demo')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (55, 29, N'demo')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (56, 29, N'*demo')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (57, 30, N'static')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (58, 30, N'relative')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (59, 30, N'absolute')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (60, 30, N'fixed')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (61, 34, N'border-radius')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (62, 34, N'corner-radius')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (63, 34, N'box-round')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (64, 34, N'border-style')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (65, 35, N'Viewport Width')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (66, 35, N'Visual Width')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (67, 35, N'Vertical Width')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (68, 35, N'View Window')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (69, 36, N'text-shadow')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (70, 36, N'font-shadow')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (71, 36, N'shadow-text')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (72, 36, N'box-shadow')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (73, 40, N'JSON.parse()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (74, 40, N'JSON.stringify()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (75, 40, N'JSON.object()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (76, 40, N'JSON.toObject()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (77, 41, N'let')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (78, 41, N'var')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (79, 41, N'constant')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (80, 41, N'def')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (81, 42, N'setTimeout()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (82, 42, N'setInterval()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (83, 42, N'setDelay()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (84, 42, N'setTimer()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (85, 46, N'Destructuring')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (86, 46, N'Spread syntax')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (87, 46, N'Rest parameters')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (88, 46, N'Interpolation')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (89, 47, N'Backticks (`)')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (90, 47, N'Single quotes ('')')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (91, 47, N'Double quotes (")')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (92, 47, N'Parentheses ()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (93, 48, N'filter()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (94, 48, N'map()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (95, 48, N'reduce()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (96, 48, N'forEach()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (97, 52, N'DROP TABLE')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (98, 52, N'DELETE TABLE')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (99, 52, N'REMOVE TABLE')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (100, 52, N'TRUNCATE TABLE')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (101, 53, N'Returns the number of rows that match a specified criterion')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (102, 53, N'Returns the sum of a numeric column')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (103, 53, N'Returns the average value of a numeric column')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (104, 53, N'Returns the highest value')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (105, 54, N'ORDER BY')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (106, 54, N'SORT BY')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (107, 54, N'GROUP BY')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (108, 54, N'ALIGN BY')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (109, 58, N'Views')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (110, 58, N'Pages')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (111, 58, N'Controllers')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (112, 58, N'Models')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (113, 59, N'Handles user requests and builds the response')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (114, 59, N'Stores database records physically')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (115, 59, N'Styles the HTML elements')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (116, 59, N'Provides a physical network connection')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (117, 60, N'View()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (118, 60, N'Html()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (119, 60, N'Render()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (120, 60, N'Display()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (121, 64, N'.ts')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (122, 64, N'.tx')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (123, 64, N'.tsc')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (124, 64, N'.script')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (125, 65, N'interface')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (126, 65, N'class')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (127, 65, N'struct')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (128, 65, N'module')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (129, 66, N'tsconfig.json')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (130, 66, N'package.json')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (131, 66, N'angular.json')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (132, 66, N'webpack.config.js')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (133, 70, N'@Component')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (134, 70, N'@Injectable')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (135, 70, N'@Module')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (136, 70, N'@Directive')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (137, 71, N'To initialize, develop, scaffold, and maintain Angular applications')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (138, 71, N'To write server-side database queries')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (139, 71, N'To compile C# code into WebAssembly')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (140, 71, N'To manage Docker containers')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (141, 72, N'ngOnInit()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (142, 72, N'ngOnDestroy()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (143, 72, N'ngAfterViewInit()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (144, 72, N'ngOnChanges()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (145, 77, N'useEffect')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (146, 77, N'useState')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (147, 77, N'useContext')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (148, 77, N'useReducer')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (149, 78, N'Redux')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (150, 78, N'Vuex')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (151, 78, N'NgRx')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (152, 78, N'MobX')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (153, 79, N'createRoot()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (154, 79, N'render()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (155, 79, N'mount()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (156, 79, N'append()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (157, 83, N'http')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (158, 83, N'fs')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (159, 83, N'path')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (160, 83, N'url')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (161, 84, N'npm')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (162, 84, N'yarn')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (163, 84, N'pnpm')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (164, 84, N'pip')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (165, 87, N'BSON')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (166, 87, N'JSON')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (167, 87, N'XML')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (168, 87, N'CSV')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (169, 88, N'insertOne()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (170, 88, N'addOne()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (171, 88, N'create()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (172, 88, N'insert()')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (173, 89, N'_id')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (174, 89, N'id')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (175, 89, N'primary_key')
GO
INSERT [dbo].[Choice] ([ChoiceId], [QuestionId], [ChoiceText]) VALUES (176, 89, N'key')
GO
SET IDENTITY_INSERT [dbo].[Choice] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (1, N'C#', N'C# language syntax and fundamentals', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (2, N'OOP', N'Object-Oriented Programming concepts and implementation', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (3, N'HTML', N'Basic HyperText Markup Language structure', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (4, N'HTML5', N'Semantic tags, multimedia, and advanced HTML5 features', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (5, N'CSS', N'Cascading Style Sheets basics and formatting', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (6, N'CSS3', N'Advanced styling, Flexbox, Grid, and animations', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (7, N'JavaScript', N'Core client-side scripting and DOM manipulation', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (8, N'ES6', N'Modern ECMAScript 2015+ features, promises, and modules', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (9, N'SQL', N'Database design, normalization, and T-SQL querying', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (10, N'MVC', N'Building web applications using ASP.NET Core MVC', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (11, N'TypeScript', N'Strongly typed programming language that builds on JavaScript', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (12, N'Angular', N'Building single-page client applications using Angular and TypeScript', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (13, N'ReactJS', N'Building user interfaces and component-based UI using React', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (14, N'Node.js & Express', N'Backend runtime environment and web framework for JavaScript', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (15, N'MongoDB', N'NoSQL database design and querying for MERN/MEAN stacks', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (16, N'Communication Skills', N'Effective workplace communication, email etiquette, and interpersonal skills', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (17, N'Presentation Skills', N'Designing and delivering impactful professional presentations', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (18, N'Network Fundamentals', N'Introduction to networking concepts, OSI model, routing, and TCP/IP', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (19, N'Operating Systems', N'Core OS concepts, Linux basics, memory management, and process scheduling', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (20, N'Software Testing Fundamentals', N'Manual testing, test cases, bug lifecycles, and QA principles', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (21, N'Agile & Scrum', N'Agile methodologies and Scrum framework for project management', 50, 30)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (22, N'Python Programming', N'Python syntax, data structures, and scripting for data analysis', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (23, N'Machine Learning Basics', N'Supervised and unsupervised learning algorithms and models', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (24, N'Data Visualization', N'Creating interactive dashboards using PowerBI and Tableau', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (25, N'Ethical Hacking', N'Penetration testing, vulnerability assessment, and security audits', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (26, N'Docker & Kubernetes', N'Containerization and orchestration for scalable cloud applications', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (27, N'UI/UX Fundamentals', N'User research, wireframing, and prototyping using Figma', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (28, N'Unity 3D Engine', N'Building 2D and 3D interactive games using C# and Unity', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (29, N'Flutter App Development', N'Cross-platform mobile application development using Dart', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (30, N'Android Development using Kotlin', N'Building native Android applications using Kotlin and Android Studio', 100, 60)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (31, N'SQL Server', N'Database course', 100, 50)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseDescription], [MaxDegree], [MinDegree]) VALUES (33, N'C#', N'Programming course', 80, 40)
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (1, N'Software Engineering & Web Development')
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (2, N'Data Science & Artificial Intelligence')
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (3, N'Cybersecurity & Cloud Infrastructure')
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (4, N'Digital Arts, Gaming & Content Development')
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (5, N'Business')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 
GO
INSERT [dbo].[Instructor] ([InstructorId], [InstructorName], [UserId]) VALUES (5, N'Mohamed Ahmed', 34)
GO
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Intake] ON 
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (1, N'Intake 39', 2019)
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (2, N'Intake 40', 2020)
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (3, N'Intake 41', 2021)
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (4, N'Intake 42', 2022)
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (5, N'Intake 43', 2023)
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (6, N'Intake 44', 2024)
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (7, N'Intake 45', 2025)
GO
INSERT [dbo].[Intake] ([IntakeId], [IntakeName], [IntakeYear]) VALUES (8, N'Intake 46', 2026)
GO
SET IDENTITY_INSERT [dbo].[Intake] OFF
GO
SET IDENTITY_INSERT [dbo].[IntakeTrack] ON 
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (44, 1, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (47, 1, 1, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (45, 1, 3, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (81, 1, 4, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (82, 1, 5, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (46, 1, 7, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (83, 1, 8, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (48, 2, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (51, 2, 1, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (49, 2, 2, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (52, 2, 2, 5)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (84, 2, 4, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (85, 2, 5, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (86, 2, 6, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (50, 2, 8, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (87, 2, 11, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (53, 3, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (57, 3, 1, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (54, 3, 2, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (88, 3, 4, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (89, 3, 5, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (58, 3, 8, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (55, 3, 11, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (56, 3, 12, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (90, 3, 14, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (91, 3, 15, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (92, 3, 17, 4)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (59, 4, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (63, 4, 1, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (60, 4, 2, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (65, 4, 2, 13)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (64, 4, 7, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (93, 4, 9, 4)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (94, 4, 10, 4)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (95, 4, 11, 5)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (96, 4, 12, 5)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (61, 4, 15, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (62, 4, 17, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (97, 4, 18, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (98, 4, 19, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (32, 5, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (35, 5, 1, 9)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (33, 5, 2, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (36, 5, 7, 9)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (34, 5, 8, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (99, 5, 13, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (100, 5, 14, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (101, 5, 16, 7)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (102, 5, 17, 7)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (103, 5, 18, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (104, 5, 19, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (37, 6, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (40, 6, 1, 10)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (38, 6, 2, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (42, 6, 2, 11)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (105, 6, 3, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (106, 6, 4, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (107, 6, 5, 9)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (41, 6, 6, 10)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (108, 6, 8, 9)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (39, 6, 11, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (109, 6, 12, 12)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (110, 6, 14, 13)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (111, 6, 15, 14)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (43, 6, 17, 11)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (1, 7, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (5, 7, 1, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (8, 7, 1, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (73, 7, 1, 15)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (2, 7, 2, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (9, 7, 2, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (68, 7, 2, 12)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (112, 7, 3, 10)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (113, 7, 4, 10)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (114, 7, 5, 11)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (3, 7, 8, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (6, 7, 8, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (115, 7, 9, 11)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (116, 7, 10, 12)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (4, 7, 11, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (7, 7, 12, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (117, 7, 13, 12)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (118, 7, 16, 17)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (119, 7, 18, 18)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (120, 7, 19, 19)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (10, 8, 1, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (14, 8, 1, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (17, 8, 1, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (25, 8, 1, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (30, 8, 1, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (132, 8, 1, 9)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (66, 8, 1, 12)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (71, 8, 1, 15)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (76, 8, 1, 19)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (78, 8, 1, 20)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (79, 8, 1, 21)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (11, 8, 2, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (18, 8, 2, 3)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (28, 8, 2, 7)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (69, 8, 2, 14)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (74, 8, 2, 16)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (22, 8, 3, 5)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (121, 8, 3, 13)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (19, 8, 4, 4)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (20, 8, 5, 4)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (23, 8, 6, 5)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (67, 8, 6, 12)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (80, 8, 6, 21)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (29, 8, 7, 7)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (70, 8, 7, 14)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (12, 8, 8, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (15, 8, 8, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (72, 8, 8, 15)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (26, 8, 9, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (122, 8, 9, 13)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (123, 8, 10, 14)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (13, 8, 11, 1)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (124, 8, 11, 14)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (16, 8, 12, 2)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (125, 8, 12, 15)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (126, 8, 13, 16)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (21, 8, 14, 4)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (127, 8, 14, 17)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (24, 8, 15, 5)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (77, 8, 15, 19)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (128, 8, 16, 18)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (27, 8, 17, 6)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (75, 8, 17, 16)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (31, 8, 18, 8)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (129, 8, 18, 19)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (130, 8, 19, 20)
GO
INSERT [dbo].[IntakeTrack] ([IntakeTrackId], [IntakeId], [TrackId], [BranchId]) VALUES (131, 8, 19, 21)
GO
SET IDENTITY_INSERT [dbo].[IntakeTrack] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (1, 1, N'Text', N'What is the difference between value types and reference types in C#?', N'Value types store data directly in memory (stack), while reference types store a memory address (heap).')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (2, 1, N'TF', N'C# supports multiple inheritance for classes.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (3, 1, N'TF', N'The using statement ensures the correct use of IDisposable objects.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (4, 1, N'MCQ', N'Which symbol is used to inherit a class in C#?', N':')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (5, 1, N'MCQ', N'What is the default access modifier for a class in C#?', N'internal')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (6, 1, N'MCQ', N'Which method is the main entry point for a C# console application?', N'Main')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (7, 2, N'Text', N'Explain the concept of Polymorphism.', N'Polymorphism allows methods to do different things based on the object it is acting upon, typically through method overriding.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (8, 2, N'TF', N'Encapsulation is used to hide the internal state of an object from the outside.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (9, 2, N'TF', N'A child class can directly access the private members of its parent class.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (10, 2, N'MCQ', N'Which core concept is primarily achieved by using interfaces?', N'Abstraction')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (11, 2, N'MCQ', N'What is method overloading?', N'Same method name, different parameters')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (12, 2, N'MCQ', N'Which keyword prevents a class from being inherited?', N'sealed')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (13, 3, N'Text', N'What is the purpose of the alt attribute in an image tag?', N'It provides alternative text for screen readers or if the image fails to load.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (14, 3, N'TF', N'HTML tags are strictly case-sensitive.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (15, 3, N'TF', N'The <head> section contains metadata about the document, like the title.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (16, 3, N'MCQ', N'Which tag is used to create a hyperlink?', N'<a>')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (17, 3, N'MCQ', N'Which HTML element is used to define the largest heading?', N'<h1>')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (18, 3, N'MCQ', N'What does HTML stand for?', N'Hyper Text Markup Language')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (19, 4, N'Text', N'What is the purpose of the <canvas> element in HTML5?', N'It is used to draw graphics on a web page dynamically using JavaScript.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (20, 4, N'TF', N'HTML5 introduced new semantic tags like <article>, <section>, and <nav>.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (21, 4, N'TF', N'The <video> tag in HTML5 requires a third-party plugin like Flash to work.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (22, 4, N'MCQ', N'Which input type was introduced in HTML5 specifically for entering a date?', N'date')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (23, 4, N'MCQ', N'What is the purpose of the localStorage object in HTML5?', N'Stores data with no expiration date')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (24, 4, N'MCQ', N'Which HTML5 attribute specifies that an input field must be filled out before submitting?', N'required')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (25, 5, N'Text', N'Explain the CSS Box Model.', N'A box that wraps around every HTML element, consisting of margins, borders, padding, and the actual content.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (26, 5, N'TF', N'Inline styles have the highest specificity compared to internal and external stylesheets.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (27, 5, N'TF', N'In CSS, a class selector is defined using a hash (#) symbol.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (28, 5, N'MCQ', N'Which CSS property is used to control the text size?', N'font-size')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (29, 5, N'MCQ', N'How do you select an element with the id attribute "demo" in CSS?', N'#demo')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (30, 5, N'MCQ', N'What is the default value of the position property in CSS?', N'static')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (31, 6, N'Text', N'What are CSS3 Media Queries primarily used for?', N'They apply CSS rules only if certain conditions are met, which is essential for responsive web design.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (32, 6, N'TF', N'The CSS3 Flexbox layout model is designed strictly for two-dimensional layouts (rows and columns simultaneously).', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (33, 6, N'TF', N'The opacity property in CSS3 affects both the background and the text content of an element.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (34, 6, N'MCQ', N'Which CSS3 property is used to create rounded corners?', N'border-radius')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (35, 6, N'MCQ', N'What does the unit "vw" stand for in CSS3?', N'Viewport Width')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (36, 6, N'MCQ', N'Which CSS3 property is used to add a shadow effect directly to text?', N'text-shadow')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (37, 7, N'Text', N'Explain event delegation in JavaScript.', N'Event delegation is a technique involving adding a single event listener to a parent element to manage events for all of its descendants.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (38, 7, N'TF', N'In JavaScript, null and undefined are strictly equal (===).', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (39, 7, N'TF', N'The DOM is an API for interacting with HTML and XML documents.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (40, 7, N'MCQ', N'Which method is used to parse a JSON string into a JavaScript object?', N'JSON.parse()')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (41, 7, N'MCQ', N'What keyword is used to declare a block-scoped variable?', N'let')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (42, 7, N'MCQ', N'Which function is used to set a timer that executes a callback after a specified delay?', N'setTimeout()')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (43, 8, N'Text', N'What is a Promise in ES6?', N'A Promise is an object representing the eventual completion or failure of an asynchronous operation.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (44, 8, N'TF', N'Arrow functions have their own "this" binding.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (45, 8, N'TF', N'The spread operator (...) can be used to merge arrays.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (46, 8, N'MCQ', N'Which feature allows you to extract properties from objects into distinct variables?', N'Destructuring')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (47, 8, N'MCQ', N'How do you define a template literal in ES6?', N'Backticks (`)')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (48, 8, N'MCQ', N'Which array method returns a new array with all elements that pass a test?', N'filter()')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (49, 9, N'Text', N'What is a primary key?', N'A primary key is a column or set of columns that uniquely identifies each row in a table.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (50, 9, N'TF', N'A LEFT JOIN returns all records from the right table, and the matched records from the left table.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (51, 9, N'TF', N'The WHERE clause is used to filter records before any groupings are made.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (52, 9, N'MCQ', N'Which SQL statement is used to remove a table from a database?', N'DROP TABLE')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (53, 9, N'MCQ', N'What does the COUNT() function do?', N'Returns the number of rows that match a specified criterion')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (54, 9, N'MCQ', N'Which keyword is used to sort the result set?', N'ORDER BY')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (55, 10, N'Text', N'Explain the MVC architectural pattern.', N'Model-View-Controller is a pattern that separates an application into three main logical components: data (Model), user interface (View), and user input logic (Controller).')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (56, 10, N'TF', N'Views in ASP.NET Core MVC typically use the Razor markup syntax.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (57, 10, N'TF', N'Routing in ASP.NET Core MVC only maps URLs to physical files on the server.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (58, 10, N'MCQ', N'Which folder typically contains the Razor files in an ASP.NET Core MVC project?', N'Views')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (59, 10, N'MCQ', N'What is the primary role of a Controller in MVC?', N'Handles user requests and builds the response')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (60, 10, N'MCQ', N'Which method is typically used in a controller to return an HTML page?', N'View()')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (61, 11, N'Text', N'What is the main benefit of using TypeScript over standard JavaScript?', N'TypeScript introduces static typing, which helps catch errors at compile-time rather than at runtime.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (62, 11, N'TF', N'TypeScript code runs directly in the browser without needing any compilation or transpilation.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (63, 11, N'TF', N'TypeScript supports interfaces, whereas standard JavaScript does not.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (64, 11, N'MCQ', N'Which file extension is primarily used for TypeScript files?', N'.ts')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (65, 11, N'MCQ', N'Which keyword is used to define a custom structural type or contract in TypeScript?', N'interface')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (66, 11, N'MCQ', N'Which configuration file is used to manage TypeScript compiler settings in a project?', N'tsconfig.json')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (67, 12, N'Text', N'What is the purpose of a directive in Angular?', N'Directives are classes that add new behavior or modify the existing behavior of elements in the DOM.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (68, 12, N'TF', N'Angular is a framework developed and maintained by Facebook.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (69, 12, N'TF', N'Two-way data binding in Angular is typically achieved using the [(ngModel)] syntax.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (70, 12, N'MCQ', N'Which decorator is used to define an Angular component?', N'@Component')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (71, 12, N'MCQ', N'What is the primary purpose of the Angular CLI?', N'To initialize, develop, scaffold, and maintain Angular applications')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (72, 12, N'MCQ', N'Which lifecycle hook is called once after the components data-bound properties have been initialized?', N'ngOnInit()')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (73, 13, N'Text', N'What is the Virtual DOM in React?', N'The Virtual DOM is a lightweight JavaScript representation of the actual DOM used to optimize rendering performance.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (74, 13, N'Text', N'Explain the concept of a Higher-Order Component (HOC).', N'An HOC is an advanced technique in React for reusing component logic by wrapping a component within another function.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (75, 13, N'TF', N'React is a full-fledged MVC framework.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (76, 13, N'TF', N'Props are passed into a component and are strictly read-only.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (77, 13, N'MCQ', N'Which React hook is primarily used to perform side effects in functional components?', N'useEffect')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (78, 13, N'MCQ', N'Which state management library is most commonly associated with React applications?', N'Redux')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (79, 13, N'MCQ', N'In React 18, which method is used to initialize the root for rendering?', N'createRoot()')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (80, 14, N'Text', N'Describe the Node.js runtime environment.', N'Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (81, 14, N'TF', N'Node.js handles concurrent requests using a highly multi-threaded architecture.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (82, 14, N'TF', N'Express.js is a minimal and flexible Node.js web application framework.', N'True')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (83, 14, N'MCQ', N'Which core module is used to create a web server in Node.js?', N'http')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (84, 14, N'MCQ', N'What is the default package manager that comes bundled with Node.js?', N'npm')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (85, 15, N'Text', N'What is a document in the context of MongoDB?', N'A document is a record in a MongoDB collection and the basic unit of data, composed of field and value pairs.')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (86, 15, N'TF', N'MongoDB stores data in rigid, relational tables with predefined schemas.', N'False')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (87, 15, N'MCQ', N'What binary format does MongoDB use to store documents on disk?', N'BSON')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (88, 15, N'MCQ', N'Which method is used to add a single document to a MongoDB collection?', N'insertOne()')
GO
INSERT [dbo].[Question] ([QuestionId], [CourseId], [QuestionType], [QuestionBody], [CorrectAnswer]) VALUES (89, 15, N'MCQ', N'What field is automatically generated by MongoDB to uniquely identify every document?', N'_id')
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (19, N'Mohamed Omar', 43, 1)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (20, N'Abdelsalam Ismaeil Abdelsalam Ismaeil', 44, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (21, N'Abdulrahman Mohamed', 45, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (22, N'Ahmed Ashraf Bakr Mohamed', 46, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (23, N'Ahmed Hosny Salah', 47, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (24, N'Amira Yehia Shehata', 48, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (25, N'Amr Sobhi Saadawi', 49, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (26, N'Andrew Ibrahime Said', 50, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (27, N'Asmaa Ibrahim Omar', 51, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (28, N'Doaa Ashraf Hassan', 52, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (29, N'Eslam Araby Abdo Mostafa', 53, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (30, N'Fady Sameh Gadhon', 54, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (31, N'Fatma Ali Ahmed', 55, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (32, N'Hager Gamal Mohamed', 56, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (33, N'Hamdy Soliman Sabet Soliman', 57, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (34, N'Hassan Ahmed Abdelaziem Teleb', 58, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (35, N'Hossam Ahmed Salama', 59, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (36, N'Mahmoud Saber Fangary Farghal', 60, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (37, N'Mena Magdy Ebied', 61, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (38, N'Merna Sobhi Ghaly Kaiser', 62, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (39, N'Moataz Ahmed Shawky', 63, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (40, N'Mohamed Abdelhady Abdellahi Mohamed', 64, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (41, N'Mohamed Abobakr Ibarhime Taha', 65, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (42, N'Mohamed Nasser Mayez', 66, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (43, N'Mostafa Mohamed Mahmoud Ali', 67, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (44, N'Muhammad Abdeldayem Muhammad', 68, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (45, N'Mustafa Hassan Mustafa Abdullateef', 69, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (46, N'Nourehan Hanea Aboelfetouh', 70, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (47, N'Omar Kotb Abubakar', 71, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (48, N'Rania Raaef Roshdy Lbaib', 72, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (49, N'Rawan Rabie Ibrahim', 73, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (50, N'Reem Abdelkader Khalifa', 74, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (51, N'Remonda Nady Soliman', 75, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (52, N'Romany Malak Kamel', 76, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (53, N'Salma Momen Fathy', 77, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (54, N'Sara Nadi Zayan', 78, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (55, N'Youssef Ahmed Hussein', 79, 9)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [UserId], [IntakeTrackId]) VALUES (56, N'Shahd Mohamed Mohy El-Dien', 80, 9)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Track] ON 
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (1, N'Full Stack Web Development Using .NET', 1)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (2, N'Full Stack Web Development Using MEARN', 1)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (3, N'Full Stack Web Development Using PHP', 1)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (4, N'Mobile Application Development iOS', 1)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (5, N'Mobile Application Development Android', 1)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (6, N'Mobile Application Development Flutter', 1)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (7, N'Software Testing', 1)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (8, N'Data Science and Artificial Intelligence', 2)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (9, N'Machine Learning and Deep Learning', 2)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (10, N'Data Analytics and Big Data', 2)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (11, N'Cybersecurity', 3)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (12, N'Cloud Computing', 3)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (13, N'Systems Administration', 3)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (14, N'Game Programming', 4)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (15, N'UI & UX Design', 4)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (16, N'2D Animation & VFX', 4)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (17, N'Digital Marketing', 5)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (18, N'Salesforce / CRM Specialist', 5)
GO
INSERT [dbo].[Track] ([TrackId], [TrackName], [DepartmentId]) VALUES (19, N'Business Intelligence (BI)', 5)
GO
SET IDENTITY_INSERT [dbo].[Track] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (34, N'MohamedAhmed_Instructor', N'搀柢䟔ﾞ顂녬苀 熵⻡鵐ꩇ醸洢㡊ꓵꑓ䲮梩⊄ጸ樌㤂后契卪贫㞆鍣¥䁺ꀝ㪮뻗�햭歊', N'InstructorRole', CAST(N'2026-03-04T22:31:41.103' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (36, N'Ali_Manager', N'搀柢䟔ﾞ顂녬苀 ٻ쀳턦祠轙蛸ﴬⴱ驥ᄖ픘㳈瑴櫌༎䍬鶶ᩝዤ쉥', N'TrainingManagerRole', CAST(N'2026-03-04T22:32:10.680' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (37, N'Omar_Admin', N'搀柢䟔ﾞ顂녬苀 豵㭸띮肼缊ｏꂳ籌㻕‽퉅ᲁ槍㖅霧렃痨﬙䁰䃱﹥ꄐפֿ', N'AdminRole', CAST(N'2026-03-04T22:32:21.317' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (43, N'MohamedOmar_Student', N'搀柢䟔ﾞ顂녬苀 儱큗앧댩곝崚鴵ꢚ늑﷗술⎢೰턛楦礷篧ɝ錒㉄ሢ餹韋鮍', N'StudentRole', CAST(N'2026-03-04T22:55:36.040' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (44, N'abdoAi1900', N'搀柢䟔ﾞ顂녬苀 Ⰺ㕻క岁蒶磺厜㥯ᗝꐄ쀘㝚尩⯄⎀쩌ព薥倂퀥缟࿿胃՘⅁戶⯐', N'StudentRole', CAST(N'2026-03-04T22:56:51.693' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (45, N'3bdomo', N'搀柢䟔ﾞ顂녬苀 뽎쥋櫒埫鶄쾱ᙇ⟿崄놉찓ꚹ騢䋵�結䛘鹝憳᐀睔箑弰檨챍〕ၣ㖪똗', N'StudentRole', CAST(N'2026-03-04T22:56:51.713' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (46, N'Ahmed-AshrafBakr', N'搀柢䟔ﾞ顂녬苀 ẻ䘨ᄈ�㥚次穥详鴻㹠⇧抣过✈㣼摑蔸ν暯髯獛鉂譴奜', N'StudentRole', CAST(N'2026-03-04T22:56:51.733' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (47, N'AhmedHosni19', N'搀柢䟔ﾞ顂녬苀 ᨄ竒핑妮Ẅ뎌䕊Ն꼇匎ꔙ뀸薯ᨳ柾筤ﮃ홈ͥ寅詾꫄䢯ﹼ龝䂐취垸㈰趁촵', N'StudentRole', CAST(N'2026-03-04T22:56:51.753' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (48, N'amiraYeh', N'搀柢䟔ﾞ顂녬苀 䳭ᥞ餧柎⺯薱�拥툄水∳쓘泍�㺟㛂콫럊劭뀡㲧樤죑꟎飸슬혡抂ଊ뙫犖೎', N'StudentRole', CAST(N'2026-03-04T22:56:51.777' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (49, N'amral6ss', N'搀柢䟔ﾞ顂녬苀 끙ዺ׉舻⽲譞궈痨ṷ딺쓾礀噤❡減⥬혼૒ᅪ茹Զ뺦ཋ謑屣䭯�餪䪂ⶃɊ馍', N'StudentRole', CAST(N'2026-03-04T22:56:51.800' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (50, N'Androibrahim', N'搀柢䟔ﾞ顂녬苀 拟㨭ቓﺍ₃鹣刎쨉쩞렙漪嶱뮸ႈ퐬쪾쀜椬ᬂ㣦ꋩ᫨椈�텻᧬㴭惡羕䉌', N'StudentRole', CAST(N'2026-03-04T22:56:51.820' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (51, N'AsmaaIbrahim-lab', N'搀柢䟔ﾞ顂녬苀 갑ꂒ斱鍐쎛፷愷万滮ᓴﭸ妸빯䠋饂ឞ뜅象⌌䯰홧�눡愮܋眚묦 쑭ሱ', N'StudentRole', CAST(N'2026-03-04T22:56:51.840' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (52, N'DoaaAshraf210', N'搀柢䟔ﾞ顂녬苀 ᦞ밗ﯶ白賋泛ユ㇏툂ࣵ꿸苭혂舶ឆ矩㮝�⑽寖㴶ᆏ뷍蟞魈�辤髹', N'StudentRole', CAST(N'2026-03-04T22:56:51.857' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (53, N'3raBy', N'搀柢䟔ﾞ顂녬苀 ⍋쒞쏍輼ጋ㜁茉䔇ꛓ몎닠療绂뽖ƅ좚꬝﯒昄�⯿吗씭膁뽡屴桱诇᫗鳼', N'StudentRole', CAST(N'2026-03-04T22:56:51.880' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (54, N'fadysameh2', N'搀柢䟔ﾞ顂녬苀 唅䫐⋠ᜨ灇㛍힅㕷詷ꄈ胱�왉㮝ু淴酄꿲⸱폭폈愙०鄛莙膺孪翍꒸આ', N'StudentRole', CAST(N'2026-03-04T22:56:51.900' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (55, N'FatmaAli111', N'搀柢䟔ﾞ顂녬苀 옻㽀즄좂⵰뎱鶝鞆ﻅ―꫕❬㸃倃㨠Ὸ↥䖊꼥⤥쭡쭽撅摉실䑩폡䅶诶�', N'StudentRole', CAST(N'2026-03-04T22:56:51.920' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (56, N'HagerGamal83', N'搀柢䟔ﾞ顂녬苀 ౩撸螇�갔ꞿ舒址낒촓脧闯↿䀚雇됨⁉㻟죓槥鏧鲐芾꒑ࣽ�쭪᚝ᝈ륪', N'StudentRole', CAST(N'2026-03-04T22:56:51.940' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (57, N'77amdysoliman', N'搀柢䟔ﾞ顂녬苀 ೻쏠믷亟ᢚৄ쩬뷮⮥臡⠈꛻│惱ശ̥㋬뷂ⵊ䔥齒랡䓆皁軩몄緱ﱺﰤ䴯', N'StudentRole', CAST(N'2026-03-04T22:56:51.963' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (58, N'hassanah391', N'搀柢䟔ﾞ顂녬苀 螼䷨�괌Ṍ�碶⌬啔䒽᪻㟬뢔蚰ᤉ布耉췡昧礲퇁瘯㓐㩴ጓ鹖圞⋈윘劝', N'StudentRole', CAST(N'2026-03-04T22:56:51.983' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (59, N'HossSalama', N'搀柢䟔ﾞ顂녬苀 崙淹⌭칵얭瓅㙾夦掤䲐Ⓛ刋䭵珀蘠퇧ጒ듄�燅Ⱞꖴ✥壩❣鿎叿簂ೝ', N'StudentRole', CAST(N'2026-03-04T22:56:52.003' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (60, N'Mahmoud-Saber12', N'搀柢䟔ﾞ顂녬苀 ꒎쑻런艅䁓厫 ꟰ૡ︫퍭스ᳱ�镟ታ椫ዕ朗惰䔪ᛄ̅锂ႏ䗾废앛', N'StudentRole', CAST(N'2026-03-04T22:56:52.023' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (61, N'MenaMagdyEbied', N'搀柢䟔ﾞ顂녬苀 邝鶛ₕ蕒吩畍星讲ꁷ䀱픚ህख柣턠왶Ἦ诌뱇롳䝰烱豃孍ꥵ⩵邪簀宯룻', N'StudentRole', CAST(N'2026-03-04T22:56:52.043' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (62, N'MernaSobhi', N'搀柢䟔ﾞ顂녬苀 忲⼣㝚䊼銹麊ᒰ訬魌≧䦟櫍䮟㯁鳢㍠Ὰ慱◝ꋵ홽ꆷ趪㐍㳊ꂄګᤍ洘污ᵔ먧', N'StudentRole', CAST(N'2026-03-04T22:56:52.060' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (63, N'aymansoltan', N'搀柢䟔ﾞ顂녬苀 ▮퐘腝䯕뻊哈⸠犄ꈘ쯮߰鬍돚혆쾸즱ꔬﻼ⁙扴�㼛唲﫛︬磬槥垸ㆣ', N'StudentRole', CAST(N'2026-03-04T22:56:52.080' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (64, N'abdalhadydev', N'搀柢䟔ﾞ顂녬苀 ෠녯쀮鿲쬱�鲉䪭쯼�鸷촑䦙ľ䧠㣿핻१ﱻ䅾梖☈�䏯黚橵ᡋ', N'StudentRole', CAST(N'2026-03-04T22:56:52.103' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (65, N'moohamedam', N'搀柢䟔ﾞ顂녬苀 ⽍ꂨ풞뫾審ۋṹ雍娡艻㓢꣼柝워ϰ韬Ꝃ뤒鈀犜ꤜ崅伤׼�啖査稷�', N'StudentRole', CAST(N'2026-03-04T22:56:52.123' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (66, N'Mohamed-Mayez', N'搀柢䟔ﾞ顂녬苀 谸ừᕥ橧ꙝབᕻ眴ᆇ畧ꃉ㨜옆㩔퐻᧛⥮㚟�箠�裡洳ⅅ̍῕尩壢', N'StudentRole', CAST(N'2026-03-04T22:56:52.143' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (67, N'mostafamohamed-code', N'搀柢䟔ﾞ顂녬苀 㬛斉華█⭌囵叄쇊쇂෉纷幗饘ᆖ차�莇壔ࢥ捞ˉ㇗ｧ⿕ꊲꭙ�▔உ緰둅', N'StudentRole', CAST(N'2026-03-04T22:56:52.163' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (68, N'mohamedabdeldayem7', N'搀柢䟔ﾞ顂녬苀 ╼�ଳ皈詊䀤팕긡틡哾턃ﱗ怜䞠镥拄煳뗉党똠�얊惭쿲㯫⮷ꛛ먠', N'StudentRole', CAST(N'2026-03-04T22:56:52.183' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (69, N'call911kid', N'搀柢䟔ﾞ顂녬苀 緗ᴟ躣더ꀂⵅ鏂楈缅媢⫠ꈯꡰڽ洉渏䰏ި㼊줳픸驜㥭驗牴䉑軄㲭', N'StudentRole', CAST(N'2026-03-04T22:56:52.207' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (70, N'nourehanhanea-collab', N'搀柢䟔ﾞ顂녬苀 ⦔벲꺋覷ᰌⴁꠝ⤎勅�뵅䶁├债ꔉ㝙弍揉欞�裭视괞�祝嶒࿄쎊⸞٢찢', N'StudentRole', CAST(N'2026-03-04T22:56:52.227' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (71, N'OmarKotb137', N'搀柢䟔ﾞ顂녬苀 ㈧烈盟삍ࢴ盟飄橲ꕰ叻惃ﳰ�䵸秝䖃䐈귽傏ɝ㡭蛥▥킄㋀굨鶼┥齤忶', N'StudentRole', CAST(N'2026-03-04T22:56:52.247' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (72, N'raniaraaef', N'搀柢䟔ﾞ顂녬苀 궇걞℗޽☍㹇뻎⤻ﯴ迪즷×㖂壙쨜᳡爄呇⇇㥧㶲뺚봛', N'StudentRole', CAST(N'2026-03-04T22:56:52.263' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (73, N'rawan-rabi3', N'搀柢䟔ﾞ顂녬苀 풒蝀Ⅼ麮ğ䓍Ꚏ㈅峤宨⺦㫌쥦책ᒟ冟漣릶ິӴ᳗䔌恆믲﫴', N'StudentRole', CAST(N'2026-03-04T22:56:52.283' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (74, N'ReemAbdelkader', N'搀柢䟔ﾞ顂녬苀 긕﫰댒暝꽭�頎ዾ渣텎琋썢ꁘ燺⡠ᭅꍴ磇灮虝损䉝業揧ར콤롡ഖ唃Ȍ', N'StudentRole', CAST(N'2026-03-04T22:56:52.303' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (75, N'remonda7', N'搀柢䟔ﾞ顂녬苀 晪圸⾒堿♣駢짢ᠹஞ윓㶠ﮎ鳊୿ᣪ鉀募䋮蒕汧䕔엄⋩ﰠ䠋閧㹸왔뢍', N'StudentRole', CAST(N'2026-03-04T22:56:52.323' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (76, N'RomanyMalak', N'搀柢䟔ﾞ顂녬苀 c섡⬰줎悑Ｄ៱줠趻൵䂊ࡤ렧ㄹ訷ᒘ퍭뾱匥鿰혏䭻㛋䤒㌒胞ꄓ⑑', N'StudentRole', CAST(N'2026-03-04T22:56:52.343' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (77, N'salmamomen128-eng', N'搀柢䟔ﾞ顂녬苀 ፺鞷蝀㺘䪨⬃檜돢뮃곂＾严Ù�ᯈ梻떆읕끰ᅌẤ៬蔗Ꮚ줪嶨쵕�', N'StudentRole', CAST(N'2026-03-04T22:56:52.363' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (78, N'sarah-nadi', N'搀柢䟔ﾞ顂녬苀 嵋訦窀⥅ഹͨ騡ᖵ丆쟧躷⼕⩽ሙƺ﫩蠺瀲ⴋ�엦﷽졼存蘕㘽=ﭜ䀘', N'StudentRole', CAST(N'2026-03-04T22:56:52.383' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (79, N'youssefahmed-336', N'搀柢䟔ﾞ顂녬苀 㸀⒨᮳尓밾ࡓ新燦둙낢顾禤㮑呉硔驛흾⢱�哦嘄엫ᗙႈ푼뫔惚䢷㰸', N'StudentRole', CAST(N'2026-03-04T22:56:52.407' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role], [CreatedAt]) VALUES (80, N'Shahd-Mohy', N'搀柢䟔ﾞ顂녬苀 Ῑ絔�瓡ﭠ㏢﮿쎊ᝐꏶ䜾⬅搽�순ꪄ㈲寨�ః늛홱誺乩ꁴ亓稜늧橽ী', N'StudentRole', CAST(N'2026-03-04T22:56:52.427' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
/****** Object:  Index [Unique_Class_Course]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [Unique_Class_Course] UNIQUE NONCLUSTERED 
(
	[IntakeTrackId] ASC,
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Unique_Exam_Question]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[ExamQuestion] ADD  CONSTRAINT [Unique_Exam_Question] UNIQUE NONCLUSTERED 
(
	[ExamId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
GO
/****** Object:  Index [Unique_Instructor_User]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[Instructor] ADD  CONSTRAINT [Unique_Instructor_User] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Unique_Intake_Track_Branch]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[IntakeTrack] ADD  CONSTRAINT [Unique_Intake_Track_Branch] UNIQUE NONCLUSTERED 
(
	[IntakeId] ASC,
	[TrackId] ASC,
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Unique_Student_User]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [Unique_Student_User] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Unique_StudentExam_ExamQuestion]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[StudentAnswer] ADD  CONSTRAINT [Unique_StudentExam_ExamQuestion] UNIQUE NONCLUSTERED 
(
	[StudentExamId] ASC,
	[ExamQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
GO
/****** Object:  Index [Unique_Student_Exam]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[StudentExam] ADD  CONSTRAINT [Unique_Student_Exam] UNIQUE NONCLUSTERED 
(
	[StudentId] ASC,
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ExamData]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_User_Username]    Script Date: 05-Mar-26 1:06:09 PM ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [Unique_User_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Audit] ADD  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[BackupLog] ADD  DEFAULT (getdate()) FOR [BackupDate]
GO
ALTER TABLE [dbo].[StudentAnswer] ADD  DEFAULT ((0)) FOR [MarksObtained]
GO
ALTER TABLE [dbo].[StudentExam] ADD  DEFAULT ('Pending') FOR [ExamStatus]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Choice]  WITH CHECK ADD  CONSTRAINT [FK_Choice_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[Choice] CHECK CONSTRAINT [FK_Choice_Question]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Course]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Instructor] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([InstructorId])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Instructor]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_IntakeTrack] FOREIGN KEY([IntakeTrackId])
REFERENCES [dbo].[IntakeTrack] ([IntakeTrackId])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_IntakeTrack]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Course]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_IntakeTrack] FOREIGN KEY([IntakeTrackId])
REFERENCES [dbo].[IntakeTrack] ([IntakeTrackId])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_IntakeTrack]
GO
ALTER TABLE [dbo].[ExamQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestion_Exam] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([ExamId])
GO
ALTER TABLE [dbo].[ExamQuestion] CHECK CONSTRAINT [FK_ExamQuestion_Exam]
GO
ALTER TABLE [dbo].[ExamQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestion_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[ExamQuestion] CHECK CONSTRAINT [FK_ExamQuestion_Question]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_User]
GO
ALTER TABLE [dbo].[IntakeTrack]  WITH CHECK ADD  CONSTRAINT [FK_IntakeTrack_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([BranchId])
GO
ALTER TABLE [dbo].[IntakeTrack] CHECK CONSTRAINT [FK_IntakeTrack_Branch]
GO
ALTER TABLE [dbo].[IntakeTrack]  WITH CHECK ADD  CONSTRAINT [FK_IntakeTrack_Intake] FOREIGN KEY([IntakeId])
REFERENCES [dbo].[Intake] ([IntakeId])
GO
ALTER TABLE [dbo].[IntakeTrack] CHECK CONSTRAINT [FK_IntakeTrack_Intake]
GO
ALTER TABLE [dbo].[IntakeTrack]  WITH CHECK ADD  CONSTRAINT [FK_IntakeTrack_Track] FOREIGN KEY([TrackId])
REFERENCES [dbo].[Track] ([TrackId])
GO
ALTER TABLE [dbo].[IntakeTrack] CHECK CONSTRAINT [FK_IntakeTrack_Track]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Course]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_IntakeTrack] FOREIGN KEY([IntakeTrackId])
REFERENCES [dbo].[IntakeTrack] ([IntakeTrackId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_IntakeTrack]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_StudentAnswer_ExamQuestion] FOREIGN KEY([ExamQuestionId])
REFERENCES [dbo].[ExamQuestion] ([ExamQuestionId])
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [FK_StudentAnswer_ExamQuestion]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_StudentAnswer_StudentExam] FOREIGN KEY([StudentExamId])
REFERENCES [dbo].[StudentExam] ([StudentExamId])
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [FK_StudentAnswer_StudentExam]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [FK_StudentExam_Exam] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([ExamId])
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [FK_StudentExam_Exam]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [FK_StudentExam_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [FK_StudentExam_Student]
GO
ALTER TABLE [dbo].[Track]  WITH CHECK ADD  CONSTRAINT [FK_Track_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Track] CHECK CONSTRAINT [FK_Track_Department]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [CHK_Course_Degrees] CHECK  (([MaxDegree]>=[MinDegree] AND [MinDegree]>=(0)))
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [CHK_Course_Degrees]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [CHK_Exam_Times] CHECK  (([EndTime]>[StartTime]))
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [CHK_Exam_Times]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [CHK_Exam_Type] CHECK  (([ExamType]='Corrective' OR [ExamType]='Exam'))
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [CHK_Exam_Type]
GO
ALTER TABLE [dbo].[ExamQuestion]  WITH CHECK ADD  CONSTRAINT [CHK_Question_Degree] CHECK  (([Marks]>(0)))
GO
ALTER TABLE [dbo].[ExamQuestion] CHECK CONSTRAINT [CHK_Question_Degree]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [CHK_Question_Type] CHECK  (([QuestionType]='Text' OR [QuestionType]='MCQ' OR [QuestionType]='TF'))
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [CHK_Question_Type]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [CHK_StudentExam_Status] CHECK  (([ExamStatus]='Missed' OR [ExamStatus]='Completed' OR [ExamStatus]='Pending'))
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [CHK_StudentExam_Status]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [CHK_User_Role] CHECK  (([Role]='TrainingManagerRole' OR [Role]='StudentRole' OR [Role]='InstructorRole' OR [Role]='AdminRole'))
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [CHK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[USP_AddChoice]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- create procedure that add choice
CREATE PROCEDURE [dbo].[USP_AddChoice]
	@QuestionId INT,
	@ChoiceText NVARCHAR(200)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Choice (QuestionId, ChoiceText)
        VALUES (@QuestionId, @ChoiceText);
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddCourse]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_AddCourse]
    @CourseName        NVARCHAR(100),
    @CourseDescription NVARCHAR(MAX) = NULL,
    @MaxDegree         INT,
    @MinDegree         INT
AS
BEGIN
    BEGIN TRY
        IF @MinDegree < 0 OR @MaxDegree < @MinDegree
        BEGIN
            RAISERROR('Invalid degree values: MinDegree must be >= 0 and MaxDegree >= MinDegree.', 16, 1);
        END

        INSERT INTO [dbo].[Course] ([CourseName], [CourseDescription], [MaxDegree], [MinDegree])
        VALUES (@CourseName, @CourseDescription, @MaxDegree, @MinDegree);

        PRINT 'Course added successfully. CourseId = ' + CAST(SCOPE_IDENTITY() AS NVARCHAR(10));
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddDepartment]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_AddDepartment] @departmentName NVARCHAR(50)
AS
BEGIN
    INSERT INTO [dbo].[Department] ([DepartmentName])
    VALUES (@departmentName);
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_AddExam]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_AddExam]
    @courseId      INT,
    @examType      NVARCHAR(25),
    @intakeTrackId INT,
    @startTime     DATETIME,
    @endTime       DATETIME
AS
BEGIN
    DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

    BEGIN TRY
        IF NOT EXISTS (
            SELECT 1
            FROM [dbo].[Class]
            WHERE [IntakeTrackId] = @intakeTrackId
              AND [CourseId]      = @courseId
              AND [InstructorId]  = @instructorId
        )
        BEGIN
            RAISERROR('not authorized to create an exam for this class.', 16, 1);
        END

        IF @examType = 'Corrective'
        BEGIN
            IF NOT EXISTS (
                SELECT 1
                FROM [dbo].[Exam]
                WHERE [CourseId]      = @courseId
                  AND [IntakeTrackId] = @intakeTrackId
                  AND [ExamType]      = 'Exam'
            )
            BEGIN
                RAISERROR('a corrective exam cannot be created because no standard exam was found for this course.', 16, 1);
            END
        END

        INSERT INTO [dbo].[Exam] ([CourseId], [ExamType], [IntakeTrackId], [StartTime], [EndTime])
        VALUES (@courseId, @examType, @intakeTrackId, @startTime, @endTime);

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_AddInstructor]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_AddInstructor]
    @InstructorName NVARCHAR(50),
    @Username       NVARCHAR(50),
    @PlainPassword  NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        EXEC [dbo].[USP_AddUserAccount]
            @Username      = @Username,
            @PlainPassword = @PlainPassword,
            @Role          = 'InstructorRole';

        DECLARE @UserId INT;
        SELECT @UserId = [UserId] FROM [dbo].[User] WHERE [Username] = @Username;

        INSERT INTO [dbo].[Instructor] ([InstructorName], [UserId])
        VALUES (@InstructorName, @UserId);

        SELECT SCOPE_IDENTITY() AS NewInstructorId;
        PRINT '[OK] Instructor registered: ' + @InstructorName + ' | Username: ' + @Username;

    END TRY
    BEGIN CATCH
	    EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_AddIntakeTrack]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- creates a connection between an Intake, a Track, and a Branch, relying on DB constraints not function validation

CREATE PROCEDURE [dbo].[USP_AddIntakeTrack]
	@intakeId INT,
	@trackId INT,
	@branchId INT
AS
BEGIN
	BEGIN TRY

		INSERT INTO [dbo].[IntakeTrack] ([IntakeId], [TrackId], [BranchId])
		VALUES (@intakeId, @trackId, @branchId);

	END TRY
	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddNewBranch]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_AddNewBranch]
    @BranchNewName NVARCHAR(100),
    @BranchNewAddress NVARCHAR(200) 
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM [dbo].[Branch] WHERE [BranchName] = @BranchNewName)
        BEGIN
            PRINT 'Adding Can not Complete, the Branch Is Exists!';
        END
        ELSE
        BEGIN
            INSERT INTO [dbo].[Branch] 
            VALUES (@BranchNewName , @BranchNewAddress);
            PRINT 'Adding Completed Successfully';
        END
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddNewClass]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_AddNewClass] 
    @NewIntakeTrackId INT,
    @NewInstructorId INT,
    @NewCourseId INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO [dbo].[Class] (IntakeTrackId , InstructorId , CourseId)
        VALUES (@NewIntakeTrackId , @NewInstructorId , @NewCourseId);
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddNewIntake]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_AddNewIntake]
	@IntakeNewName NVARCHAR(100),
	@IntakeNewYear INT 
AS
BEGIN
	BEGIN TRY
	IF @IntakeNewYear < YEAR(GETDATE())
		BEGIN
			PRINT 'Error: Intake year cannot be in the past'
			RETURN;
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Intake] (IntakeName , IntakeYear)
			VALUES (@IntakeNewName , @IntakeNewYear)
			PRINT 'Intake Added Successfully'
			RETURN
		END
	END TRY
	BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddQuestion]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_AddQuestion]
	@QuestionBody NVARCHAR(200),
	@QuestionType NVARCHAR(50),
	@CorrectAnswer NVARCHAR(200),
	@CourseId INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Question (QuestionBody, QuestionType, CorrectAnswer , CourseId)
        VALUES (@QuestionBody, @QuestionType, @CorrectAnswer , @CourseId);
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddQuestionToExam]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- adds a specific question to an exam with instructor and course validation checks

CREATE PROCEDURE [dbo].[USP_AddQuestionToExam]
	@examId INT,
	@questionId INT,
	@marks INT
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

	BEGIN TRY
		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[Exam] JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
			WHERE [Exam].[ExamId] = @examId AND [Class].[InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to modify this exam.', 16, 1);
		END

		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[Question] JOIN [dbo].[Exam] ON [Question].[CourseId] = [Exam].[CourseId]
			WHERE [Question].[QuestionId] = @questionId AND [Exam].[ExamId] = @examId
		)
		BEGIN
			RAISERROR('the question does not belong to the same course as the exam.', 16, 1);
		END

		INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
		VALUES (@examId, @questionId, @marks)
	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddRandomQuestionsToExam]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- adds random questions to an existing exam broken down by category with validation for instructor and class

CREATE PROCEDURE [dbo].[USP_AddRandomQuestionsToExam]
	@examId INT,
	@mcqCount INT,
	@mcqMarks INT,
	@tfCount INT,
	@tfMarks INT,
	@textCount INT,
	@textMarks INT
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();
	DECLARE @courseId INT;

	BEGIN TRY
		
		SELECT @courseId = [Exam].[CourseId]
		FROM [dbo].[Exam] JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
		WHERE [Exam].[ExamId] = @examId AND [Class].[InstructorId] = @instructorId;

		IF @courseId IS NULL
		BEGIN
			RAISERROR('not authorized to modify this exam or exam does not exist.', 16, 1);
		END

		
		DECLARE @availableMCQ INT = 0, @availableTF INT = 0, @availableText INT = 0;

		SELECT 
			@availableMCQ = SUM(CASE WHEN [QuestionType] = 'MCQ' THEN 1 ELSE 0 END),
			@availableTF = SUM(CASE WHEN [QuestionType] = 'TF' THEN 1 ELSE 0 END),
			@availableText = SUM(CASE WHEN [QuestionType] = 'Text' THEN 1 ELSE 0 END)
		FROM [dbo].[Question]
		WHERE [CourseId] = @courseId;

		
		SET @availableMCQ = ISNULL(@availableMCQ, 0);
		SET @availableTF = ISNULL(@availableTF, 0);
		SET @availableText = ISNULL(@availableText, 0);

		
		IF @availableMCQ < @mcqCount
			RAISERROR('insufficient MCQ questions in the bank for this course.', 16, 1);
		IF @availableTF < @tfCount
			RAISERROR('insufficient TF questions in the bank for this course.', 16, 1);
		IF @availableText < @textCount
			RAISERROR('insufficient Text questions in the bank for this course.', 16, 1);

		
		IF @mcqCount > 0
		BEGIN
			INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
			SELECT TOP (@mcqCount) @examId, [QuestionId], @mcqMarks
			FROM [dbo].[Question]
			WHERE [CourseId] = @courseId AND [QuestionType] = 'MCQ'
			ORDER BY NEWID();
		END

		
		IF @tfCount > 0
		BEGIN
			INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
			SELECT TOP (@tfCount) @examId, [QuestionId], @tfMarks
			FROM [dbo].[Question]
			WHERE [CourseId] = @courseId AND [QuestionType] = 'TF'
			ORDER BY NEWID();
		END

		
		IF @textCount > 0
		BEGIN
			INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
			SELECT TOP (@textCount) @examId, [QuestionId], @textMarks
			FROM [dbo].[Question]
			WHERE [CourseId] = @courseId AND [QuestionType] = 'Text'
			ORDER BY NEWID();
		END

	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddStudent]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_AddStudent]
    @StudentName   NVARCHAR(100),
    @Username      NVARCHAR(50),
    @PlainPassword NVARCHAR(255),
    @IntakeTrackId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        
        BEGIN TRANSACTION;

        IF @IntakeTrackId IS NOT NULL
           AND NOT EXISTS (SELECT 1 FROM [dbo].[IntakeTrack] WHERE [IntakeTrackId] = @IntakeTrackId)
        BEGIN
            RAISERROR('IntakeTrackId does not exist.', 16, 1);
           
        END

        EXEC [dbo].[USP_AddUserAccount]
            @Username      = @Username,
            @PlainPassword = @PlainPassword,
            @Role          = 'StudentRole';

        DECLARE @UserId INT;
        SELECT @UserId = [UserId] FROM [dbo].[User] WHERE [Username] = @Username;

        INSERT INTO [dbo].[Student] ([StudentName], [UserId], [IntakeTrackId])
        VALUES (@StudentName, @UserId, @IntakeTrackId);

        SELECT SCOPE_IDENTITY() AS NewStudentId;
        PRINT '[OK] Student registered: ' + @StudentName + ' | Username: ' + @Username;

        
        COMMIT TRANSACTION;

    END TRY
    BEGIN CATCH
       
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END

        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_AddTrack]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_AddTrack]
    @trackName NVARCHAR(50),
    @departmentId INT
AS
BEGIN
    INSERT INTO [dbo].[Track] ([TrackName], [DepartmentId])
    VALUES (@trackName, @departmentId);
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AddUserAccount]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_AddUserAccount]
    @Username      NVARCHAR(50),
    @PlainPassword NVARCHAR(255),
    @Role          NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF @Role NOT IN ('InstructorRole', 'StudentRole', 'TrainingManagerRole', 'AdminRole')
    BEGIN
        RAISERROR('Invalid Role. Must be InstructorRole, StudentRole, TrainingManagerRole, or AdminRole.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM [dbo].[User] WHERE [Username] = @Username)
    BEGIN
        RAISERROR('Username already exists in the User table.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM sys.server_principals WHERE name = @Username)
    BEGIN
        RAISERROR('A SQL Server Login with this name already exists.', 16, 1);
        RETURN;
    END

    OPEN SYMMETRIC KEY MySymKey DECRYPTION BY CERTIFICATE MyCert;

    INSERT INTO [dbo].[User] ([Username], [Password], [Role])
    VALUES (
        @Username,
        EncryptByKey(Key_GUID('MySymKey'), CONVERT(VARBINARY(MAX), @PlainPassword)),
        @Role
    );

    CLOSE SYMMETRIC KEY MySymKey;

    DECLARE @SQL NVARCHAR(500);

    SET @SQL = 'CREATE LOGIN [' + @Username + '] WITH PASSWORD = '''
             + @PlainPassword + ''';';
    EXEC sp_executesql @SQL;

    SET @SQL = 'CREATE USER [' + @Username + '] FOR LOGIN [' + @Username + '];';
    EXEC sp_executesql @SQL;

    SET @SQL = 'ALTER ROLE [' + @Role + '] ADD MEMBER [' + @Username + '];';
    EXEC sp_executesql @SQL;

    PRINT '[OK] Account created: ' + @Username + ' | Role: ' + @Role;
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_AutoGradeExam]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[USP_AutoGradeExam]
    @ExamId    INT,
    @StudentId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;


    IF NOT EXISTS (SELECT 1 FROM [dbo].[Exam] WHERE [ExamId] = @ExamId)
    BEGIN
        RAISERROR('Exam not found.', 16, 1);
        RETURN;
    END

    IF @StudentId IS NOT NULL
       AND NOT EXISTS (SELECT 1 FROM [dbo].[Student] WHERE [StudentId] = @StudentId)
    BEGIN
        RAISERROR('Student not found.', 16, 1);
        RETURN;
    END

    BEGIN TRY
        UPDATE SA
        SET SA.[MarksObtained] =
            CASE
                WHEN Q.[QuestionType] IN ('MCQ', 'TF')
                     AND LTRIM(RTRIM(LOWER(SA.[AnswerText])))
                       = LTRIM(RTRIM(LOWER(Q.[CorrectAnswer])))
                THEN EQ.[Marks]

                WHEN Q.[QuestionType] = 'Text'
                     AND [dbo].[UFN_ContainsAllKeywords](SA.[AnswerText], Q.[CorrectAnswer]) = 1
                THEN EQ.[Marks]

                ELSE 0
            END
        FROM      [dbo].[StudentAnswer] SA
        JOIN      [dbo].[StudentExam]   SE  ON SA.[StudentExamId]  = SE.[StudentExamId]
        JOIN      [dbo].[ExamQuestion]  EQ  ON SA.[ExamQuestionId] = EQ.[ExamQuestionId]
        JOIN      [dbo].[Question]      Q   ON EQ.[QuestionId]     = Q.[QuestionId]
        WHERE SE.[ExamId]     = @ExamId
          AND SE.[ExamStatus] = 'Pending'
          AND (@StudentId IS NULL OR SE.[StudentId] = @StudentId);


        UPDATE SE
        SET
            SE.[TotalMarks] = (
                SELECT ISNULL(SUM(SA2.[MarksObtained]), 0)
                FROM   [dbo].[StudentAnswer] SA2
                WHERE  SA2.[StudentExamId] = SE.[StudentExamId]
            ),
            SE.[ExamStatus] = 'Completed'
        FROM [dbo].[StudentExam] SE
        WHERE SE.[ExamId]     = @ExamId
          AND SE.[ExamStatus] = 'Pending'
          AND (@StudentId IS NULL OR SE.[StudentId] = @StudentId);

        SELECT
            SE.[StudentExamId],
            SE.[StudentId],
            S.[StudentName],
            SE.[ExamId],
            SE.[TotalMarks],
            (
                SELECT ISNULL(SUM(EQ2.[Marks]), 0)
                FROM   [dbo].[ExamQuestion] EQ2
                WHERE  EQ2.[ExamId] = @ExamId
            )                               AS [MaxMarks],
            SE.[ExamStatus]
        FROM  [dbo].[StudentExam] SE
        JOIN  [dbo].[Student]     S ON SE.[StudentId] = S.[StudentId]
        WHERE SE.[ExamId] = @ExamId
          AND (@StudentId IS NULL OR SE.[StudentId] = @StudentId)
        ORDER BY SE.[StudentId];

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_BackupDatabase]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_BackupDatabase]
    @BackupType  NVARCHAR(10)  = 'FULL',         
    @BackupPath  NVARCHAR(255) = 'C:\Backups\'    
AS
BEGIN
    SET NOCOUNT ON;

    IF @BackupType NOT IN ('FULL', 'DIFF')
    BEGIN
        RAISERROR('BackupType must be FULL or DIFF.', 16, 1);
        RETURN;
    END

    DECLARE @DBName   NVARCHAR(100) = DB_NAME();
    DECLARE @DT       NVARCHAR(50)  = CONVERT(NVARCHAR(8),  GETDATE(), 112)  
                                    + '_'
                                    + REPLACE(CONVERT(NVARCHAR(8), GETDATE(), 108), ':', ''); 
    DECLARE @FileName NVARCHAR(500) = @BackupPath + @DBName + '_' + @BackupType + '_' + @DT + '.bak';
    DECLARE @SQL      NVARCHAR(1000);

    IF @BackupType = 'FULL'
    BEGIN
        SET @SQL = 'BACKUP DATABASE [' + @DBName + ']
                    TO DISK = ''' + @FileName + '''
                    WITH FORMAT, INIT,
                         NAME        = ''' + @DBName + ' - Full Backup'',
                         COMPRESSION,
                         STATS       = 10;';
    END
    ELSE 
    BEGIN
        SET @SQL = 'BACKUP DATABASE [' + @DBName + ']
                    TO DISK = ''' + @FileName + '''
                    WITH DIFFERENTIAL,
                         NAME        = ''' + @DBName + ' - Differential Backup'',
                         COMPRESSION,
                         STATS       = 10;';
    END

    EXEC sp_executesql @SQL;

    INSERT INTO [dbo].[BackupLog] ([BackupType], [FileName], [BackupDate])
    VALUES (@BackupType, @FileName, GETDATE());

    PRINT '[OK] Backup completed: ' + @FileName;
END;

GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteBranch]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_DeleteBranch]
    @BranchId INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM [dbo].[Branch]
        WHERE BranchId = @BranchId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteClass]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_DeleteClass]
    @ClassId INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM [dbo].[Class]
        WHERE ClassId = @ClassId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteCourse]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_DeleteCourse]
    @CourseId INT
AS
BEGIN
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM [dbo].[Course] WHERE [CourseId] = @CourseId)
        BEGIN
            RAISERROR('Course not found.', 16, 1);
        END

        DELETE FROM [dbo].[Course]
        WHERE [CourseId] = @CourseId;

        PRINT 'Course deleted successfully.';
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteDepartment]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_DeleteDepartment]
    @departmentId INT
AS
BEGIN
    DELETE FROM [dbo].[Department]
    WHERE [DepartmentId] = @departmentId;
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteExam]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- delete an exam with instructor authorization check

CREATE PROCEDURE [dbo].[USP_DeleteExam]
	@examId INT
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

	BEGIN TRY
		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[Exam]
			JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
			WHERE [Exam].[ExamId] = @examId AND [Class].[InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to delete this exam.', 16, 1);
		END

		DELETE FROM [dbo].[Exam]
		WHERE [ExamId] = @examId;

	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteInstructor]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_DeleteInstructor]
    @InstructorId INT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM [dbo].[Instructor] WHERE [InstructorId] = @InstructorId)
        BEGIN
            RAISERROR('Instructor with this ID does not exist.', 16, 1);
            RETURN;
        END

        IF EXISTS (SELECT 1 FROM [dbo].[Class] WHERE [InstructorId] = @InstructorId)
        BEGIN
            RAISERROR('Cannot delete instructor. They are currently assigned to one or more classes.', 16, 1);
            RETURN;
        END

        DECLARE @Username NVARCHAR(50);
        DECLARE @UserId   INT;

        SELECT
            @Username = U.[Username],
            @UserId   = U.[UserId]
        FROM [dbo].[User] U
        INNER JOIN [dbo].[Instructor] I ON I.[UserId] = U.[UserId]
        WHERE I.[InstructorId] = @InstructorId;

        DELETE FROM [dbo].[Instructor] WHERE [InstructorId] = @InstructorId;

        DELETE FROM [dbo].[User] WHERE [UserId] = @UserId;

        DECLARE @SQL NVARCHAR(500);

        IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = @Username)
        BEGIN
            SET @SQL = 'ALTER ROLE [InstructorRole] DROP MEMBER [' + @Username + '];';
            EXEC sp_executesql @SQL;
        END

        IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = @Username)
        BEGIN
            SET @SQL = 'DROP USER [' + @Username + '];';
            EXEC sp_executesql @SQL;
        END

        IF EXISTS (SELECT 1 FROM sys.server_principals WHERE name = @Username)
        BEGIN
            SET @SQL = 'DROP LOGIN [' + @Username + '];';
            EXEC sp_executesql @SQL;
        END

        PRINT '[OK] Instructor deleted successfully | InstructorId: ' + CAST(@InstructorId AS NVARCHAR);

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteIntake]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_DeleteIntake]
    @IntakeId INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM [dbo].[Intake]
        WHERE IntakeId = @IntakeId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteStudent]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_DeleteStudent]
    @StudentId INT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM [dbo].[Student] WHERE [StudentId] = @StudentId)
        BEGIN
            RAISERROR('Student with this ID does not exist.', 16, 1);
            RETURN;
        END

        DECLARE @Username NVARCHAR(50);
        DECLARE @UserId   INT;

        SELECT
            @Username = U.[Username],
            @UserId   = U.[UserId]
        FROM [dbo].[User] U
        INNER JOIN [dbo].[Student] S ON S.[UserId] = U.[UserId]
        WHERE S.[StudentId] = @StudentId;

        DELETE SA
        FROM [dbo].[StudentAnswer] SA
        INNER JOIN [dbo].[StudentExam] SE ON SA.[StudentExamId] = SE.[StudentExamId]
        WHERE SE.[StudentId] = @StudentId;

        DELETE FROM [dbo].[StudentExam] WHERE [StudentId] = @StudentId;

        DELETE FROM [dbo].[Student] WHERE [StudentId] = @StudentId;

        DELETE FROM [dbo].[User] WHERE [UserId] = @UserId;

        DECLARE @SQL NVARCHAR(500);

        -- *** FIX: شيله من الـ Role الأول قبل DROP USER ***
        IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = @Username)
        BEGIN
            SET @SQL = 'ALTER ROLE [StudentRole] DROP MEMBER [' + @Username + '];';
            EXEC sp_executesql @SQL;
        END

        IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = @Username)
        BEGIN
            SET @SQL = 'DROP USER [' + @Username + '];';
            EXEC sp_executesql @SQL;
        END

        IF EXISTS (SELECT 1 FROM sys.server_principals WHERE name = @Username)
        BEGIN
            SET @SQL = 'DROP LOGIN [' + @Username + '];';
            EXEC sp_executesql @SQL;
        END

        PRINT '[OK] Student deleted successfully | StudentId: ' + CAST(@StudentId AS NVARCHAR);

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteTrack]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_DeleteTrack]
    @trackId INT
AS
BEGIN
    DELETE FROM [dbo].[Track]
    WHERE [TrackId] = @trackId;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAllClasses]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GetAllClasses]
AS
BEGIN
    BEGIN TRY
        SELECT * 
        FROM VW_ClassDetails;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetChoicesByQuestion]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GetChoicesByQuestion]
	@QuestionId INT
AS
BEGIN
    BEGIN TRY
        SELECT * FROM Choice
        WHERE QuestionId = @QuestionId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetClassesByInstructor]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GetClassesByInstructor]
    @InstructorId INT 
AS
BEGIN
    BEGIN TRY
        SELECT * 
        FROM VW_ClassDetails
        WHERE InstructorId = @InstructorId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetClassesByTrack]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GetClassesByTrack]
    @TrackId INT 
AS
BEGIN
    BEGIN TRY
        SELECT * 
        FROM VW_ClassesPerTrack
        WHERE TrackId = @TrackId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetInstructors]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GetInstructors]
    @InstructorId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        IF @InstructorId IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT 1 FROM [dbo].[Instructor] WHERE [InstructorId] = @InstructorId)
            BEGIN
                RAISERROR('Instructor with this ID does not exist.', 16, 1);
                RETURN;
            END

            SELECT 
                I.[InstructorId],
                I.[InstructorName],
                U.[Username],
                U.[CreatedAt],
                C.[ClassId],
                CO.[CourseName],
                IT.[IntakeTrackId],
                T.[TrackName]
            FROM [dbo].[Instructor] I
            INNER JOIN [dbo].[User]        U  ON I.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[Class]       C  ON I.[InstructorId]  = C.[InstructorId]
            LEFT  JOIN [dbo].[Course]      CO ON C.[CourseId]      = CO.[CourseId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON C.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId]
            WHERE I.[InstructorId] = @InstructorId;
        END
        ELSE
        BEGIN
            SELECT 
                I.[InstructorId],
                I.[InstructorName],
                U.[Username],
                U.[CreatedAt],
                C.[ClassId],
                CO.[CourseName],
                IT.[IntakeTrackId],
                T.[TrackName]
            FROM [dbo].[Instructor] I
            INNER JOIN [dbo].[User]        U  ON I.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[Class]       C  ON I.[InstructorId]  = C.[InstructorId]
            LEFT  JOIN [dbo].[Course]      CO ON C.[CourseId]      = CO.[CourseId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON C.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId];
        END
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_GetQuestionWithChoices]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GetQuestionWithChoices]
@QuestionId INT
AS
BEGIN
    BEGIN TRY
        SELECT *
        FROM VW_QuestionWithChoices
        WHERE QuestionId = @QuestionId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetStudents]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_GetStudents]
    @StudentId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        IF @StudentId IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT 1 FROM [dbo].[Student] WHERE [StudentId] = @StudentId)
            BEGIN
                RAISERROR('Student with this ID does not exist.', 16, 1);
                RETURN;
            END

            SELECT 
                S.[StudentId],
                S.[StudentName],
                U.[Username],
                U.[CreatedAt],
                IT.[IntakeTrackId],
                T.[TrackName],
                I.[IntakeName],
                I.[IntakeYear],
                B.[BranchName]
            FROM [dbo].[Student] S
            INNER JOIN [dbo].[User]        U  ON S.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON S.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId]
            LEFT  JOIN [dbo].[Intake]      I  ON IT.[IntakeId]     = I.[IntakeId]
            LEFT  JOIN [dbo].[Branch]      B  ON IT.[BranchId]     = B.[BranchId]
            WHERE S.[StudentId] = @StudentId;
        END
        ELSE
        BEGIN
            SELECT 
                S.[StudentId],
                S.[StudentName],
                U.[Username],
                U.[CreatedAt],
                IT.[IntakeTrackId],
                T.[TrackName],
                I.[IntakeName],
                I.[IntakeYear],
                B.[BranchName]
            FROM [dbo].[Student] S
            INNER JOIN [dbo].[User]        U  ON S.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON S.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId]
            LEFT  JOIN [dbo].[Intake]      I  ON IT.[IntakeId]     = I.[IntakeId]
            LEFT  JOIN [dbo].[Branch]      B  ON IT.[BranchId]     = B.[BranchId];
        END
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_GetTracksForIntakeAtBranch]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- get available tracks for a specific intake and branch

CREATE PROCEDURE [dbo].[USP_GetTracksForIntakeAtBranch]
	@IntakeId INT,
	@BranchId INT
AS
BEGIN

	BEGIN TRY
		SELECT 
			 [IntakeTrack].[IntakeTrackId], 
			 [Track].[TrackId], 
			 [Track].[TrackName]
		FROM [dbo].[IntakeTrack] JOIN [dbo].[Track] ON [IntakeTrack].[TrackId] = [Track].[TrackId]
		WHERE [IntakeTrack].[IntakeId] = @IntakeId 
		  AND [IntakeTrack].[BranchId] = @BranchId
	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[USP_InitializeEncryption]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_InitializeEncryption]
    @MasterKeyPassword NVARCHAR(128) = 'StrongMasterKey@2024!'
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (
        SELECT 1 FROM sys.symmetric_keys
        WHERE name = '##MS_DatabaseMasterKey##'
    )
    BEGIN
        DECLARE @mkSQL NVARCHAR(500);
        SET @mkSQL = 'CREATE MASTER KEY ENCRYPTION BY PASSWORD = '''
                   + @MasterKeyPassword + ''';';
        EXEC sp_executesql @mkSQL;
        PRINT '[OK] Master Key created.';
    END
    ELSE
        PRINT '[SKIP] Master Key already exists.';

    IF NOT EXISTS (
        SELECT 1 FROM sys.certificates
        WHERE name = 'MyCert'
    )
    BEGIN
        CREATE CERTIFICATE MyCert
        WITH SUBJECT = 'Encryption Certificate for ExaminationSystem';
        PRINT '[OK] Certificate MyCert created.';
    END
    ELSE
        PRINT '[SKIP] Certificate MyCert already exists.';

    IF NOT EXISTS (
        SELECT 1 FROM sys.symmetric_keys
        WHERE name = 'MySymKey'
    )
    BEGIN
        CREATE SYMMETRIC KEY MySymKey
        WITH ALGORITHM = AES_128
        ENCRYPTION BY CERTIFICATE MyCert;
        PRINT '[OK] Symmetric Key MySymKey (AES_128) created.';
    END
    ELSE
        PRINT '[SKIP] Symmetric Key MySymKey already exists.';

    PRINT '──────────────────────────────────────────';
    PRINT 'Encryption setup completed successfully.';
    PRINT 'You can now use usp_CreateUserAccount.';
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_LogIntoAudit]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_LogIntoAudit]
AS
BEGIN
    INSERT INTO [dbo].[Audit] (
        [Number], 
        [Severity], 
        [State], 
        [Procedure], 
        [Line], 
        [Message]
    )
    VALUES (
        ERROR_NUMBER(),
        ERROR_SEVERITY(),
        ERROR_STATE(),
        ERROR_PROCEDURE(),
        ERROR_LINE(),
        ERROR_MESSAGE()
    );
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ManagePermissions]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_ManagePermissions]
    @Action      NVARCHAR(10),      -- 'GRANT', 'DENY', or 'REVOKE'
    @Permission  NVARCHAR(50),      -- 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'EXECUTE','ALTER','CONTROL','VIEW DEFINITION
    @ObjectName  NVARCHAR(100),     -- Table / View / Procedure
    @Username    NVARCHAR(50) = NULL,  
    @RoleName    NVARCHAR(50) = NULL   
AS
BEGIN
    SET NOCOUNT ON;

    IF @Action NOT IN ('GRANT', 'DENY', 'REVOKE')
    BEGIN
        RAISERROR('Action must be GRANT, DENY, or REVOKE.', 16, 1);
        RETURN;
    END


   IF @Permission NOT IN ('SELECT','INSERT','UPDATE','DELETE','EXECUTE','ALTER','CONTROL','VIEW DEFINITION')
    BEGIN
        RAISERROR('Permission must be SELECT, INSERT, UPDATE, DELETE, or EXECUTE.', 16, 1);
        RETURN;
    END


    IF (@Username IS NULL AND @RoleName IS NULL)
    BEGIN
        RAISERROR('You must provide either @Username or @RoleName.', 16, 1);
        RETURN;
    END

    IF (@Username IS NOT NULL AND @RoleName IS NOT NULL)
    BEGIN
        RAISERROR('Provide either @Username or @RoleName, not both.', 16, 1);
        RETURN;
    END


    DECLARE @Principal NVARCHAR(50);

    IF @Username IS NOT NULL
    BEGIN

        IF NOT EXISTS (
            SELECT 1 FROM sys.database_principals
            WHERE name = @Username
              AND type IN ('S', 'U', 'G')   -- SQL User / Windows User / Windows Group
        )
        BEGIN
            RAISERROR('Database user not found.', 16, 1);
            RETURN;
        END
        SET @Principal = @Username;
    END
    ELSE
    BEGIN

        IF NOT EXISTS (
            SELECT 1 FROM sys.database_principals
            WHERE name = @RoleName
              AND type = 'R'                 -- R = Database Role
        )
        BEGIN
            RAISERROR('Database role not found.', 16, 1);
            RETURN;
        END
        SET @Principal = @RoleName;
    END


    IF NOT EXISTS (
        SELECT 1 FROM sys.objects
        WHERE name = @ObjectName
          AND SCHEMA_NAME(schema_id) = 'dbo'
    )
    BEGIN
        RAISERROR('Object not found in dbo schema.', 16, 1);
        RETURN;
    END


    DECLARE @SQL NVARCHAR(500);

    IF @Action IN ('GRANT', 'DENY')
        SET @SQL = @Action + ' ' + @Permission
                 + ' ON [dbo].[' + @ObjectName + '] TO [' + @Principal + '];';
    ELSE
        SET @SQL = 'REVOKE ' + @Permission
                 + ' ON [dbo].[' + @ObjectName + '] FROM [' + @Principal + '];';

    EXEC sp_executesql @SQL;

    PRINT '[OK] ' + @Action + ' ' + @Permission
        + ' on [dbo].[' + @ObjectName + '] to/from [' + @Principal + '] applied successfully.';

END;
GO
/****** Object:  StoredProcedure [dbo].[USP_OpenTrackForIntakeAtBranch]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_OpenTrackForIntakeAtBranch]
    @IntakeId INT,
    @TrackId INT,
    @BranchId INT
AS
BEGIN

    BEGIN TRY
        INSERT INTO [dbo].[IntakeTrack] ([IntakeId], [TrackId], [BranchId])
        VALUES (@IntakeId, @TrackId, @BranchId);
    END TRY

    BEGIN CATCH
        EXEC [dbo].[USP_LogAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_RemoveQuestionFromExam]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- removes a specific question from an exam using ExamQuestionId with instructor authorization check

CREATE PROCEDURE [dbo].[USP_RemoveQuestionFromExam]
	@examQuestionId INT
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

	BEGIN TRY
		
		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[ExamQuestion]
			JOIN [dbo].[Exam] ON [ExamQuestion].[ExamId] = [Exam].[ExamId]
			JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
			WHERE [ExamQuestion].[ExamQuestionId] = @examQuestionId AND [Class].[InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to modify this exam or record does not exist.', 16, 1);
		END

		
		DELETE FROM [dbo].[ExamQuestion]
		WHERE [ExamQuestionId] = @examQuestionId
	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[USP_RemoveTrackFromIntakeAtBranch]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_RemoveTrackFromIntakeAtBranch]
    @IntakeTrackId INT
AS
BEGIN

    BEGIN TRY
        DELETE FROM [dbo].[IntakeTrack]
        WHERE [IntakeTrackId] = @IntakeTrackId;
    END TRY
    
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_SubmitAnswer]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_SubmitAnswer]
    @ClassId        INT,
    @ExamType       NVARCHAR(25),
    @ExamQuestionId INT,
    @AnswerText     NVARCHAR(MAX)
AS
BEGIN
    DECLARE @studentId    INT = [dbo].[FN_GetCurrentStudentId]();
    DECLARE @studentExamId INT;
    DECLARE @examId       INT;

    BEGIN TRY
        SELECT @examId = [Exam].[ExamId]
        FROM [dbo].[Exam]
        JOIN [dbo].[Class] ON [Exam].[CourseId]       = [Class].[CourseId]
                          AND [Exam].[IntakeTrackId]   = [Class].[IntakeTrackId]
        WHERE [Class].[ClassId] = @ClassId
          AND [Exam].[ExamType] = @ExamType;

        IF @examId IS NULL
        BEGIN
            RAISERROR('No exam found for the given class and exam type.', 16, 1);
        END

        IF NOT EXISTS (
            SELECT 1
            FROM [dbo].[Student]
            JOIN [dbo].[Exam] ON [Student].[IntakeTrackId] = [Exam].[IntakeTrackId]
            WHERE [Student].[StudentId] = @studentId
              AND [Exam].[ExamId]       = @examId
        )
        BEGIN
            RAISERROR('Student is not enrolled in the track for this exam.', 16, 1);
        END

        IF NOT EXISTS (
            SELECT 1 FROM [dbo].[StudentExam]
            WHERE [StudentId] = @studentId AND [ExamId] = @examId
        )
        BEGIN
            INSERT INTO [dbo].[StudentExam] ([StudentId], [ExamId], [ExamStatus])
            VALUES (@studentId, @examId, 'Pending');
        END

        SELECT @studentExamId = [StudentExamId]
        FROM   [dbo].[StudentExam]
        WHERE  [StudentId] = @studentId AND [ExamId] = @examId;

        IF NOT EXISTS (
            SELECT 1 FROM [dbo].[ExamQuestion]
            WHERE [ExamQuestionId] = @ExamQuestionId
              AND [ExamId]         = @examId
        )
        BEGIN
            RAISERROR('The question does not belong to this exam.', 16, 1);
        END

        INSERT INTO [dbo].[StudentAnswer] ([StudentExamId], [ExamQuestionId], [AnswerText])
        VALUES (@studentExamId, @ExamQuestionId, @AnswerText);

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateAnswer]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_UpdateAnswer]
    @ClassId          INT,
    @ExamType         NVARCHAR(25),
    @ExamQuestionId   INT,
    @NewAnswerText    NVARCHAR(MAX)
AS
BEGIN
    DECLARE @studentId     INT = [dbo].[FN_GetCurrentStudentId]();
    DECLARE @studentExamId INT;
    DECLARE @examId        INT;

    BEGIN TRY
        SELECT @examId = [Exam].[ExamId]
        FROM [dbo].[Exam]
        JOIN [dbo].[Class] ON [Exam].[CourseId]     = [Class].[CourseId]
                          AND [Exam].[IntakeTrackId] = [Class].[IntakeTrackId]
        WHERE [Class].[ClassId] = @ClassId
          AND [Exam].[ExamType] = @ExamType;

        IF @examId IS NULL
            RAISERROR('No exam found for the given class and exam type.', 16, 1);

        SELECT @studentExamId = [StudentExamId]
        FROM   [dbo].[StudentExam]
        WHERE  [StudentId] = @studentId AND [ExamId] = @examId;

        IF @studentExamId IS NULL
            RAISERROR('No active exam session found for this student.', 16, 1);

        IF NOT EXISTS (
            SELECT 1 FROM [dbo].[StudentAnswer]
            WHERE [StudentExamId] = @studentExamId
              AND [ExamQuestionId] = @ExamQuestionId
        )
            RAISERROR('Answer not found. Please submit first using USP_SubmitAnswer.', 16, 1);

        UPDATE [dbo].[StudentAnswer]
        SET    [AnswerText] = @NewAnswerText
        WHERE  [StudentExamId]  = @studentExamId
          AND  [ExamQuestionId] = @ExamQuestionId;

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateBranch]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_UpdateBranch]
    @BranchId INT,
    @BranchNewName NVARCHAR(100),
    @BranchNewAddress NVARCHAR(200)
AS
BEGIN
    BEGIN TRY
        UPDATE Branch
        SET BranchName = @BranchNewName,
            BranchAddress = @BranchNewAddress
        WHERE BranchId = @BranchId;
    END TRY
    BEGIN CATCH
        EXEC dbo.USP_LogIntoAudit;
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateCourse]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[USP_UpdateCourse]
    @CourseId          INT,
    @CourseName        NVARCHAR(100) = NULL,
    @CourseDescription NVARCHAR(MAX) = NULL,
    @MaxDegree         INT           = NULL,
    @MinDegree         INT           = NULL
AS
BEGIN
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM [dbo].[Course] WHERE [CourseId] = @CourseId)
        BEGIN
            RAISERROR('Course not found.', 16, 1);
        END

        UPDATE [dbo].[Course]
        SET
            [CourseName]        = ISNULL(@CourseName,        [CourseName]),
            [CourseDescription] = ISNULL(@CourseDescription, [CourseDescription]),
            [MaxDegree]         = ISNULL(@MaxDegree,         [MaxDegree]),
            [MinDegree]         = ISNULL(@MinDegree,         [MinDegree])
        WHERE [CourseId] = @CourseId;

        PRINT 'Course updated successfully.';
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateDepartment]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_UpdateDepartment]
    @departmentId INT,
    @newDepartmentName NVARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Department]
    SET [DepartmentName] = @newDepartmentName
    WHERE [DepartmentId] = @departmentId
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateExam]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- update exam time with instructor authorization check

CREATE PROCEDURE [dbo].[USP_UpdateExam]
	@examId INT,
	@startTime DATETIME = NULL,
	@endTime DATETIME = NULL
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

	BEGIN TRY
		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[Exam]
				JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
			WHERE [Exam].[ExamId] = @examId AND [Class].[InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to update this exam.', 16, 1);
		END

		UPDATE [dbo].[Exam]
		SET 
			[StartTime] = ISNULL(@startTime, [StartTime]),
			[EndTime] = ISNULL(@endTime, [EndTime])
		WHERE [ExamId] = @examId;

	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateIntake]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_UpdateIntake]
    @IntakeId INT,
    @IntakeNewName NVARCHAR(100),
    @IntakeNewYear INT
AS
BEGIN
    BEGIN TRY
        IF @IntakeNewYear < YEAR(GETDATE())
        BEGIN
            RAISERROR('Intake year cannot be in the past',16,1);
            RETURN;
        END

        UPDATE Intake
        SET IntakeName = @IntakeNewName,
            IntakeYear = @IntakeNewYear
        WHERE IntakeId = @IntakeId;
    END TRY
    BEGIN CATCH
        EXEC dbo.USP_LogIntoAudit;
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateTrack]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_UpdateTrack]
    @trackId INT,
    @trackName NVARCHAR(50) = NULL,
    @departmentId INT = NULL
AS
BEGIN
    UPDATE [dbo].[Track]
    SET 
        [TrackName] = ISNULL(@trackName, [TrackName]),
        [DepartmentId] = ISNULL(@departmentId, [DepartmentId])
    WHERE [TrackId] = @trackId;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ViewUserAccounts]    Script Date: 05-Mar-26 1:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_ViewUserAccounts]
    @Username NVARCHAR(50) = NULL    
AS
BEGIN
    SET NOCOUNT ON;

    IF @Username IS NOT NULL
       AND NOT EXISTS (SELECT 1 FROM [dbo].[User] WHERE [Username] = @Username)
    BEGIN
        RAISERROR('Username not found.', 16, 1);
        RETURN;
    END

    OPEN SYMMETRIC KEY MySymKey DECRYPTION BY CERTIFICATE MyCert;

    SELECT
        [UserId],
        [Username],
        CONVERT(NVARCHAR(255),
            DecryptByKey([Password])
        )                       AS [PlainPassword],
        [Role],
        [CreatedAt]
    FROM [dbo].[User]
    WHERE (@Username IS NULL OR [Username] = @Username)
    ORDER BY [UserId];

    CLOSE SYMMETRIC KEY MySymKey;
END;
GO
USE [master]
GO
ALTER DATABASE [ITI_LMS] SET  READ_WRITE 
GO
