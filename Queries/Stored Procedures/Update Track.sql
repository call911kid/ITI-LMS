CREATE PROCEDURE [dbo].[USP_UpdateTrack]
    @trackId INT,
    @trackName NVARCHAR(50) = NULL,
    @departmentId INT = NULL
AS
BEGIN
    UPDATE [dbo].[Track]
    SET 
        [TrackName] = ISNULL(@trackName, [TrackName]),
        [DepartmentId] = ISNULL(@departmentId, [DepartmentId])
    WHERE [TrackId] = @trackId;
END