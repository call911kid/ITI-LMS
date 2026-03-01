-- Create Function That Check If Class Is Exists Or Not

CREATE FUNCTION FN_CheckClassExists 
(
	 @InstructorId INT,
	 @CourseId INT,
	 @IntakeTrackId INT
)
RETURNS BIT AS
BEGIN
	DECLARE @Exists BIT = 0
	IF EXISTS (
		SELECT 1 FROM [dbo].[Class]
		WHERE InstructorId = @InstructorId 
		AND CourseId = @CourseId
		AND IntakeTrackId = @IntakeTrackId
		)
	SET @Exists = 1

	RETURN @Exists
END





