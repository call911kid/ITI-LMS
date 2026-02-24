CREATE FUNCTION [dbo].[TVF_GetTracksByDepartmentId] (@departmentId INT)
RETURNS TABLE
AS
RETURN (
    SELECT 
        [TrackId],
        [TrackName],
        [DepartmentId]
    FROM [dbo].[Track]
    WHERE [DepartmentId] = @departmentId
)