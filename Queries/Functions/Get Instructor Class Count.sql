-- Create Function That Returns The Number Of Classes Of An Instructor

CREATE FUNCTION FN_GetInstructorClassCount(@InstructorId INT) 
RETURNS INT 
AS
BEGIN
	DECLARE @ClassCount INT
	SELECT @ClassCount = COUNT(*)
	FROM [dbo].[Class]
	WHERE InstructorId = @InstructorId;

	RETURN @ClassCount;
END;

