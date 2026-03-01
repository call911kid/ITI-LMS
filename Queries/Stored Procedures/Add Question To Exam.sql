-- adds a specific question to an exam with instructor and course validation checks

CREATE PROCEDURE [dbo].[USP_AddQuestionToExam]
	@examId INT,
	@questionId INT,
	@marks INT
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

	BEGIN TRY
		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[Exam] JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
			WHERE [Exam].[ExamId] = @examId AND [Class].[InstructorId] = @instructorId
		)
		BEGIN
			RAISERROR('not authorized to modify this exam.', 16, 1);
		END

		IF NOT EXISTS (
			SELECT 1
			FROM [dbo].[Question] JOIN [dbo].[Exam] ON [Question].[CourseId] = [Exam].[CourseId]
			WHERE [Question].[QuestionId] = @questionId AND [Exam].[ExamId] = @examId
		)
		BEGIN
			RAISERROR('the question does not belong to the same course as the exam.', 16, 1);
		END

		INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
		VALUES (@examId, @questionId, @marks)
	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
GO