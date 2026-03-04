CREATE OR ALTER PROCEDURE [dbo].[USP_DeleteStudent]
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
