--Creating Veiw IntakeTrake

CREATE VIEW VW_IntakeTrack AS
SELECT
I.[IntakeName],
I.[IntakeYear],
T.[TrackName],
D.[DepartmentName],
B.[BranchName]
FROM [dbo].[Intake] I
JOIN [dbo].[IntakeTrack] IT ON IT.IntakeId = I.IntakeId
JOIN [dbo].[Track] T ON T.TrackId = IT.TrackId
JOIN [dbo].[Department] D ON D.DepartmentId = T.DepartmentId
JOIN [dbo].[Branch] B ON B.BranchId = IT.BranchId

 


