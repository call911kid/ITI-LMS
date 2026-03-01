-- update exam time with instructor authorization check

CREATE PROCEDURE [dbo].[USP_UpdateExam]
	@examId INT,
	@startTime DATETIME = NULL,
	@endTime DATETIME = NULL
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

	BEGIN TRY
		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[Exam]
				JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
			WHERE [Exam].[ExamId] = @examId AND [Class].[InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to update this exam.', 16, 1);
		END

		UPDATE [dbo].[Exam]
		SET 
			[StartTime] = ISNULL(@startTime, [StartTime]),
			[EndTime] = ISNULL(@endTime, [EndTime])
		WHERE [ExamId] = @examId;

	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END