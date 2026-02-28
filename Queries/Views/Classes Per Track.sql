CREATE VIEW VW_ClassesPerTrack AS
SELECT
C.[ClassId],
IT.[IntakeTrackId],
T.[TrackId],
T.[TrackName]
FROM [dbo].[Class] C
JOIN [dbo].[IntakeTrack] IT ON IT.IntakeTrackId = C.[IntakeTrackId]
JOIN [dbo].[Track] T ON T.TrackId = IT.TrackId