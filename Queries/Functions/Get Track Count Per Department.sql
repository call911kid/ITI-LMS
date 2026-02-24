CREATE FUNCTION [dbo].[FN_GetTrackCountPerDepartment] (@departmentId INT)
RETURNS INT
AS
BEGIN
    DECLARE @trackCount INT;

    SELECT 
        @trackCount = COUNT([TrackId])
    FROM [dbo].[Track]
    WHERE [DepartmentId] = @departmentId

    RETURN @trackCount
END