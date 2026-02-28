CREATE VIEW VW_ClassesPerInstructor AS
SELECT 
C.[ClassId],
I.[InstructorId],
I.[InstructorName]
FROM [dbo].[Class] C
JOIN [dbo].[Instructor] I ON I.InstructorId = C.InstructorId
