CREATE VIEW [dbo].[VW_DepartmentTracksDetails]
AS
SELECT 
    [Track].[TrackId],
    [Track].[TrackName],
    [Department].[DepartmentId],
    [Department].[DepartmentName]
FROM [dbo].[Track]
INNER JOIN [dbo].[Department] ON [Track].[DepartmentId] = [Department].[DepartmentId]
