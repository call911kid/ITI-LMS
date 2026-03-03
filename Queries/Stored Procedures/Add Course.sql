CREATE OR ALTER PROCEDURE [dbo].[USP_AddCourse]
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



EXEC dbo.USP_AddCourse
    @CourseName = 'C#',
    @CourseDescription = 'Programming course',
    @MaxDegree = 80,
    @MinDegree = 40;
