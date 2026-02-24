CREATE PROCEDURE [dbo].[USP_UpdateDepartment]
    @departmentId INT,
    @newDepartmentName NVARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Department]
    SET [DepartmentName] = @newDepartmentName
    WHERE [DepartmentId] = @departmentId
END