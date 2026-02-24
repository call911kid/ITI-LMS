CREATE VIEW [dbo].[VW_AllTracks]
AS
SELECT 
    [TrackId],
    [TrackName],
    [DepartmentId]
FROM [dbo].[Track]
