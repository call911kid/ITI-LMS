-- gets the total number of students enrolled in a specific track and intake

CREATE FUNCTION [dbo].[FN_GetStudentsCountByIntakeTrack]
(
	@IntakeTrackId INT
)
RETURNS INT
AS
BEGIN
	DECLARE @StudentsCount INT;

	SELECT @StudentsCount = COUNT([StudentId])
	FROM [dbo].[Student]
	WHERE [IntakeTrackId] = @IntakeTrackId;

	RETURN @StudentsCount;
END