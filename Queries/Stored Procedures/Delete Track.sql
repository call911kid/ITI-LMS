CREATE PROCEDURE [dbo].[USP_DeleteTrack]
    @trackId INT
AS
BEGIN
    DELETE FROM [dbo].[Track]
    WHERE [TrackId] = @trackId;
END