-- create procedure that delete Inatke 


-- must have user id check
CREATE PROCEDURE USP_DeleteIntake
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