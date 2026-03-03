CREATE OR ALTER PROCEDURE [dbo].[USP_SubmitAnswer]
    @ClassId        INT,
    @ExamType       NVARCHAR(25),
    @ExamQuestionId INT,
    @AnswerText     NVARCHAR(MAX)
AS
BEGIN
    DECLARE @studentId    INT = [dbo].[FN_GetCurrentStudentId]();
    DECLARE @studentExamId INT;
    DECLARE @examId       INT;

    BEGIN TRY
        SELECT @examId = [Exam].[ExamId]
        FROM [dbo].[Exam]
        JOIN [dbo].[Class] ON [Exam].[CourseId]       = [Class].[CourseId]
                          AND [Exam].[IntakeTrackId]   = [Class].[IntakeTrackId]
        WHERE [Class].[ClassId] = @ClassId
          AND [Exam].[ExamType] = @ExamType;

        IF @examId IS NULL
        BEGIN
            RAISERROR('No exam found for the given class and exam type.', 16, 1);
        END

        IF NOT EXISTS (
            SELECT 1
            FROM [dbo].[Student]
            JOIN [dbo].[Exam] ON [Student].[IntakeTrackId] = [Exam].[IntakeTrackId]
            WHERE [Student].[StudentId] = @studentId
              AND [Exam].[ExamId]       = @examId
        )
        BEGIN
            RAISERROR('Student is not enrolled in the track for this exam.', 16, 1);
        END

        IF NOT EXISTS (
            SELECT 1 FROM [dbo].[StudentExam]
            WHERE [StudentId] = @studentId AND [ExamId] = @examId
        )
        BEGIN
            INSERT INTO [dbo].[StudentExam] ([StudentId], [ExamId], [ExamStatus])
            VALUES (@studentId, @examId, 'Pending');
        END

        SELECT @studentExamId = [StudentExamId]
        FROM   [dbo].[StudentExam]
        WHERE  [StudentId] = @studentId AND [ExamId] = @examId;

        IF NOT EXISTS (
            SELECT 1 FROM [dbo].[ExamQuestion]
            WHERE [ExamQuestionId] = @ExamQuestionId
              AND [ExamId]         = @examId
        )
        BEGIN
            RAISERROR('The question does not belong to this exam.', 16, 1);
        END

        INSERT INTO [dbo].[StudentAnswer] ([StudentExamId], [ExamQuestionId], [AnswerText])
        VALUES (@studentExamId, @ExamQuestionId, @AnswerText);

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO

EXEC [dbo].[USP_SubmitAnswer]
    @ClassId = 1,
    @ExamType = 'Final',
    @ExamQuestionId = 10,
    @AnswerText = 'Paris';
