CREATE PROCEDURE [dbo].[USP_AddTrack]
    @trackName NVARCHAR(50),
    @departmentId INT
AS
BEGIN
    INSERT INTO [dbo].[Track] ([TrackName], [DepartmentId])
    VALUES (@trackName, @departmentId);
END