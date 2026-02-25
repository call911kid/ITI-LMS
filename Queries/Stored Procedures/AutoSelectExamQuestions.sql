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
        FROM Exams e
        JOIN Courses c ON e.CourseId = c.CourseId
        WHERE e.ExamId = @ExamId
          AND c.InstructorId = @InstructorId
    )
    BEGIN
        -- MCQ
        INSERT INTO ExamQuestions (ExamId, QuestionId)
        SELECT TOP (@NumMCQ) q.QuestionId
        FROM Questions q
        WHERE q.QuestionType = 'MCQ'
          AND q.CourseId = (SELECT CourseId FROM Exams WHERE ExamId = @ExamId)
        ORDER BY NEWID();

        -- TF
        INSERT INTO ExamQuestions (ExamId, QuestionId)
        SELECT TOP (@NumTF) q.QuestionId
        FROM Questions q
        WHERE q.QuestionType = 'TF'
          AND q.CourseId = (SELECT CourseId FROM Exams WHERE ExamId = @ExamId)
        ORDER BY NEWID();

        -- Text
        INSERT INTO ExamQuestions (ExamId, QuestionId)
        SELECT TOP (@NumText) q.QuestionId
        FROM Questions q
        WHERE q.QuestionType = 'Text'
          AND q.CourseId = (SELECT CourseId FROM Exams WHERE ExamId = @ExamId)
        ORDER BY NEWID();
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to auto-select questions for this exam.', 16, 1);
    END
END;
