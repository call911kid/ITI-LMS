-- Creating Proceudres Add New Branch

CREATE PROCEDURE USP_AddNewBranch
	@BranchNewName NVARCHAR(100),
	@BranchNewAddress NVARCHAR(200) 
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Branch] WHERE [BranchName] = @BranchNewName)
		BEGIN
			PRINT 'Adding Can not Complete, the Branch Is Exists!'
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Branch] 
			VALUES (@BranchNewName , @BranchNewAddress)
			PRINT 'Adding Completed Successfully'
		END
END