-- Create Stored Procedure That Add New Class With Attributes => IntakeTrackId - InstructorId - CourseId

CREATE PROCEDURE USP_AddNewClass 
	@NewIntakeTrackId INT,
    @NewInstructorId INT,
    @NewCourseId INT
AS
BEGIN
	INSERT INTO [dbo].[Class] (IntakeTrackId , InstructorId , CourseId)
	VALUES (@NewIntakeTrackId , @NewInstructorId , @NewCourseId)
END


-- To Execute The Procedure With Values
-- EXEC USP_AddNewClass()

