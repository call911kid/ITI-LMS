CREATE PROCEDURE [dbo].[USP_DeleteInstructor]
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
