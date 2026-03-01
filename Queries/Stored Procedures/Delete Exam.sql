-- delete an exam with instructor authorization check

CREATE PROCEDURE [dbo].[USP_DeleteExam]
	@examId INT
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
			RAISERROR('not authorized to delete this exam.', 16, 1);
		END

		DELETE FROM [dbo].[Exam]
		WHERE [ExamId] = @examId;

	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END