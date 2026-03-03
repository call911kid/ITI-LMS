CREATE PROCEDURE USP_UpdateBranch
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