CREATE OR ALTER PROCEDURE [dbo].[USP_DeleteCourse]
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


EXEC [dbo].[USP_DeleteCourse] @CourseId = 32;
