-- returns the actual instructorId for the logged-in user

CREATE FUNCTION [dbo].[FN_GetCurrentInstructorId]()
RETURNS INT
AS
BEGIN
	DECLARE @instructorId INT;

	SELECT @instructorId = [InstructorId]
	FROM [dbo].[User] JOIN [dbo].[Instructor] ON [User].[UserId] = [Instructor].[UserId]
	WHERE [User].[Username] = SUSER_SNAME();

	RETURN @instructorId;
END