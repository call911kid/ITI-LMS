-- Create Procedure That Get All Classes By Instructor Id

CREATE PROCEDURE USP_GetClassesByInstructor
@InstructorId INT 
AS
BEGIN
	SELECT * FROM VW_ClassDetails
	WHERE InstructorId = @InstructorId
END


-- Must The Execute Followed By Instructor Id
EXEC USP_GetClassesByInstructor