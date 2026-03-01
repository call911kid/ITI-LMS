-- Create Function That Returns The Number Of Classes Of An Track

CREATE FUNCTION FN_GetClassCountByTrack(@TrackId INT) 
RETURNS INT
AS
BEGIN
	DECLARE @ClassCount INT
	SELECT @ClassCount = COUNT(*)
	FROM [dbo].[Class] C
	JOIN [dbo].[IntakeTrack] IT ON C.IntakeTrackId = IT.IntakeTrackId
	WHERE IT.TrackId = @TrackId;

	RETURN @ClassCount;
END;


