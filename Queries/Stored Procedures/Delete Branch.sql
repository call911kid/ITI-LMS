-- create procedure that delete branch

-- must have user id check
CREATE PROCEDURE USP_DeleteBranch
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