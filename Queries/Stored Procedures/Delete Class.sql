-- create procedue that delete class

-- must have user id check
CREATE PROCEDURE USP_DeleteClass
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