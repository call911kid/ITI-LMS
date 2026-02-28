-- gets all students enrolled in a specific track and intake

CREATE FUNCTION [dbo].[TVF_GetStudentsByIntakeTrack]
(
	@intakeTrackId INT
)
RETURNS TABLE
AS
RETURN
(
	SELECT 
		[Student].[StudentId],
		[Student].[StudentName],
		[Student].[UserId],
		[Student].[IntakeTrackId],
		[Track].[TrackName],
		[Intake].[IntakeName]
	FROM [dbo].[Student]
		JOIN [dbo].[IntakeTrack] ON [Student].[IntakeTrackId] = [IntakeTrack].[IntakeTrackId]
		JOIN [dbo].[Track] ON [IntakeTrack].[TrackId] = [Track].[TrackId]
		JOIN [dbo].[Intake] ON [IntakeTrack].[IntakeId] = [Intake].[IntakeId]
	WHERE [Student].[IntakeTrackId] = @intakeTrackId
)

