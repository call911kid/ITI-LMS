-- returns the actual studentId for the logged-in user

CREATE FUNCTION [dbo].[FN_GetCurrentStudentId]()
RETURNS INT
AS
BEGIN
	DECLARE @studentId INT;

	SELECT @studentId = [StudentId]
	FROM [dbo].[User] JOIN [dbo].[Student] ON [User].[UserId] = [Student].[UserId]
	WHERE [User].[Username] = SUSER_SNAME();

	RETURN @studentId;
END