-- create trigger that prevent the updated class data if already this new data found in the rows of the class table

CREATE TRIGGER TR_PreventDuplicateClass_Update ON [dbo].[Class]
INSTEAD OF UPDATE
AS
BEGIN 
	-- check if the data inserted found in class table or not
	IF EXISTS (
		SELECT 1 FROM INSERTED I 
		JOIN [dbo].[Class] C ON 
		I.CourseId = C.CourseId AND
		I.InstructorId = C.InstructorId AND
		I.IntakeTrackId = C.IntakeTrackId AND
		I.ClassId <> C.ClassId
	)
	BEGIN
		RAISERROR('This class combination already exists.',16,1);
        ROLLBACK;
        RETURN;
	END

	-- Default Update If the data inserted not the same
	UPDATE C
	SET C.CourseId = I.CourseId ,
		C.InstructorId = I.InstructorId ,
		C.IntakeTrackId = I.IntakeTrackId 
	FROM [dbo].[Class] C
	JOIN INSERTED I ON I.ClassId = C.ClassId

END

