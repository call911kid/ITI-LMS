CREATE PROCEDURE [dbo].[USP_AddDepartment] @departmentName NVARCHAR(50)
AS
BEGIN
    INSERT INTO [dbo].[Department] ([DepartmentName])
    VALUES (@departmentName);
END;