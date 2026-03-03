CREATE OR ALTER PROCEDURE [dbo].[USP_UpdateAnswer]
    @ClassId          INT,
    @ExamType         NVARCHAR(25),
    @ExamQuestionId   INT,
    @NewAnswerText    NVARCHAR(MAX)
AS
BEGIN
    DECLARE @studentId     INT = [dbo].[FN_GetCurrentStudentId]();
    DECLARE @studentExamId INT;
    DECLARE @examId        INT;

    BEGIN TRY
        SELECT @examId = [Exam].[ExamId]
        FROM [dbo].[Exam]
        JOIN [dbo].[Class] ON [Exam].[CourseId]     = [Class].[CourseId]
                          AND [Exam].[IntakeTrackId] = [Class].[IntakeTrackId]
        WHERE [Class].[ClassId] = @ClassId
          AND [Exam].[ExamType] = @ExamType;

        IF @examId IS NULL
            RAISERROR('No exam found for the given class and exam type.', 16, 1);

        SELECT @studentExamId = [StudentExamId]
        FROM   [dbo].[StudentExam]
        WHERE  [StudentId] = @studentId AND [ExamId] = @examId;

        IF @studentExamId IS NULL
            RAISERROR('No active exam session found for this student.', 16, 1);

        IF NOT EXISTS (
            SELECT 1 FROM [dbo].[StudentAnswer]
            WHERE [StudentExamId] = @studentExamId
              AND [ExamQuestionId] = @ExamQuestionId
        )
            RAISERROR('Answer not found. Please submit first using USP_SubmitAnswer.', 16, 1);

        UPDATE [dbo].[StudentAnswer]
        SET    [AnswerText] = @NewAnswerText
        WHERE  [StudentExamId]  = @studentExamId
          AND  [ExamQuestionId] = @ExamQuestionId;

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO

