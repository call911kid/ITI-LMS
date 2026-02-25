--Creating Veiw IntakeTrake

CREATE VIEW VW_IntakeTrackFullInfo AS
SELECT
B.[BranchId],
B.[BranchName],
I.[IntakeName],
T.[TrackName]
FROM [dbo].[Branch] B
LEFT JOIN [dbo].[IntakeTrack] IT
ON
IT.BranchId = B.BranchId
LEFT JOIN [dbo].[Intake] I
ON
I.IntakeId = IT.IntakeId
LEFT JOIN [dbo].[Track] T
ON
T.TrackId = IT.TrackId







