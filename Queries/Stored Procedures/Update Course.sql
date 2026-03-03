CREATE OR ALTER PROCEDURE [dbo].[USP_UpdateCourse]
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

EXEC [dbo].[USP_UpdateCourse]
    @CourseId = 31,
    @CourseName = 'SQL Server',
    @CourseDescription = 'Database course',
    @MaxDegree = 100,
    @MinDegree = 50;
