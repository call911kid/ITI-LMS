--Creating Veiw IntakeTrake

CREATE VIEW VW_IntakeTrack AS
SELECT
I.[IntakeName],
I.[IntakeYear],
T.[TrackName],
D.[DepartmentName],
B.[BranchName]
FROM [dbo].[Intake] I
LEFT JOIN [dbo].[IntakeTrack] IT ON IT.IntakeId = I.IntakeId
LEFT JOIN [dbo].[Track] T ON T.TrackId = IT.TrackId
LEFT JOIN [dbo].[Department] D ON D.DepartmentId = T.DepartmentId
LEFT JOIN [dbo].[Branch] B ON B.BranchId = IT.BranchId

--INSERT INTO IntakeTrack (IntakeId, TrackId, BranchId)
--VALUES (1, 1, 1) ,(2, 2, 2) ,(3, 3, 3) , (4, 4, 4) ,(5, 5, 5) , (6, 6, 6) , (7, 7, 7) , (8, 8, 8);


 


