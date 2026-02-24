CREATE PROCEDURE [dbo].[USP_DeleteDepartment]
    @departmentId INT
AS
BEGIN
    DELETE FROM [dbo].[Department]
    WHERE [DepartmentId] = @departmentId;
END;