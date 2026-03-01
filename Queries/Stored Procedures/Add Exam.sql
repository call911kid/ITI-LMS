-- adds a new exam with instructor authorization check

CREATE PROCEDURE [dbo].[USP_AddExam]
	@courseId INT,
	@examType NVARCHAR(25),
	@intakeTrackId INT,
	@startTime DATETIME,
	@endTime DATETIME
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[GetCurrentUserID]();

	BEGIN TRY
		IF NOT EXISTS (
			SELECT 1 
			FROM [dbo].[Class]
			WHERE [IntakeTrackId] = @intakeTrackId AND [CourseId] = @courseId AND [InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to create an exam for this class.', 16, 1);
		END

		INSERT INTO [dbo].[Exam] ([CourseId], [ExamType], [IntakeTrackId], [StartTime], [EndTime])
		VALUES (@courseId, @examType, @intakeTrackId, @startTime, @endTime)
	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END