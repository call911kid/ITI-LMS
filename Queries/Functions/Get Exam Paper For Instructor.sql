-- returns the exam paper and answer key for an instructor, formatting MCQ choices with their ChoiceIds on new lines

CREATE FUNCTION [dbo].[TVF_GetExamPaperForInstructor]
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
		[Question].[CorrectAnswer],
		ISNULL(STRING_AGG(CAST([Choice].[ChoiceId] AS VARCHAR(10)) + ') ' + [Choice].[ChoiceText], CHAR(13) + CHAR(10)), 'No choices') AS [AvailableChoices]
	FROM [dbo].[Exam] 
	JOIN [dbo].[Class] ON [Exam].[CourseId] = [Class].[CourseId] AND [Exam].[IntakeTrackId] = [Class].[IntakeTrackId]
	JOIN [dbo].[ExamQuestion] ON [Exam].[ExamId] = [ExamQuestion].[ExamId]
	JOIN [dbo].[Question] ON [ExamQuestion].[QuestionId] = [Question].[QuestionId]
	LEFT JOIN [dbo].[Choice] ON [Question].[QuestionId] = [Choice].[QuestionId]
	WHERE [Class].[ClassId] = @classId 
		AND [Exam].[ExamType] = @examType 
		AND [Class].[InstructorId] = [dbo].[FN_GetCurrentInstructorId]() 
	GROUP BY 
		[ExamQuestion].[ExamQuestionId],
		[Question].[QuestionBody],
		[Question].[QuestionType],
		[ExamQuestion].[Marks],
		[Question].[CorrectAnswer]
)