CREATE PROCEDURE USP_AutoSelectExamQuestions
    @ExamId INT,
    @NumMCQ INT,
    @NumTF INT,
    @NumText INT
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (
        SELECT 1
        FROM Exam e
        JOIN Class cl ON e.IntakeTrackId = cl.IntakeTrackId
        WHERE e.ExamId = @ExamId
          AND cl.InstructorId = @InstructorId
    )
    BEGIN
        DECLARE @CourseId INT = (SELECT CourseId FROM Exam WHERE ExamId = @ExamId);

        -- MCQ
        INSERT INTO ExamQuestion (ExamId, QuestionId, Marks)
        SELECT TOP (@NumMCQ) q.QuestionId, 0
        FROM Question q
        WHERE q.QuestionType = 'MCQ'
          AND q.CourseId = @CourseId
        ORDER BY NEWID();

        -- TF
        INSERT INTO ExamQuestion (ExamId, QuestionId, Marks)
        SELECT TOP (@NumTF) q.QuestionId, 0
        FROM Question q
        WHERE q.QuestionType = 'TF'
          AND q.CourseId = @CourseId
        ORDER BY NEWID();

        -- Text
        INSERT INTO ExamQuestion (ExamId, QuestionId, Marks)
        SELECT TOP (@NumText) q.QuestionId, 0
        FROM Question q
        WHERE q.QuestionType = 'Text'
          AND q.CourseId = @CourseId
        ORDER BY NEWID();
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to auto-select questions for this exam.', 16, 1);
    END
END;
