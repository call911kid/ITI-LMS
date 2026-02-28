CREATE VIEW VW_ClassDetails AS
SELECT
C.[ClassId],
IT.[IntakeTrackId],
I.[InstructorId],
I.InstructorName,
CO.[CourseId],
CO.CourseName,
CO.CourseDescription,
CO.MaxDegree,
CO.MinDegree,
T.TrackName
FROM [dbo].[Class] C
JOIN  [dbo].[IntakeTrack] IT ON IT.IntakeTrackId = C.[IntakeTrackId]
JOIN [dbo].[Instructor] I ON I.[InstructorId] = C.[InstructorId]
JOIN [dbo].[Course] CO ON CO.CourseId = C.CourseId
JOIN [dbo].[Track] T ON T.TrackId = IT.TrackId

