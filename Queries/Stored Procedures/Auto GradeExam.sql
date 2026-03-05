

CREATE OR ALTER PROCEDURE [dbo].[USP_AutoGradeExam]
    @ExamId    INT,
    @StudentId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM [dbo].[Exam] WHERE [ExamId] = @ExamId)
    BEGIN
        RAISERROR('Exam not found.', 16, 1);
        RETURN;
    END

    IF @StudentId IS NOT NULL
       AND NOT EXISTS (SELECT 1 FROM [dbo].[Student] WHERE [StudentId] = @StudentId)
    BEGIN
        RAISERROR('Student not found.', 16, 1);
        RETURN;
    END

    BEGIN TRY


        UPDATE SA
        SET SA.[MarksObtained] =
            CASE
                WHEN Q.[QuestionType] IN ('MCQ', 'TF')
                     AND LTRIM(RTRIM(LOWER(SA.[AnswerText])))
                       = LTRIM(RTRIM(LOWER(Q.[CorrectAnswer])))
                THEN EQ.[Marks]
                ELSE 0
            END
        FROM      [dbo].[StudentAnswer] SA
        JOIN      [dbo].[StudentExam]   SE  ON SA.[StudentExamId]  = SE.[StudentExamId]
        JOIN      [dbo].[ExamQuestion]  EQ  ON SA.[ExamQuestionId] = EQ.[ExamQuestionId]
        JOIN      [dbo].[Question]      Q   ON EQ.[QuestionId]     = Q.[QuestionId]
        WHERE SE.[ExamId]     = @ExamId
          AND SE.[ExamStatus] = 'Pending'
          AND (@StudentId IS NULL OR SE.[StudentId] = @StudentId);

        UPDATE SE
        SET
            SE.[TotalMarks] = (
                SELECT ISNULL(SUM(SA2.[MarksObtained]), 0)
                FROM   [dbo].[StudentAnswer] SA2
                WHERE  SA2.[StudentExamId] = SE.[StudentExamId]
            ),
            SE.[ExamStatus] = CASE
                WHEN EXISTS (
                    SELECT 1
                    FROM   [dbo].[StudentAnswer] SA3
                    JOIN   [dbo].[ExamQuestion]  EQ3 ON SA3.[ExamQuestionId] = EQ3.[ExamQuestionId]
                    JOIN   [dbo].[Question]       Q3  ON EQ3.[QuestionId]     = Q3.[QuestionId]
                    WHERE  SA3.[StudentExamId] = SE.[StudentExamId]
                      AND  Q3.[QuestionType]   = 'Text'
                ) THEN 'Pending'
                ELSE 'Completed'
            END
        FROM [dbo].[StudentExam] SE
        WHERE SE.[ExamId]     = @ExamId
          AND SE.[ExamStatus] = 'Pending'
          AND (@StudentId IS NULL OR SE.[StudentId] = @StudentId);

        SELECT
            SE.[StudentExamId],
            SE.[StudentId],
            S.[StudentName],
            SE.[ExamId],
            SE.[TotalMarks],
            (
                SELECT ISNULL(SUM(EQ2.[Marks]), 0)
                FROM   [dbo].[ExamQuestion] EQ2
                WHERE  EQ2.[ExamId] = @ExamId
            )                               AS [MaxMarks],
            SE.[ExamStatus],
            (
                SELECT COUNT(*)
                FROM   [dbo].[StudentAnswer] SA3
                JOIN   [dbo].[ExamQuestion]  EQ3 ON SA3.[ExamQuestionId] = EQ3.[ExamQuestionId]
                JOIN   [dbo].[Question]       Q3  ON EQ3.[QuestionId]     = Q3.[QuestionId]
                WHERE  SA3.[StudentExamId] = SE.[StudentExamId]
                  AND  Q3.[QuestionType]   = 'Text'
            )                               AS [PendingTextQuestions]
        FROM  [dbo].[StudentExam] SE
        JOIN  [dbo].[Student]     S ON SE.[StudentId] = S.[StudentId]
        WHERE SE.[ExamId] = @ExamId
          AND (@StudentId IS NULL OR SE.[StudentId] = @StudentId)
        ORDER BY SE.[StudentId];

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO
