-- Create Procedure That Get All Classes By Track Id

CREATE PROCEDURE USP_GetClassesByTrack
@TrackId INT 
AS
BEGIN
	SELECT * FROM VW_ClassesPerTrack
	WHERE TrackId = @TrackId
END


-- Must The Execute Followed By Track Id
EXEC USP_GetClassesByTrack

