-- returns the exam paper for a student, formatting MCQ choices with their ChoiceIds on new lines

CREATE FUNCTION [dbo].[TVF_GetExamPaperForStudent]
(
	@classId INT,
	@examType NVARCHAR(25)
)
RETURNS TABLE
AS
RETURN
(
	SELECT 
		[ExamQuestion].[ExamQuestionId],
		[Question].[QuestionBody],
		[Question].[QuestionType],
		[ExamQuestion].[Marks],
		ISNULL(STRING_AGG(CAST([Choice].[ChoiceId] AS VARCHAR(10)) + ') ' + [Choice].[ChoiceText], CHAR(13) + CHAR(10)), 'No choices (Text/TF)') AS [AvailableChoices]
	FROM [dbo].[Exam] 
	JOIN [dbo].[Class] ON [Exam].[CourseId] = [Class].[CourseId] AND [Exam].[IntakeTrackId] = [Class].[IntakeTrackId]
	JOIN [dbo].[ExamQuestion] ON [Exam].[ExamId] = [ExamQuestion].[ExamId]
	JOIN [dbo].[Question] ON [ExamQuestion].[QuestionId] = [Question].[QuestionId]
	JOIN [dbo].[Student] ON [Exam].[IntakeTrackId] = [Student].[IntakeTrackId]
	LEFT JOIN [dbo].[Choice] ON [Question].[QuestionId] = [Choice].[QuestionId]
	WHERE [Class].[ClassId] = @classId 
		AND [Exam].[ExamType] = @examType 
		AND [Student].[StudentId] = [dbo].[FN_GetCurrentStudentId]() 
	GROUP BY 
		[ExamQuestion].[ExamQuestionId],
		[Question].[QuestionBody],
		[Question].[QuestionType],
		[ExamQuestion].[Marks]
)