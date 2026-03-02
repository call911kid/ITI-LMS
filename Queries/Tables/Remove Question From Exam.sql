-- removes a specific question from an exam using ExamQuestionId with instructor authorization check

CREATE PROCEDURE [dbo].[USP_RemoveQuestionFromExam]
	@examQuestionId INT
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

	BEGIN TRY
		
		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[ExamQuestion]
			JOIN [dbo].[Exam] ON [ExamQuestion].[ExamId] = [Exam].[ExamId]
			JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
			WHERE [ExamQuestion].[ExamQuestionId] = @examQuestionId AND [Class].[InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to modify this exam or record does not exist.', 16, 1);
		END

		
		DELETE FROM [dbo].[ExamQuestion]
		WHERE [ExamQuestionId] = @examQuestionId
	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END