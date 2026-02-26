------Good logic...but it needs to be completely revised.
CREATE PROCEDURE USP_AddQuestionManual
    @ExamId INT,
    @QuestionId INT,
    @Marks DECIMAL(5,2) 
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (
        SELECT 1
        FROM Exams e
        JOIN Courses c ON e.CourseId = c.CourseId
        JOIN Questions q ON q.CourseId = c.CourseId
        WHERE e.ExamId = @ExamId
          AND q.QuestionId = @QuestionId
          AND c.InstructorId = @InstructorId
    )
    BEGIN
        INSERT INTO ExamQuestions (ExamId, QuestionId, Marks)
        VALUES (@ExamId, @QuestionId, @Marks);
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to add this question to the exam.', 16, 1);
    END
END;
