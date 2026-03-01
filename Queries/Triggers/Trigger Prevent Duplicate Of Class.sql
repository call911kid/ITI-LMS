-- Create Trigger That Prevent Duplicate Of Class

CREATE TRIGGER TR_PreventDuplicateClass 
ON [dbo].[Class]
INSTEAD OF INSERT
AS
BEGIN
	IF EXISTS (
		SELECT 1 FROM inserted I
		JOIN [dbo].[Class] C 
		ON I.InstructorId = C.InstructorId 
		AND I.CourseId = C.CourseId 
		AND I.IntakeTrackId = C.IntakeTrackId
	)
	BEGIN
		RAISERROR('This class already exists',16,1)
        RETURN
	END

	INSERT INTO Class (InstructorId, CourseId, IntakeTrackId)
	SELECT InstructorId, CourseId, IntakeTrackId FROM inserted
END

