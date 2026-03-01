-- adds random questions to an existing exam broken down by category with validation for instructor and class

CREATE PROCEDURE [dbo].[USP_AddRandomQuestionsToExam]
	@examId INT,
	@mcqCount INT,
	@mcqMarks INT,
	@tfCount INT,
	@tfMarks INT,
	@textCount INT,
	@textMarks INT
AS
BEGIN
	DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();
	DECLARE @courseId INT;

	BEGIN TRY
		
		SELECT @courseId = [Exam].[CourseId]
		FROM [dbo].[Exam] JOIN [dbo].[Class] ON [Exam].[IntakeTrackId] = [Class].[IntakeTrackId] AND [Exam].[CourseId] = [Class].[CourseId]
		WHERE [Exam].[ExamId] = @examId AND [Class].[InstructorId] = @instructorId;

		IF @courseId IS NULL
		BEGIN
			RAISERROR('not authorized to modify this exam or exam does not exist.', 16, 1);
		END

		
		DECLARE @availableMCQ INT = 0, @availableTF INT = 0, @availableText INT = 0;

		SELECT 
			@availableMCQ = SUM(CASE WHEN [QuestionType] = 'MCQ' THEN 1 ELSE 0 END),
			@availableTF = SUM(CASE WHEN [QuestionType] = 'TF' THEN 1 ELSE 0 END),
			@availableText = SUM(CASE WHEN [QuestionType] = 'Text' THEN 1 ELSE 0 END)
		FROM [dbo].[Question]
		WHERE [CourseId] = @courseId;

		
		SET @availableMCQ = ISNULL(@availableMCQ, 0);
		SET @availableTF = ISNULL(@availableTF, 0);
		SET @availableText = ISNULL(@availableText, 0);

		
		IF @availableMCQ < @mcqCount
			RAISERROR('insufficient MCQ questions in the bank for this course.', 16, 1);
		IF @availableTF < @tfCount
			RAISERROR('insufficient TF questions in the bank for this course.', 16, 1);
		IF @availableText < @textCount
			RAISERROR('insufficient Text questions in the bank for this course.', 16, 1);

		
		IF @mcqCount > 0
		BEGIN
			INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
			SELECT TOP (@mcqCount) @examId, [QuestionId], @mcqMarks
			FROM [dbo].[Question]
			WHERE [CourseId] = @courseId AND [QuestionType] = 'MCQ'
			ORDER BY NEWID();
		END

		
		IF @tfCount > 0
		BEGIN
			INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
			SELECT TOP (@tfCount) @examId, [QuestionId], @tfMarks
			FROM [dbo].[Question]
			WHERE [CourseId] = @courseId AND [QuestionType] = 'TF'
			ORDER BY NEWID();
		END

		
		IF @textCount > 0
		BEGIN
			INSERT INTO [dbo].[ExamQuestion] ([ExamId], [QuestionId], [Marks])
			SELECT TOP (@textCount) @examId, [QuestionId], @textMarks
			FROM [dbo].[Question]
			WHERE [CourseId] = @courseId AND [QuestionType] = 'Text'
			ORDER BY NEWID();
		END

	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END